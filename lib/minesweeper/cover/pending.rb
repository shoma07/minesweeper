# frozen_string_literal: true

module Minesweeper
  module Cover
    # Minesweeper::Cover::Pending
    class Pending
      def type
        Type::PENDING
      end

      def to_s
        '[?]'
      end
    end
  end
end
