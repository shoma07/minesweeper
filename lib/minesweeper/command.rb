# frozen_string_literal: true

require_relative 'command/flag_command'
require_relative 'command/open_command'
require_relative 'command/pend_command'

module Minesweeper
  # Minesweeper::Command
  module Command
    LIST = {
      'f' => Command::FlagCommand,
      'p' => Command::PendCommand,
      'o' => Command::OpenCommand,
      nil => Command::OpenCommand
    }.freeze
  end
end
