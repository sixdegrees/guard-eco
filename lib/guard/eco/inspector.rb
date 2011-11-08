module Guard
  class Eco

    # The inspector verifies of the changed paths are valid
    # for Guard::Eco.
    #
    module Inspector
      class << self

        # Clean the changed paths and return only valid
        # Eco files.
        #
        # @param [Array<String>] paths the changed paths
        # @return [Array<String>] the valid spec files
        #
        def clean(paths)
          paths.uniq!
          paths.compact!
          paths = paths.select { |p| eco_file?(p) }
          clear_eco_files_list
          paths
        end

        private

        # Tests if the file is valid.
        #
        # @param [String] file the file
        # @return [Boolean] when the file valid
        #
        def eco_file?(path)
          eco_files.include?(path)
        end

        # Scans the project and keeps a list of all
        # Eco files.
        #
        # @see #clear_eco_files_list
        # @return [Array<String>] the valid files
        #
        def eco_files
          @eco_files ||= Dir.glob('**/*.eco')
        end

        # Clears the list of Eco files in this project.
        #
        def clear_eco_files_list
          @eco_files = nil
        end

      end
    end
  end
end
