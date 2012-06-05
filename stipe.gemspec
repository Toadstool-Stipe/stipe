Gem::Specification.new do |s|
  # Release Specific Information
  s.version = "0.0.1"
  s.date = "2012-06-04"

  # Gem Details
  s.name = "stipe"
  s.authors = ["Dale Sande", "Jed Foster"]
  s.summary = %q{Core styles for Toadstool}
  s.description = %q{Core styles for the Toadstool styleguide app.}
  s.email = "jed@jedfoster.com"
  s.homepage = "https://github.com/blackfalcon/toadstool"

  # Gem Files
  s.files = %w(README.md)
  s.files += Dir.glob("lib/**/*.*")
  s.files += Dir.glob("stylesheets/**/*.*")

  # Gem Bookkeeping
  s.rubygems_version = %q{1.3.6}
  s.add_dependency("compass", [">= 0.11"])
end