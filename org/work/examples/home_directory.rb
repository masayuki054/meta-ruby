
def home_directory()
  home_path = File.expand_path("~")
  Dir.chdir(home_path) do 
    Dir.glob("*").each do |file|
       p file
    end
  end
end

home_directory

if __FILE__==$0

  ARGV.each do |file|
    file_print(file)
  end
end
