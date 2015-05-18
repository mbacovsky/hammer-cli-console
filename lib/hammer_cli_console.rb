require 'hammer_cli'
require 'pry'
require 'hammer_cli_console/console'
require 'hammer_cli_console/fullhelp'
require 'hammer_cli_console/commandtree'

module HammerCLIConsole
  HammerCLI::MainCommand.subcommand('console',
                                    _('Launch a pry session in Hammer.'),
                                    HammerCLIConsole::ConsoleCommand)
  HammerCLI::MainCommand.subcommand('full-help',
                                    _('Recursive help of all hammer commands'),
                                    HammerCLIConsole::FullHelpCommand)
  HammerCLI::MainCommand.subcommand('command-tree',
                                    _('Display the hammer command tree'),
                                    HammerCLIConsole::CommandTreeCommand)
end
