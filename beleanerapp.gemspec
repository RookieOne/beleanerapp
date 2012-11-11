$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "beleanerapp/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "beleanerapp"
  s.version     = Beleanerapp::VERSION
  s.authors     = ["Jonathan Birkholz"]
  s.email       = ["rookieone@gmail.com"]
  s.homepage    = "http://www.beleaner.com"
  s.summary     = "Mountable rails engine to sync with beleaner"
  s.description = "Mountable rails engine to sync with beleaner"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.3"
  s.add_dependency "rspec-rails"

  s.add_development_dependency "sqlite3"
end
