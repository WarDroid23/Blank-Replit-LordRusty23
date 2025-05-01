# -*- encoding: utf-8 -*-
# stub: kitchen-transport-docker 0.0.4 ruby lib

Gem::Specification.new do |s|
  s.name = "kitchen-transport-docker".freeze
  s.version = "0.0.4".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Dale Hamel".freeze]
  s.date = "2016-07-06"
  s.description = "Faster file transfer with docker copy".freeze
  s.email = ["dale.hamel@srvthe.net".freeze]
  s.homepage = "https://github.com/dalehamel/kitchen-transport-docker".freeze
  s.licenses = ["Apache 2.0".freeze]
  s.rubygems_version = "2.5.1".freeze
  s.summary = "Faster file transfer with docker copy".freeze

  s.installed_by_version = "3.5.22".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<test-kitchen>.freeze, [">= 1.0.0".freeze])
  s.add_development_dependency(%q<bundler>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rake>.freeze, [">= 0".freeze])
end
