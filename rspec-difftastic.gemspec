Gem::Specification.new do |s|
  s.name        = "rspec-difftastic"
  s.version     = "0.0.2"
  s.summary     = "Use difftastic in place of RSpec's default differ."
  s.description = "This is a quick patch implementation and may not cover edge cases."
  s.authors     = ["Mike Taylor"]
  s.email       = "github@miket.dev"
  s.homepage    = "https://github.com/sealocal/rspec-difftastic"
  s.license     = "MIT"

  s.metadata = {
    "homepage_uri" => s.homepage,
    "changelog_uri" => "https://github.com/sealocal/rspec-difftastic/releases",
  }

  s.files = Dir[
    "lib/**/*",
    "LICENSE",
  ]

  s.add_runtime_dependency "difftastic", "~> 0.6.0"

  s.add_development_dependency "rspec", "~> 3.0"
end
