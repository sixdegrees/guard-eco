# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'guard/eco/version'

Gem::Specification.new do |s|
  s.name        = 'guard-eco'
  s.version     = Guard::EcoVersion::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Romain Dardour']
  s.email       = ['romain@oahu.fr']
  s.homepage    = 'http://github.com/sixdegrees/guard-eco'
  s.summary     = 'Guard gem for Eco'
  s.description = 'Guard::Eco automatically generates your JavaScripts templates from your Eco files'

  s.required_rubygems_version = '>= 1.3.6'
  s.rubyforge_project = 'guard-eco'

  s.add_dependency 'guard', '>= 0.8.3'
  s.add_dependency 'eco', '>= 1.0.0'

  s.add_development_dependency 'bundler',     '~> 1.0'
  s.add_development_dependency 'guard-rspec', '~> 0.5'
  s.add_development_dependency 'rspec',       '~> 2.7'
  s.add_development_dependency 'yard',        '~> 0.7.2'
  s.add_development_dependency 'redcarpet',   '~> 1.17.2'

  s.files        = Dir.glob('{lib}/**/*') + %w[LICENSE README.md]
  s.require_path = 'lib'
end
