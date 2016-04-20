require "thor"

module Timus
  class CLI < Thor
    include Thor::Actions
    desc "new <folder>", "Create a new project folder in current directory for timusOJ (./timusOJ by default)"
    def new(folder="timusOJ")
      empty_directory("#{folder}")
    end
  end
end
