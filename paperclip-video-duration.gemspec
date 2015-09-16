# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'paperclip/video/duration/version'

Gem::Specification.new do |spec|
  spec.name          = "paperclip-video-duration"
  spec.version       = Paperclip::Video::Duration::VERSION
  spec.authors       = ["pierce-h"]
  spec.email         = ["piercewharmon@gmail.com"]
  spec.summary       = %q{nil}
  spec.description   = %q{nil}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.required_ruby_version = ">= 1.9.3"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "paperclip", ">= 3.0.2", "< 5.0"
end
