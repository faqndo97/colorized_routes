require "rails/commands/routes/routes_command"

::Rails::Command::RoutesCommand.class_eval do
  class_option :colorized, type: :boolean, aliases: "-C", desc: "Print routes with a colorized version"
end
