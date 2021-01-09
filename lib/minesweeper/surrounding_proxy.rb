# frozen_string_literal: true

module Minesweeper
  # Minesweeper::SurroundingProxy
  class SurroundingProxy
    include Enumerable

    def initialize(board, row, column)
      @block = -> { Surrounding.new(board, row, column) }
    end

    def each(&block)
      surrounding.each(&block)
    end

    private

    attr_reader :block

    def surrounding
      @surrounding ||= block.call
    end
  end
end
