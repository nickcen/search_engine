# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'search_engine/version'

Gem::Specification.new do |spec|
  spec.name          = "search_engine"
  spec.version       = SearchEngine::VERSION
  spec.authors       = ["cenyongh"]
  spec.email         = ["cenyongh@gmail.com"]
  spec.summary       = %q{Ruby based api for search engine.}
  spec.description   = %q{Ruby based api for search engine.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'rspec'
end
