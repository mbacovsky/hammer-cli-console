require 'hammer_cli'
require 'pry'

module HammerCLIConsole
  HammerCLI::MainCommand.lazy_subcommand("console",
                                         _("Launch a pry session in Hammer."),
                                         "HammerCLIConsole::ConsoleCommand",
                                         "hammer_cli_console/console")
  HammerCLI::MainCommand.lazy_subcommand("full-help",
                                         _("Recursive help of all hammer commands"),
                                         "HammerCLIConsole::FullHelpCommand",
                                         "hammer_cli_console/fullhelp")
  HammerCLI::MainCommand.lazy_subcommand("command-tree",
                                         _("Display the hammer command tree"),
                                         "HammerCLIConsole::CommandTreeCommand",
                                         "hammer_cli_console/commandtree")
end
