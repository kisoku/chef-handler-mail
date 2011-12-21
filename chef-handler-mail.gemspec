Gem::Specification.new do |s|
  s.name = 'chef-handler-mail'
  s.version = '0.1'
  s.platform = Gem::Platform::RUBY
  s.summary = "Chef report handler that uses pony to send an email"
  s.description = s.summary
  s.author = "Mathieu Sauve-Frankel"
  s.email = "msf@kisoku.net"
  s.homepage = "http://github.com/kisoku/chef-handler-mail"
  s.require_path = 'lib'
  s.files = %w(LICENSE README.md) + Dir.glob("lib/**/*")
  s.add_runtime_dependency "pony"
end

