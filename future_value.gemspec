# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'future_value/version'

Gem::Specification.new do |spec|
  spec.name          = 'future_value'
  spec.version       = FutureValue::VERSION
  spec.authors       = ['Douglas Everly']
  spec.email         = ['Doug@Everly.org']
  spec.summary       = %q{A threadsafe future implementation}
  spec.description   = %q{A threadsafe future implementation that blocks caller until a value is set.}
  spec.homepage      = 'https://github.com/DougEverly/FutureValue'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
end
