# frozen_string_literal: true

module Minesweeper
  module Command
    # Minesweeper::Command::OpenCommand
    class OpenCommand
      def execute(cell)
        cell.open
      end
    end
  end
end
