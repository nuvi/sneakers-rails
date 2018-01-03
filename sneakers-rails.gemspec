# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "sneakers/rails/version"

Gem::Specification.new do |spec|
  spec.name          = "sneakers-rails"
  spec.version       = Sneakers::Rails::VERSION
  spec.authors       = ["Nelson Wittwer"]
  spec.email         = ["nelson.wittwer@nuvi.com"]

  spec.summary       = %q{Rails helper for loading sneakers workers.}
  spec.description   = %q{Rails helper for loading sneakers workers.}
  spec.homepage      = "https://github.com/nuvi/sneakers-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "sneakers", "~> 2.6"

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end