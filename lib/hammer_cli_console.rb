require 'hammer_cli'
require 'pry'

module HammerCLIConsole
  HammerCLI::MainCommand.lazy_subcommand("console",
                                         _("Launch a pry session in Hammer."),
                                         "HammerCLIConsole::ConsoleCommand",
                                         "hammer_cli_console/console")
end
