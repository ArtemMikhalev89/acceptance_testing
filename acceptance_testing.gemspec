# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'acceptance_testing/version'

Gem::Specification.new do |spec|
  spec.name          = "acceptance_testing"
  spec.version       = AcceptanceTesting::VERSION
  spec.authors       = ["Artem Mikhalev"]
  spec.email         = ["a.mikhalev1989@gmail.com"]

  spec.summary       = "Acceptance testing"
  spec.homepage      = 'https://github.com/ArtemMikhalev89/acceptance_testing'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rake", "~> 12.0.0"
  spec.add_runtime_dependency "rspec", "~> 3.4.0"
  spec.add_runtime_dependency "turnip", "~> 3.0.0.pre.beta.5"
  spec.add_runtime_dependency "capybara", "~> 2.6.2"
  spec.add_runtime_dependency "webdrivers", "~> 2.3"
  spec.add_runtime_dependency "selenium-webdriver", "~> 2.53.4"
  spec.add_runtime_dependency "site_prism", "~> 2.9"
  spec.add_runtime_dependency "require_all", "~> 1.3.3"
  spec.add_runtime_dependency "pry-byebug", "~> 3.4.0"
  spec.add_development_dependency "bundler", "~> 1.14"
end
