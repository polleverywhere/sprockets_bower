# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sprockets/bower/version'

Gem::Specification.new do |spec|
  spec.name          = "sprockets-bower"
  spec.version       = Sprockets::Bower::VERSION
  spec.authors       = ["Brad Gessler"]
  spec.email         = ["brad@polleverywhere.com"]
  spec.description   = %q{Use Bower assets in Sprockets.}
  spec.summary       = %q{Stop copying and pasting JavaScript files into your projects and start using Bower to manage dependencies.}
  spec.homepage      = "https://github.com/polleverywhere/sprockets_bower"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", ">= 2.0.0"
  spec.add_development_dependency "sprockets", ">= 2.0.0"
end
