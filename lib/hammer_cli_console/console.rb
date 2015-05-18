module HammerCLIConsole
  class ConsoleCommand < HammerCLI::AbstractCommand
    def execute
      Pry.config.prompt_name = "hammer"
      parent_command.pry
      return HammerCLI::EX_OK
    end
  end
end
