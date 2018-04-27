afile = File.open("thor.srt", "r+")
afile.each do |lines|
    numeric_value = lines.match(/\d{2}:\d{2}:\d{2},\d{3}/)
  puts numeric_value
    end