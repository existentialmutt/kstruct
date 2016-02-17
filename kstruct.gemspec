# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kstruct/version'

Gem::Specification.new do |spec|
  spec.name          = "kstruct"
  spec.version       = '0.0.1'
  spec.authors       = ["Rafe Rosen"]
  spec.email         = ["rafe.rosen@gmail.com"]

  spec.summary       = %q{a lightweight struct that accepts keyword arguments}
  spec.homepage      = "https://github.com/existentialmutt/kstruct"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
