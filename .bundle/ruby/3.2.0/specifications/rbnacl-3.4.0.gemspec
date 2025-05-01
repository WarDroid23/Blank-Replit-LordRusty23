# -*- encoding: utf-8 -*-
# stub: rbnacl 3.4.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rbnacl".freeze
  s.version = "3.4.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Tony Arcieri".freeze, "Jonathan Stott".freeze]
  s.cert_chain = ["bascule.cert".freeze]
  s.date = "2016-05-07"
  s.description = "Ruby binding to the Networking and Cryptography (NaCl) library".freeze
  s.email = ["tony.arcieri@gmail.com".freeze, "jonathan.stott@gmail.com".freeze]
  s.homepage = "https://github.com/cryptosphere/rbnacl".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.5.1".freeze
  s.summary = "The Networking and Cryptography (NaCl) library provides a high-level toolkit for building cryptographic systems and protocols".freeze

  s.installed_by_version = "3.5.22".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<ffi>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rake>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0.0".freeze])
  s.add_development_dependency(%q<rubocop>.freeze, [">= 0".freeze])
end
