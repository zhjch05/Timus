# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'timus/version'

Gem::Specification.new do |spec|
  spec.name          = "timus"
  spec.version       = Timus::VERSION
  spec.authors       = ["zhjch05"]
  spec.email         = ["zjc1996@brandeis.edu"]

  spec.summary       = %q{A command line tool to help users code/make/submit acm problems in timusOJ}
  spec.description   = %q{For ACM ICPC problems, see the official timusOJ website http://acm.timus.ru/. This cli tool helps you create and manage your timus local project directory. You can make the project folder a git repo, write sub problems, have quick access to problems sets lists in the website, and automatically make/submit your solutions.}
  spec.homepage      = "https://github.com/zhjch05/timus-cli"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org/"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  #spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "thor", "~> 0.19.1"
  spec.add_development_dependency "mechanize" , "~> 2.7", ">= 2.7.4"
  spec.add_development_dependency "pry", "~> 0.10", ">=0.10.3"

  spec.add_runtime_dependency "thor", "~> 0.19.1", ">= 0.19"
  spec.add_runtime_dependency "mechanize", "~> 2.7.4", ">= 2.7"

  spec.executables << 'timus'
end
