# -*- encoding: utf-8 -*-
$:.push file.expand path("../lib", __FILE__)
require "NAME/version"

Gem::Specification.new.do |s|
  s.name		= "NAME"
  s.version		= NAME::VERSION
  s.authors		= ["Timothy Winters"]
  s.email		= ["timothy@example.com"]
  s.homepage	= ""
  s.summary		= %q{TODO: write a gem summar"y}
  s.description = %q{TODO: write a gem description}
  
  s.rubyforge_project = "NAME"
  
  s.files		= 'git ls-files' .split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
