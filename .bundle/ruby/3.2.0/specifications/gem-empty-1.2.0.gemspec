# -*- encoding: utf-8 -*-
# stub: gem-empty 1.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "gem-empty".freeze
  s.version = "1.2.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Michal Papis".freeze, "Andy Fleener".freeze, "Piotr Kuczynski".freeze]
  s.date = "2023-05-26"
  s.email = ["mpapis@gmail.com".freeze, "anfleene@gmail.com".freeze, "piotr.kuczynski@gmail.com".freeze]
  s.homepage = "https://github.com/rvm/gem-empty".freeze
  s.licenses = ["Apache 2.0".freeze]
  s.rubygems_version = "3.5.9".freeze
  s.summary = "Gem command to remove all gems from current GEM_HOME.".freeze

  s.installed_by_version = "3.5.9".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_development_dependency(%q<rake>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<minitest>.freeze, [">= 0".freeze])
end
