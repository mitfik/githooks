# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'githooks/version'

Gem::Specification.new do |gem|
  gem.name          = "githooks"
  gem.version       = Githooks::VERSION
  gem.authors       = ["Robert Mitwicki"]
  gem.email         = ["robert.mitwicki@fxitech.com"]
  gem.description   = %q{Hook manager, it makes that using hooks is really simple.}
  gem.summary       = %q{Hook manager}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
