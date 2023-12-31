namespace :colorized_routes do
  desc "Setup Colorized Routes for the app"
  task :install do
    system RbConfig.ruby, "./bin/rails", "app:template", "LOCATION=#{File.expand_path("../install/install.rb", __dir__)}"
  end
end
