# frozen_string_literal: true

module Minesweeper
  module Cover
    # Minesweeper::Cover::Factory
    class Factory
      class << self
        def create_default
          Default.new
        end

        def create_none
          None.new
        end

        def create_flagged
          Flagged.new
        end

        def create_pending
          Pending.new
        end
      end
    end
  end
end
