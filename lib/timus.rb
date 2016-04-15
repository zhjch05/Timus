require "timus/version"
require "thor"

module Timus
  class CLI < Thor

    desc "new <folder>", "Create a new project folder for timusOJ (./timusOJ by default)"
    def new(folder="./timusOJ")
      puts "folder path #{folder}"
    end
  end
end
