# frozen_string_literal: true

module Minesweeper
  module Content
    # Minesweeper::Content::Empty
    class Empty
      def type
        Type::EMPTY
      end

      def to_s
        '   '
      end
    end
  end
end
