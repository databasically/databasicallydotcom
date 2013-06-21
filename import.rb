require 'rubygems'
require 'sequel'
require 'fileutils'
require 'yaml'


class WordpressToMiddlman
  attr_accessor :database, :db_user, :db_password, :table_prefix, :host, :db
  def initialize(database, db_user, db_password, table_prefix = 'wp', host = 'localhost')
    @database = database
    @db_user = db_user
    @db_password = db_password
    @table_prefix = table_prefix
    @host = host
  end

  # connect to the database
  def connect
    @db = Sequel.mysql(@database,
      :user => @db_user,
      :password => @db_password,
      :host => @host,
      :encoding => 'utf8')
  end

  # retrieve each post (not drafts, not revisions)
  def retrieve_posts
    query = "SELECT * FROM `wp_posts` WHERE `post_type` = 'post' AND post_status = 'publish'"
    db[query]
  end

  def generate_post_files(posts)
    posts.each do |post_data|
      print '.'
      MiddlemanPost.new(post_data).create_post_file
    end
    print "\n"
  end

  # generate front matter
  ## directory_index: true

  # generate post body
  # produce file structure
  # find and download assets included in posts
  # category indexes?
  # redirections work
  # comments?
  # categories and tags?

  def redirections
    result = db["SELECT * FROM `wp_redirection_items`"]
    result.each { |r| puts r.inspect }
  end

  def output_posts!
    connect
    generate_post_files(retrieve_posts)
  end
end

class MiddlemanPost
  attr_accessor :data
  def initialize(data)
    @data = data
  end

  def create_post_file
    File.open(filename, "w") do |f|
      f.puts front_matter
      f.puts "---"
      f.puts content_with_escaped_entities
    end
  end

  def content_with_escaped_entities
    content.gsub('<%=', '&lt;%=')
  end
  ## where can we put these to generate the correct end url?
  ##  source/2011-10-18-middleman.html(.markdown)
  ## /2013/12/25/slug/
  def filename
    date = data[:post_date]
    slug = data[:post_name]
    "source/#{date.strftime('%Y-%m-%d')}-#{slug}.html.erb"
  end

  def front_matter
    {
      # 'layout'        => 'post',
      'title'         => data[:post_title].force_encoding("UTF-8").to_s,
      'excerpt'       => data[:post_excerpt].to_s,
      # 'wordpress_id'  => post[:ID],
      # 'wordpress_url' => post[:guid],
      # 'categories'    => categories,
      # 'tags'          => post_tags
    }.delete_if { |k,v| v.nil? || v == ''}.to_yaml
  end

  def content
    # TODO: escape .erb tags or use a different preprocessor
    data[:post_content]
  end
end


puts 'starting'

importer = WordpressToMiddlman.new('db_wordpress', 'root', '')
importer.output_posts!

