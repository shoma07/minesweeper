# frozen_string_literal: true

module Minesweeper
  module Command
    # Minesweeper::Command::PendCommand
    class PendCommand
      def execute(cell)
        cell.pend
      end
    end
  end
end
