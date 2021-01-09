# frozen_string_literal: true

module Minesweeper
  module Cover
    # Minesweeper::Cover::None
    class None
      def type
        Type::NONE
      end

      def to_s
        raise StandardError
      end
    end
  end
end
