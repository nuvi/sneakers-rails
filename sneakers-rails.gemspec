$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "sneakers/rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "sneakers-rails"
  s.version     = Sneakers::Rails::VERSION
  s.authors     = ["Nelson Wittwer"]
  s.email       = ["nelson.wittwer@nuvi.com"]
  s.homepage    = "https://github.com/nuvi/sneakers-rails"
  s.summary     = "Dynamically build $WORKERS environment variable from classes that include Sneakers::Worker"
  s.description = "Dynamically build $WORKERS environment variable from classes that include Sneakers::Worker"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.4"
  s.add_dependency "sneakers", "~> 2.6"

  s.add_development_dependency "pry-nav"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "mocha"
end
