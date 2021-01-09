# frozen_string_literal: true

module Minesweeper
  # Minesweeper::Cell
  class Cell
    def initialize(surrounding)
      @cover = Cover::Factory.create_default
      @content = Content::Factory.create_bomb
      @surrounding = surrounding
    end

    def pend
      self.cover = Cover::Factory.create_pending
    end

    def flag
      self.cover = Cover::Factory.create_flagged
    end

    def open(force: false)
      return unless force || cover.type == Cover::Type::DEFAULT

      recursive_open
    end

    def opened_bomb?
      opened? && bomb?
    end

    # @return [String]
    def render
      (opened? ? content : cover).to_s
    end

    protected

    attr_accessor :content

    def recursive_open
      update_content
      self.cover = Cover::Factory.create_none
      return if content.type == Content::Type::NUMBER

      surrounding.each { |cell| cell.recursive_open unless cell.opened? || cell.bomb? }
    end

    def opened?
      cover.type == Cover::Type::NONE
    end

    def bomb?
      content.type == Content::Type::BOMB
    end

    private

    attr_reader :surrounding
    attr_accessor :cover

    def update_content
      return if bomb? || opened?

      self.content = Content::Factory.create_safety(surrounding.count(&->(cell) { cell.bomb? }))
    end
  end
end
