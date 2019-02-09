require 'pathname'

module Webpacker
  extend self

  def instance
    MockWebpacker.new
  end

  class MockWebpacker
    attr_reader :config

    def initialize
      @config = MockWebpackerConfigration.new
    end
  end

  class MockWebpackerConfigration
    attr_reader :source_path

    def initialize
      tmp_source_path = File.expand_path('../tmp/app/webpacker', __dir__)
      @source_path = Pathname.new(tmp_source_path)
    end
  end
end
