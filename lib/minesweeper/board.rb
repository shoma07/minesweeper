# frozen_string_literal: true

module Minesweeper
  # Minesweeper::Board
  class Board
    def initialize(row_size, column_size)
      @header = Header.new(column_size)
      @cells = row_size.times.map do |row|
        column_size.times.map do |column|
          Cell.new(SurroundingProxy.new(self, row, column))
        end
      end
    end

    def all_open
      flatten_cells.each { |cell| cell.open(force: true) }
    end

    def opened_bomb?
      flatten_cells.any?(&:opened_bomb?)
    end

    # @return [Cell, NilClass]
    def fetch(row, column)
      return if row.negative? || column.negative?

      cells.fetch(row, nil)&.fetch(column, nil)
    end

    def render
      "#{header.render}#{render_cells}"
    end

    private

    attr_reader :cells, :header

    def init_bombs
      flatten_cells.each(&:init_bomb)
    end

    def flatten_cells
      cells.flatten
    end

    def render_cells
      cells.map.with_index do |row_cells, row_index|
        "#{row_index} |#{row_cells.map(&:render).join}\n"
      end.join
    end
  end
end
