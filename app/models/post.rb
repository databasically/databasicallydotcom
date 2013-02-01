class Post < ActiveRecord::Base
  attr_accessible :body, :published_on, :title
end
