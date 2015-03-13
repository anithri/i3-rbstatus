require 'i3/bar_protocol'
module I3
  module Blocks
    class Clock

      attr_accessor :format, :block

      def initialize(format)
        @format = format
        @block = I3::BarProtocol.new(name: 'clock')
      end

      def tick
        block.full_text = Time.now.strftime(format)
        block.to_json
      end
    end
  end
end
