require 'tty-prompt'

class Menu
    def initialize(csv_files)
          @csv_files = csv_files
              @prompt = TTY::Prompt.new
                end

      def select_file
            @prompt.select("Select a CSV file to view:", @csv_files)
              end
end
