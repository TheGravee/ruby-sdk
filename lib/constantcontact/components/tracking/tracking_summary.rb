#
# tracking_summary.rb
# ConstantContact
#
# Copyright (c) 2013 Constant Contact. All rights reserved.

module ConstantContact
  module Components
    class TrackingSummary < Component
      attr_accessor :sends, :opens, :clicks, :forwards, :unsubscribes, :bounces, :spam_count


      # Factory method to create a TrackingSummary object from an array
      # @param [Hash] props - properties to create object from
      # @return [TrackingSummary]
      def self.create(props)
        obj = TrackingSummary.new
        if props
          props.each do |key, value|
            obj.send("#{key}=", value) if obj.respond_to? key
          end
        end
        obj
      end
    end
  end
end