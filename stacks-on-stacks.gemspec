# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'stacks/on/stacks/version'

Gem::Specification.new do |spec|
  spec.name          = "stacks-on-stacks"
  spec.version       = Stacks::On::Stacks::VERSION
  spec.authors       = ["Geoff Hayes"]
  spec.email         = ["hayesgm@gmail.com"]
  spec.description   = %q{Stacks on Stacks is a management CLI for common tasks on AWS OpsWorks.  You'll be able to SSH to your servers (via a bastion) and send off deploys.}
  spec.summary       = %q{Stacks on Stack is a CLI for managing an OpsWorks stack}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
