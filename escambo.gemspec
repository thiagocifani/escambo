$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "escambo/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "escambo"
  s.version     = Escambo::VERSION
  s.authors     = ["thiagocifani, Yuri Pourre"]
  s.email       = ["cifani.thiago@gmail.com"]
  s.summary     = %q{Escambo is a opensource e-commerce project to help small business.}
  s.description = %q{Basic Ecommerce Framework for Ruby on Rails}
  s.homepage    = "https://github.com/thiagocifani/escambo"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.1"

  s.add_development_dependency "pg"
end
