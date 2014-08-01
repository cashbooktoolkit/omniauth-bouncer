# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/bouncer/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-bouncer"
  spec.version       = Omniauth::Bouncer::VERSION
  spec.authors       = ["Sourdough Labs Research and Development Corp."]
  spec.email         = ["vhodges@gmail.com"]
  spec.summary       = %q{An omniauth strategy to use when authenicating using the bouncer authentication server}
  spec.description   = %q{An omniauth strategy for Bouncer which is a simple OAuth2 based authentication server that organizations can deploy.  It delegates the actual authenication call to a backend service that is generally an exisiting legacy system (ie a core banking system)}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  spec.add_dependency 'omniauth', '~> 1.0'
  spec.add_dependency 'omniauth-oauth2'
end

