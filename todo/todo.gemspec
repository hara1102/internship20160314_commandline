# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'todo/version'

Gem::Specification.new do |spec|
  spec.name          = "todo"
  spec.version       = Todo::VERSION
  spec.authors       = ["hara1102"]
  spec.email         = ["yamatoharakobe@gmail.com"]

  spec.summary       = %q{management tool}
  spec.description   = %q{management tool created by Perfect Ruby Team.}
  spec.homepage      = "https://github.com/hara1102/internship_201603.git"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = Dir.glob("**/*").select{|path| !(path =~ /^doc|^pkg/)}
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  
  spec.add_dependency "activerecord", "~> 3.2.0"
  spec.add_dependency "sqlite3", "~> 1.3.0"
  spec.add_development_dependency "bundler",   "~> 1.3"
  spec.add_development_dependency "rake",      "~> 10.0"
  spec.add_development_dependency "minitest",  "~> 5.0"
  spec.add_development_dependency "yard",      "~> 0.8"
  spec.add_development_dependency "redcarpet", "~> 2.2"
  
  
end
