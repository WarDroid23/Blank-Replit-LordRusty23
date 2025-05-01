# -*- encoding: utf-8 -*-
# stub: analytics-ruby 2.4.0 ruby lib

Gem::Specification.new do |s|
  s.name = "analytics-ruby".freeze
  s.version = "2.4.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Segment.io".freeze]
  s.date = "2021-05-05"
  s.description = "The Segment.io ruby analytics library".freeze
  s.email = "friends@segment.io".freeze
  s.executables = ["analytics".freeze]
  s.files = ["bin/analytics".freeze]
  s.homepage = "https://github.com/segmentio/analytics-ruby".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0".freeze)
  s.rubygems_version = "3.5.9".freeze
  s.summary = "Segment.io analytics library".freeze

  s.installed_by_version = "3.5.9".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_development_dependency(%q<commander>.freeze, ["~> 4.4".freeze])
  s.add_development_dependency(%q<rake>.freeze, ["~> 10.3".freeze])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0".freeze])
  s.add_development_dependency(%q<tzinfo>.freeze, ["= 1.2.1".freeze])
  s.add_development_dependency(%q<activesupport>.freeze, ["~> 4.1.11".freeze])
  s.add_development_dependency(%q<oj>.freeze, ["~> 3.6.2".freeze])
  s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.51.0".freeze])
  s.add_development_dependency(%q<codecov>.freeze, ["~> 0.1.4".freeze])
end
