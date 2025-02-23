Gem::Specification.new do |s|
  s.name        = "rspec-difftastic"
  s.version     = "0.0.1"
  s.summary     = "Use difftastic in place of RSpec's default differ."
  s.description = "This is a quick patch implementation and may not cover edge cases. To reduce disruptions and maximize usefulness, difftastic is only applied when RSpec diffs strings."
  s.authors     = ["Mike Taylor"]
  s.email       = "github@miket.dev"
  s.homepage    = "https://rubygems.org/gems/rspec-difftastic"
  s.license     = "MIT"

  s.files       = ["lib/rspec-difftastic.rb"]
  s.add_runtime_dependency "difftastic", "~> 0.6.0"

  s.add_development_dependency "rspec", "~> 3.0"
end
