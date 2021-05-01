# frozen_string_literal: true

module Minesweeper
  # Minesweeper::Game
  class Game
    attr_reader :board

    def initialize
      @board = Board.new(10, 10)
      @commands = Command::LIST.transform_values(&:new)
    end

    def start
      until board.opened_bomb?
        render
        command(*input)
      end
      board.all_open
      render
    end

    private

    attr_reader :commands

    def input
      print '> '
      gets.chomp.split
    end

    def command(row, column, mode = nil)
      commands[mode].execute(board.fetch(row.to_i, column.to_i))
    end

    def render
      puts board.render
    end
  end
end
