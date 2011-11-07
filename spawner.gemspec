# encoding: utf-8
require File.expand_path('../lib/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name = 'spawner'
  gem.version = Spawner::VERSION
  gem.description = %q{A simple way to spawn a separate thread/process for performing long-running tasks}
  gem.summary = gem.description
  gem.authors = ['Dan Sharp']
  gem.email = ['drsharp@sharpdesigns.com']
  gem.homepage = 'http://github.com/drsharp/spawner'

  gem.files = `git ls-files`.split("\n")
  gem.require_paths = ['lib']
  gem.required_rubygems_version = Gem::Requirement.new('>= 0.0.1') if gem.respond_to? :required_rubygems_version=
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
end
