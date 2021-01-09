# frozen_string_literal: true

module Minesweeper
  module Content
    # Minesweeper::Content::Bomb
    class Bomb
      def type
        Type::BOMB
      end

      def to_s
        ' * '
      end
    end
  end
end
