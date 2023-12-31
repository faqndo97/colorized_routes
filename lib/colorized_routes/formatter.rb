require "action_dispatch/routing/inspector"

module ColorizedRoutes
  class Formatter < ::ActionDispatch::Routing::ConsoleFormatter::Base
    CLEAR = "\e[0m"

    # Colors
    BLACK = "\e[1;90m"
    BLUE = "\e[1;94m"
    RED = "\e[1;91m"
    YELLOW = "\e[1;93m"
    WHITE = "\e[1;97m"

    def initialize(width: IO.console_size[1])
      @width = width
      super()
    end

    def section_title(title)
      @buffer << "\n#{title}:"
    end

    def section(routes)
      @buffer << draw_section(routes)
    end

    def header(routes)
      @buffer << draw_header(routes)
    end

    private

    def draw_section(routes)
      routes.map do |route|
        verb = "     #{route[:verb]}"
        path = "#{route[:path]} ".rjust(10 - route[:verb].size + route[:path].size)
        name_and_reqs = " #{name_and_reqs(route)}     ".rjust(@width - verb.size - path.size, ".")

        verb = colorize_verb(verb)
        path = colorize_path(path)
        name_and_reqs = "#{BLACK}#{name_and_reqs}#{CLEAR}"

        "#{verb}#{path}#{name_and_reqs}"
      end
    end

    def colorize_verb(verb)
      case verb
      when %r{GET}
        "#{BLUE}#{verb}#{CLEAR}"
      when %r{HEAD}
        "#{BLACK}#{verb}#{CLEAR}"
      when %r{PUT|POST|PATCH}
        "#{YELLOW}#{verb}#{CLEAR}"
      when %r{DELETE}
        "#{RED}#{verb}#{CLEAR}"
      else
        verb
      end
    end

    def colorize_path(path)
      path.gsub(/\/(:[\w\d]*)/, "/#{YELLOW}\\1#{CLEAR}")
    end

    def name_and_reqs(route)
      return route[:reqs] if route[:name].blank?

      "#{route[:name]}_path > #{route[:reqs]}"
    end

    def draw_header(routes)
      ""
    end
  end
end
