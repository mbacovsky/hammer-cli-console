module HammerCLIConsole

  class CommandTreeCommand < HammerCLI::AbstractCommand

    def execute
      print_tree_recursive

      HammerCLI::EX_OK
    end

    private

    def print_tree_recursive(command_name = 'hammer', command = HammerCLI::MainCommand)
      command.recognised_subcommands.each do |subcommand_container|
        subcommand_class = subcommand_container.subcommand_class
        name = "#{command_name} > #{subcommand_container.names.first}"
        puts name
        print_tree_recursive(name, subcommand_class)
      end
    end

  end

end
