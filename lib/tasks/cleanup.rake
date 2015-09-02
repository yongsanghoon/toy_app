namespace :main do
  desc "Remove test file called 'jacob-test.txt'"

  task :check_dir do
    puts "Directory to check: "
    @dir = STDIN.gets.strip     # STDIN = ask user for input
    if File.directory?("#{@dir}")
      puts "Directory exists!"
      cleanup_remove_dir
    else
      puts "Directory does not exist!"
    end
  end

  task :cleanup => :check_dir do
      puts "Cleaning up..."
      puts "Deleting "
  end
end

def cleanup_remove_dir
  Rake::Task["main:cleanup"].invoke
end
