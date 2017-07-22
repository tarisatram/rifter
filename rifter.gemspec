# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rifter/version'

Gem::Specification.new do |spec|
  spec.name          = 'rifter'
  spec.version       = Rifter::VERSION
  spec.authors       = 'Taris Atram'
  spec.email         = 'taris.atram@gmail.com'

  spec.summary       = 'Rifter is an Eve Online Discord bot written in Ruby'
  spec.homepage      = 'https://github.com/tarisatram/rifter'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = ['rifter']
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'

  spec.add_dependency 'discordrb', '~> 3.2'
  spec.add_dependency 'esi-ruby', '~> 1.0'
end
