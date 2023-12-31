module ColorizedRoutes
  class Railtie < ::Rails::Railtie
    ::Rails::Command::RoutesCommand.prepend ColorizedRoutes::Command::RoutesCommand

    rake_tasks do
      load "tasks/colorized_routes.rake"
    end
  end
end
