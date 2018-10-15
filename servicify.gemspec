lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "servicify/version"

Gem::Specification.new do |spec|
  spec.name          = "servicify"
  spec.version       = Servicify::VERSION
  spec.authors       = ["Olivier"]
  spec.email         = ["olivier@yafoy.com"]

  spec.summary       = "A Ruby gem for interacting with XXX's REST API"
  spec.homepage      = "https://github.com/olimart/XXX"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "minitest-reporters", "~> 1.3", ">= 1.3.0"
end