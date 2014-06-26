files_directory=Dir.entries(".")
files_directory.each do |fname|
  if fname.match(/rb$/)
    puts "ARGUMENT #{fname}"
    file=File.readlines(fname)
    file = file.map {|s| s.gsub(/CHANGE_THIS/, 'CHANGE_THIS')}
    file = file.map {|s| s.gsub(/CHANGE_THIS/, 'CHANGE_THIS')}
    file = file.map {|s| s.gsub(/CHANGE_THIS/, 'CHANGE_THIS')}
    newfile=File.open(fname,'w')
    newfile.puts file
    newfile.close
  end
end


