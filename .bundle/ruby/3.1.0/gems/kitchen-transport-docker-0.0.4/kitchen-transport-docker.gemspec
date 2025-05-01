# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kitchen-transport-docker/version'

Gem::Specification.new do |spec|
  spec.name          = 'kitchen-transport-docker'
  spec.version       = KitchenTransportDocker::VERSION
  spec.authors       = ['Dale Hamel']
  spec.email         = ['dale.hamel@srvthe.net']
  spec.description   = %q{Faster file transfer with docker copy}
  spec.summary       = spec.description
  spec.homepage      = 'https://github.com/dalehamel/kitchen-transport-docker'
  spec.license       = 'Apache 2.0'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = []
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'test-kitchen', '>= 1.0.0'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
end
