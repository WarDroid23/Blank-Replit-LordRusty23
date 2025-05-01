# -*- encoding: utf-8 -*-
# stub: mixlib-install 1.2.4 ruby lib

Gem::Specification.new do |s|
  s.name = "mixlib-install".freeze
  s.version = "1.2.4".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Thom May".freeze, "Patrick Wright".freeze]
  s.date = "2016-12-30"
  s.email = ["thom@chef.io".freeze, "patrick@chef.io".freeze]
  s.homepage = "https://chef.io".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.rubygems_version = "3.5.9".freeze
  s.summary = "A mixin to help with omnitruck installs".freeze

  s.installed_by_version = "3.5.9".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<artifactory>.freeze, [">= 0".freeze])
  s.add_runtime_dependency(%q<mixlib-versioning>.freeze, [">= 0".freeze])
  s.add_runtime_dependency(%q<mixlib-shellout>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<bundler>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rake>.freeze, ["~> 10.0".freeze])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3.3".freeze])
  s.add_development_dependency(%q<pry>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rb-readline>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<vcr>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<webmock>.freeze, ["~> 1.0".freeze])
  s.add_development_dependency(%q<chefstyle>.freeze, ["~> 0.3".freeze])
end
