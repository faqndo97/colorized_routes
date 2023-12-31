module ColorizedRoutes
  module Command
    module RoutesCommand
      def formatter
        return super unless options.key?("colorized")

        ColorizedRoutes::Formatter.new
      end
    end
  end
end
