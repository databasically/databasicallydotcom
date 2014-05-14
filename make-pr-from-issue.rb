#!/usr/bin/env ruby

require 'io/console'

ORG = 'databasically'
REPO = 'databasicallydotcom'
USER = 'wesgarrison'
puts  "Converting a GitHub issue to a pull request for #{ORG}/#{REPO}"
print "What issue number: "
issue_num = gets.chomp

print "What branch to start from (master or staging, maybe?): "
start_branch = gets.chomp

print "What branch to pull from (must be pushed already): "
end_branch = gets.chomp

print "Enter GitHub password: "
userpass = STDIN.noecho(&:gets).chomp

command = %Q(curl --user "#{USER}:#{userpass}" --silent --request POST --data '{"issue": "#{issue_num}", "head": "#{ORG}:#{end_branch}", "base": "#{start_branch}"}' https://api.github.com/repos/#{ORG}/#{REPO}/pulls)

puts command
puts `#{command}`
