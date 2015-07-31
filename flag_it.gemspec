# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'flag_it/version'

Gem::Specification.new do |spec|
  spec.name          = "flag_it"
  spec.version       = FlagIt::VERSION
  spec.authors       = ["Patrick Bradley"]
  spec.email         = ["patrickbradley777@gmail.com"]

  spec.summary       = %q{User flagging system on Activerecord Objects in a Rails application.}
  spec.description   = %q{Methods for making an Activerecord model 'flaggable' as well as making giving 'flagging' priveledges to a User.}
  spec.homepage      = "https://github.com/wuliwong/flag_it"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "coveralls"

  spec.add_runtime_dependency 'activerecord',  ['>= 4', '< 5']
end
