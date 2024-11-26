# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'view_elements/version'

Gem::Specification.new do |spec|
  spec.name          = "view_elements"
  spec.version       = ViewElements::VERSION
  spec.authors       = ["Federico Dayan"]
  spec.email         = ["federico.dayan@gmail.com"]

  spec.summary       = %q{View elements}
  spec.description   = %q{View elements}
  spec.homepage      = ""
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.b  ename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">= 6.1.7", "< 7.0"

  spec.add_development_dependency "bundler", ">= 2.0"
  spec.add_development_dependency "rake", ">= 13.0"
  spec.add_development_dependency "rspec-rails", ">= 4.0"
  spec.add_development_dependency "sqlite3", "~> 1.4"
end
