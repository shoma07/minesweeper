# frozen_string_literal: true

require_relative 'minesweeper/version'
require_relative 'minesweeper/content'
require_relative 'minesweeper/cover'
require_relative 'minesweeper/surrounding'
require_relative 'minesweeper/surrounding_proxy'
require_relative 'minesweeper/cell'
require_relative 'minesweeper/header'
require_relative 'minesweeper/board'
require_relative 'minesweeper/command'
require_relative 'minesweeper/game'
require_relative 'minesweeper/cli'

module Minesweeper
  class Error < StandardError; end
  # Your code goes here...
end
