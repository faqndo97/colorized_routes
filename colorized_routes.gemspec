require_relative "lib/colorized_routes/version"

Gem::Specification.new do |spec|
  spec.name        = "colorized_routes"
  spec.version     = ColorizedRoutes::VERSION
  spec.authors     = ["Facundo Espinosa"]
  spec.email       = ["facundo.espinosa@hey.com"]
  spec.homepage    = "https://github.com/faqndo97/colorized_routes"
  spec.summary     = "A New Visual Dimension for Rails Routes"
  spec.description = "Enhances Rails routes visualization with color and structure, offering an intuitive and visually appealing output using the -C flag."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/faqndo97/colorized_routes"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 5.1.0"
end
