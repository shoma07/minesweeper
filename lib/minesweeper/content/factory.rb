# frozen_string_literal: true

module Minesweeper
  module Content
    # Minesweeper::Content::Factory
    class Factory
      class << self
        def create_bomb
          rand <= 0.12 ? Content::Bomb.new : Content::Empty.new
        end

        def create_safety(surrounding_bomb_count)
          return Empty.new if surrounding_bomb_count.zero?

          Number.new(surrounding_bomb_count.to_s)
        end
      end
    end
  end
end
