# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lint_search/version'

Gem::Specification.new do |spec|
  spec.name          = "lint_search"
  spec.version       = LintSearch::VERSION
  spec.authors       = ["Dave Russell"]
  spec.email         = ["dave.kerr@gmail.com"]

  spec.summary       = %q{LintSearch is a an application which searchs for a keyword and then liunts the first results}
  spec.homepage      = "http://github.com/OkayDave/lint_search"


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"


  spec.add_runtime_dependency "thor", "~> 0.19"
  spec.add_runtime_dependency "mechanize", "~> 2.7"
end
