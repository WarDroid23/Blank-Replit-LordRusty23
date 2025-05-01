# -*- encoding: utf-8 -*-
# stub: docker-api 1.34.2 ruby lib

Gem::Specification.new do |s|
  s.name = "docker-api".freeze
  s.version = "1.34.2".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Swipely, Inc.".freeze]
  s.date = "2018-03-16"
  s.description = "A simple REST client for the Docker Remote API".freeze
  s.email = "tomhulihan@swipely.com bright@swipely.com toddlunter@swipely.com".freeze
  s.homepage = "https://github.com/swipely/docker-api".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.5.1".freeze
  s.summary = "A simple REST client for the Docker Remote API".freeze

  s.installed_by_version = "3.5.22".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<excon>.freeze, [">= 0.47.0".freeze])
  s.add_runtime_dependency(%q<multi_json>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rake>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0".freeze])
  s.add_development_dependency(%q<rspec-its>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<cane>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<pry>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<single_cov>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<webmock>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<parallel>.freeze, [">= 0".freeze])
end
