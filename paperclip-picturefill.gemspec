# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'paperclip/picturefill/version'

Gem::Specification.new do |spec|
  spec.name          = "paperclip-picturefill"
  spec.version       = Paperclip::Picturefill::VERSION
  spec.authors       = ["C.J. Bordeleau"]
  spec.email         = ["bordeleau.cj@gmail.com"]
  spec.summary       = %q{Load the correct size images for evey device size.}
  spec.description   = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  gem.add_dependency 'picturefill', '>= 0.1.3'
  gem.add_dependency 'paperclip', '>= 4.0.0'
end
