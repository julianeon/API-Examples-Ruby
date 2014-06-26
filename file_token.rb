argument=ARGV[0]
puts "ARGUMENT #{argument}"
file=File.readlines(argument)
file = file.map {|s| s.gsub(/CHANGE_THIS/,'CHANGE_THIS')}
newfile=File.open(argument,'w')
newfile.puts file
newfile.close


