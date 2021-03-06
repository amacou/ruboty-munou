# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/munou/version'

Gem::Specification.new do |spec|
  spec.name          = "ruboty-munou"
  spec.version       = Ruboty::Munou::VERSION
  spec.authors       = ["amacou"]
  spec.email         = ["amacou.abf@gmail.com"]
  spec.summary       = %q{ ruboty munou plugin }
  spec.description   = %q{ ruboty munou plugin }
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "ruboty"
  spec.add_dependency "natto"
end
