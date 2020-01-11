$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "sabotage/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "sabotage"
  spec.version     = Sabotage::VERSION
  spec.authors     = ["Igor Kasyanchuk"]
  spec.email       = ["igorkasyanchuk@gmail.com"]
  spec.homepage    = "https://github.com/igorkasyanchuk/sabotage"
  spec.summary     = "Coding & debugging must be fun. Make life a bit harder for your colleagues :)"
  spec.description = "Coding & debugging must be fun. Make life a bit harder for your colleagues :)"
  spec.license     = "MIT"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails"

  spec.add_development_dependency "sqlite3"
end
