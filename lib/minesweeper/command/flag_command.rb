# frozen_string_literal: true

module Minesweeper
  module Command
    # Minesweeper::FlagCommand
    class FlagCommand
      def execute(cell)
        cell.flag
      end
    end
  end
end
