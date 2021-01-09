# frozen_string_literal: true

module Minesweeper
  module Content
    # Minesweeper::Content::Number
    class Number
      def initialize(content)
        @content = content
      end

      def type
        Type::NUMBER
      end

      def to_s
        " #{content} "
      end

      private

      attr_reader :content
    end
  end
end
