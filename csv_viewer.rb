require_relative 'Fetcher'
require_relative 'Menu'
require_relative 'Reader'

 directory_path = File.join(Dir.pwd, 'data')

 # Create an instance of Fetcher with the 'data' folder path
 fetcher = Fetcher.new(directory_path)

 # Fetch CSV files from the 'data' folder
 csv_files = fetcher.fetch_csv_files

 if csv_files.empty?
   puts "No CSV files found."
     exit
     end

     # Create a Menu instance and let the user select a file
     menu = Menu.new(csv_files)
     selected_file = menu.select_file

     # Create a Reader instance and display the contents of the selected file
     reader = Reader.new(selected_file)
     reader.display_file
