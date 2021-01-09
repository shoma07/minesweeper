# frozen_string_literal: true

module Minesweeper
  module Cover
    # Minesweeper::Cover::Flagged
    class Flagged
      def type
        Type::FLAGGED
      end

      def to_s
        '[F]'
      end
    end
  end
end
