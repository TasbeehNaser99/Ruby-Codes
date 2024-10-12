class Fetcher
    def initialize(directory_path)
          @directory_path = directory_path
            end

      def fetch_csv_files
            Dir.glob(File.join(@directory_path, '*.csv'))
              end
end
