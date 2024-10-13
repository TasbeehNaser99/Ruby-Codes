CSV Viewer
===
Overview
==
The CSV Viewer is a Ruby command-line application that allows users to fetch and display CSV files from a specified directory. The program provides an interactive menu where users can choose which CSV file they want to display. This program is built using modular classes that handle specific responsibilities, including fetching the CSV files, reading them, and displaying them in a table format.

Features
=
Fetch all CSV files from a specific directory.
List the available CSV files for user selection.
Read and display the content of the selected CSV file in a tabular format.
User-friendly command-line interface using the tty-prompt gem.

Technologies Used
=
Ruby: The core language used for the program.
CSV: A Ruby standard library used for handling CSV file reading.
tty-prompt: A gem used for creating interactive command-line menus.
terminal_table: A gem used to display CSV data in a tabular format.
Pry: A debugging tool used during development.

Installation
=
Prerequisites
Ruby (Ensure Ruby is installed on your system by running ruby -v).
Bundler (Optional, but recommended for managing gems).
Gems Used
tty-prompt
pry
csv
terminal_table

Steps to Install
=
Clone the repository:

git clone https://github.com/TasbeehNaser99/Ruby-Code.git

Install the required gems: If you are using Bundler, run:

bundle install

Otherwise, manually install the gems:

gem install tty-prompt pry csv terminal_table

How to Use
=
Place all the CSV files that you want to fetch inside the data folder within the project directory.

Run the program :
=
ruby csv_viewer.rb

csv_viewer/
│
├── Fetcher.rb
├── Menu.rb
├── Reader.rb
├── csv_viewer.rb
└── data/
    ├── customers.csv
    ├── people.csv
    └── organizations.csv

Code Structure
The program is divided into several classes, each with a specific responsibility:

Fetcher: Responsible for fetching all CSV files from the specified directory. 

Menu: Handles user interaction, allowing users to select the CSV file they want to view.

Reader: Reads the selected CSV file and displays its content using the terminal_table gem.

https://github.com/user-attachments/assets/b544b96a-5183-439c-92f4-fdadc6248ba6

