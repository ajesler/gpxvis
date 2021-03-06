# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gpxvis/version'

Gem::Specification.new do |spec|
  spec.name          = "gpxvis"
  spec.version       = Gpxvis::VERSION
  spec.authors       = ["aj esler"]
  spec.email         = ["andrew.esler@powershop.co.nz"]

  spec.summary       = %q{Generates an HTML page to visualise a GPX file.}
  spec.description   = spec.description
  spec.homepage      = "https://github.com/ajesler/gpxvis"
  spec.license       = "MIT"

  excluded_files = [
    "spec/",
    "\\.", # remove all dot files
    "Rakefile",
    "Gemfile",
    "bin/console",
    "bin/setup",
    "gpxvis.gemspec"
  ].join("|")
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(#{excluded_files})})
  end
  spec.bindir        = "bin"
  spec.executables   = ["gpxvis"]
  spec.require_paths = ["lib"]

  spec.add_dependency 'nokogiri', '~> 1.6'
  spec.add_dependency 'haversine', '~> 0.3'
  spec.add_dependency 'chronic_duration', '~> 0.10'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "byebug"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-byebug"
end
