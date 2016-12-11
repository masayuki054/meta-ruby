
def dir_tree_print(di)
  Dir.chdir(di) do
    Dir.glob("*").each do |f|
      p `pwd`+"/"+arg
      if File.directory?(f)
        dir_tree_print(di+"/"+f)
      end
    end
  end
end

if __FILE__==$0
  
  dir_print(File.path_expand("~/working"))

end
