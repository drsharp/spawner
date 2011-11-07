# encoding: utf-8
require File.expand_path('../lib/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name = 'spawner'
  gem.description = %q{A simple way to spawn a separate thread/process for performing long-running tasks}
  gem.authors = ['Dan Sharp']
  gem.email = ['drsharp@sharpdesigns.com']

  # gem.add_runtime_dependency 'rack'
  # gem.add_runtime_dependency 'hashie', '~> 1.2'
  #
  # gem.add_development_dependency 'maruku', '~> 0.6'
  # gem.add_development_dependency 'simplecov', '~> 0.4'
  # gem.add_development_dependency 'rack-test', '~> 0.5'
  # gem.add_development_dependency 'rake', '~> 0.8'
  # gem.add_development_dependency 'rdiscount', '~> 1.6'
  # gem.add_development_dependency 'rspec', '~> 2.7'
  # gem.add_development_dependency 'yard', '~> 0.7'

  gem.version = Spawner::VERSION
  gem.files = `git ls-files`.split("\n")
  gem.homepage = 'http://github.com/drsharp/spawner'
  gem.require_paths = ['lib']
  gem.required_rubygems_version = Gem::Requirement.new('>= 0.0.1') if gem.respond_to? :required_rubygems_version=
  gem.summary = gem.description
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
end

# # -*- encoding: utf-8 -*-
# $:.push File.expand_path("../lib", __FILE__)
# require "spawn/version"
#
# Gem::Specification.new do |s|
#   s.name = "spawnjob"
#   s.version = Spawn::VERSION
#   s.authors = ["Umanni"]
#   s.email = ["contact@umanni.com.br"]
#   s.homepage = "http://www.umanni.com.br"
#   s.summary = %q{Spawn Background Jobs}
#   s.description = %q{Yield, Thread, or Fork a background job}
#
#    s.rubyforge_project = "spawnjob"
#
#   s.files = `git ls-files`.split("\n")
#   s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
#   s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
#   s.require_paths = ["lib"]
#
#   # specify any dependencies here; for example:
#   # s.add_development_dependency "rspec"
#   # s.add_runtime_dependency 'hello'
# end
#
