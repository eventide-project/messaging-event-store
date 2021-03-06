# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name = 'evt-messaging-event_store'
  s.version = '0.1.0.1'
  s.summary = 'EventStore messaging for Eventid'
  s.description = ' '

  s.authors = ['The Eventide Project']
  s.email = 'opensource@eventide-project.org'
  s.homepage = 'https://github.com/eventide-project/messaging-event-store'
  s.licenses = ['MIT']

  s.require_paths = ['lib']
  s.files = Dir.glob('{lib}/**/*')
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 2.3.3'

  s.add_runtime_dependency 'evt-message_store-event_store'
  s.add_runtime_dependency 'evt-messaging'

  s.add_development_dependency 'test_bench'
end
