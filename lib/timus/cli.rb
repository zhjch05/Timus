require "thor"

module Timus
  class CLI < Thor

    include Thor::Actions
    include Thor::Shell
    
    def recommend_config
      say ""
      say "For first time use, a configuration is recommended."
      say ""
      say "  Run  timus config"
      say ""
    end

    desc "new <folder>", "Create a new project folder in current directory for timusOJ (./timusOJ by default)"
    def new(folder="timusOJ")
      empty_directory("#{folder}")
      empty_directory("#{folder}/templates")
      recommend_config
    end
  end
end
