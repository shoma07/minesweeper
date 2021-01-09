# frozen_string_literal: true

module Minesweeper
  module Cover
    # Minesweeper::Cover::Default
    class Default
      def type
        Type::DEFAULT
      end

      def to_s
        '[ ]'
      end
    end
  end
end
