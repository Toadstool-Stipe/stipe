Gem::Specification.new do |s|
  # Release Specific Information
  s.version = "0.0.6.4"
  s.date = "2013-11-20"

  # Gem Details
  s.name = "stipe"
  s.authors = ["Dale Sande", "Jed Foster"]
  s.summary = %q{Core styles for Toadstool}
  s.description = %q{Core styles for the Toadstool styleguide app.}
  s.email = "dale.sande@gmail.com"
  s.homepage = "https://github.com/Toadstool-Stipe/stipe"

  # Gem Files
  s.files = %w(readme.md)
  s.files += Dir.glob("lib/**/*.*")
  s.files += Dir.glob("stylesheets/**/*.*")

  # Gem Bookkeeping
  s.rubygems_version = %q{1.3.6}
  s.add_dependency("compass", [">= 0.11"])
  s.add_dependency("sass", [">=3.2.1"])
end
