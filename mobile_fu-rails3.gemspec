# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "mobile_fu-rails3"
  s.version     = "1.0.2"
  s.authors     = ["Brendan Lim", "Jori Hardman"]
  s.email       = ["jorihardman@gmail.com"]
  s.homepage    = "https://github.com/jyro215/mobile-fu"
  s.summary     = "Easily handling of mobile requests in action controller."
  s.description = "This is a rewrite of the mobile-fu gem using Rails 3 railties."

  s.rubyforge_project = "mobile_fu-rails3"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_dependency("rails", ">= 3.0.0")
end
