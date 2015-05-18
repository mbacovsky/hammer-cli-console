module HammerCLIConsole
  class CommandTreeCommand < HammerCLI::AbstractCommand
    option "--with-options", :flag, _("List with all available options")

    def execute
      print_tree_recursive

      HammerCLI::EX_OK
    end

    private

    def print_tree_recursive(command_name = 'hammer', command = HammerCLI::MainCommand)
      command.recognised_subcommands.sort_by { |subc| subc.names.first }.each do |subcommand_container|
        subcommand_class = subcommand_container.subcommand_class
        name = "#{command_name} > #{subcommand_container.names.first}"
        puts name

        if option_with_options?
          subcommand_class.recognised_options.sort_by { |opt| opt.switches.sort.first }.each do |opt|
            switches = opt.switches.sort
            puts "#{name} | #{switches.join(', ')}"
          end
        end
        print_tree_recursive(name, subcommand_class)
      end
    end
  end
end
