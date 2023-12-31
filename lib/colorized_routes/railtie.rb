module ColorizedRoutes
  class Railtie < ::Rails::Railtie
    ::Rails::Command::RoutesCommand.prepend ColorizedRoutes::Command::RoutesCommand

  end
end
