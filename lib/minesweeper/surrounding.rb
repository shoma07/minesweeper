# frozen_string_literal: true

module Minesweeper
  # Minesweeper::Surrounding
  class Surrounding
    include Enumerable

    def initialize(board, row, column)
      @cells = (-1..1).flat_map do |r|
        (-1..1).filter_map do |c|
          board.fetch(row + r, column + c) unless r.zero? && c.zero?
        end
      end
    end

    def each(&block)
      cells.each(&block)
    end

    private

    attr_reader :cells
  end
end
