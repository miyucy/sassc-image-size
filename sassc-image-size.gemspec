# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "sassc-image-size"
  spec.version       = "0.2.0"
  spec.authors       = ["miyucy"]
  spec.email         = ["fistfvck@gmail.com"]

  spec.summary       = %q{image-(size|width|height) function for sassc}
  spec.description   = %q{image-(size|width|height) function for sassc}
  spec.homepage      = "https://github.com/miyucy/sassc-image-size"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "dimensions"
  spec.add_dependency "sassc", ">= 2.0.0"
  spec.add_dependency "sassc-rails"
end
