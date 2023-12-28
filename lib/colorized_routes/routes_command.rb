require 'rails/commands/routes/routes_command'
require 'rails/command'

module Rails
  module Command
    class RoutesCommand < Base
      class_option :colorized, type: :boolean, aliases: "-C", desc: "Print routes with a colorized version"

      private

      def formatter
        ColorizedRoutes::Formatter.new(width: 100)
      end
    end
  end
end
