
def file_print(file_name)
  File.open(file_name) do |io|
    print (io.read)
  end
end

if __FILE__==$0

  ARGV.each do |file|
    file_print(file)
  end

end

file_print("ruby-begin.org")
