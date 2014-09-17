# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'flat_keys/version'

Gem::Specification.new do |gem|
  gem.name          = "flat_keys"
  gem.version       = FlatKeys::VERSION
  gem.authors       = ["bithavoc"]
  gem.email         = ["im@bithavoc.io"]
  gem.licenses      = ['MIT']
  gem.description   = %q{Encodes and Decodes key-value hashes.}
  gem.summary       = %q{Encodes and Decodes key-value hashes, specially useful with PostgreSQL hstore.}
  gem.homepage      = "http://bithavoc.io/flat_keys"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_development_dependency 'rake'
end
