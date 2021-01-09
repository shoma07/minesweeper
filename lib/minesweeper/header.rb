# frozen_string_literal: true

module Minesweeper
  # Minesweeper::Header
  class Header
    def initialize(column_size)
      @column_size = column_size
    end

    def render
      "   #{column_size.times.map { |index| " #{index} " }.join}\n" \
      "   #{column_size.times.map { |_index| '---' }.join}\n"
    end

    private

    attr_reader :column_size
  end
end
