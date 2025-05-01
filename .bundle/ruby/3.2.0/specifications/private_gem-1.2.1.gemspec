# -*- encoding: utf-8 -*-
# stub: private_gem 1.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "private_gem".freeze
  s.version = "1.2.1".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Mick Staugaard".freeze]
  s.date = "2022-04-01"
  s.email = ["mick@staugaard.com".freeze]
  s.executables = ["private_gem".freeze]
  s.files = ["bin/private_gem".freeze]
  s.homepage = "https://github.com/zendesk/private_gem".freeze
  s.licenses = ["Apache License Version 2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.4".freeze)
  s.rubygems_version = "3.1.6".freeze
  s.summary = "Keeps your private gems private".freeze

  s.installed_by_version = "3.5.22".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<bundler>.freeze, ["> 2.2".freeze, "< 3.0".freeze])
  s.add_runtime_dependency(%q<thor>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<maxitest>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<bump>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rake>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<byebug>.freeze, [">= 0".freeze])
end
