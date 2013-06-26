require "sprockets/bower/version"
require "json"

module Sprockets
  module Bower
    class Manifest
      # Default location where bower stashes its assets.
      DEFAULT_ASSETS_PATH = './components'

      # Default path for the .bowerrc file
      DEFAULT_BOWERRC_PATH = '.bowerrc'

      # Create a new instance of a bower manifest that we'll
      # pass into sprockets.
      def initialize(path = DEFAULT_ASSETS_PATH)
        @path = path
      end

      # Configure the sprockets environment.
      def configure(sprockets)
        sprockets.append_path @path
      end

      # Load a bower Manifest and don't throw an error if the .bowerrc file
      # is not fond.
      def self.load(bowerrc_path = DEFAULT_BOWERRC_PATH)
        File.exists?(bowerrc_path) ? load!(bowerrc_path) : new
      end

      # Create a new Manifest and configure it with the bowerrc file.
      def self.load!(bowerrc_path)
        json = JSON.parse File.read bowerrc_path
        new json['directory']
      end
    end
  end
end
