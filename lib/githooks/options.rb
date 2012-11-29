require "optparse"
require "ostruct"

module Githooks
  class Options
    def self.parse(args)
      options = OpenStruct.new
      # default options
      # options.verbose = false
      opts = OptionParser.new do |opts|
        opts.banner = "Usage: githooks [options]"
        opts.on_tail("-h", "--help", "Show this help") do
          puts opts
          exit
        end
        opts.on_tail("-v", "--version", "Version") do
          puts Githooks::VERSION
          exit
        end
      end
      opts.parse!(args)
      options
    end
  end
end
