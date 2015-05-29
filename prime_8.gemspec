# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'prime_8/version'

Gem::Specification.new do |spec|
  spec.name          = "prime_8"
  spec.version       = Prime8::VERSION
  spec.authors       = ["Matthew Jording"]
  spec.email         = ["mjording@gmail.com"]

  spec.summary       = %q{A brief excercise and exploration of primes.}
  spec.description   = %q{A brief excercise and exploration of primes. cli, benchmarks and tests between diffent prime generation algorithms, etc}
  spec.homepage      = "http://github.com/mjording/prime_8."

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  #if spec.respond_to?(:metadata)
    #spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  #else
    #raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  #end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'cri','2.7.0'
  spec.add_dependency 'command_line_reporter', '>=3.0'
  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "benchmark-ips", "~> 2.2.0"
  spec.add_development_dependency 'rspec', '~> 3.2.0'
  spec.add_development_dependency 'pry', '~> 0.10.1'
  spec.add_development_dependency 'awesome_print', '~> 1.6.1'

end
