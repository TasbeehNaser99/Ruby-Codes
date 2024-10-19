# Rack App

## Description
This project is a web application built using the Rack framework. It serves static files and has basic authentication features.

## Features
- **Static File Serving**: The application serves static files from the `public` directory.
- **Basic Authentication**: It includes a simple authentication mechanism to protect certain routes.
- **Development Support**: Utilizes `Rack::Reloader` for automatic code reloading during development.

## Technologies Used
- Ruby
- Rack
- Rack::Reloader
- Rack::Auth::Basic

## Getting Started

### Prerequisites
- Ruby (version 3.0 or later)
- Bundler (recommended for managing gems)

### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/TasbeehNaser99/rack_app.git
   cd rack_app
2. Install the required gems:
   ```bash
   bundle install
### Running the Application
To start the application, run the following command:

   ```bash
   RACK_ENV=development rackup
   ```


**The application will be available at** http://localhost:9292.

### Authentication
To access the application, you will be prompted to enter a username and password. Use the following credentials:

**Username**: tasbeeh
**Password**: tasbeeh
### Usage
Place your static files (HTML, CSS, JS, etc.) in the public directory.
Customize the lib/rack_app.rb file to modify the application behavior.
### Contributing
If you would like to contribute to this project, please fork the repository and submit a pull request.   
