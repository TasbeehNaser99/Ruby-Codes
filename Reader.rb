require 'csv'
require 'terminal-table'

class Reader
    def initialize(file)
          @file = file
            end

      def display_file
            headers = []
                rows = []

                    # Read the CSV file
                     CSV.foreach(@file, headers: true) do |row|
                           headers = row.headers if headers.empty?
                                 rows << row.fields
                                     end
                
                                         # Create a Terminal::Table instance
                                             table = Terminal::Table.new :headings => headers, :rows => rows
                
                                                 # Output the table to the console
                                                     puts table
                                                       end
                                                      end
                                                       
