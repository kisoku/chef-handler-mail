$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require "chef/handler/mail/version"

GEM_NAME = "chef-handler-mail"
GEM_VERSION = MailHandler::VERSION

desc "Build #{GEM_NAME} gem"
task :build do
  system "gem build #{GEM_NAME}.gemspec"
end

desc "Push #{GEM_NAME} to rubygems.org"
task :push => :build do
  system "gem push #{GEM_NAME}-#{GEM_VERSION}.gem"
end

desc "Clean up build gems"
task :clean do
  system "rm #{GEM_NAME}-#{GEM_VERSION}.gem"
end
