module  MyFileModule
  def create_file(path)
    afile=File.open(path,'w')

    afile.close
  end
  def edit_file(path,content)
    afile=File.open(path,'a+'){|f| f.write(content)}

end

  def del_file(path)
    afile=File.delete(path)


  end
end


class FirstFile
  include MyFileModule

  file=FirstFile.new
  file.create_file('/home/sulav/Desktop/myfile')
  file.edit_file('/home/sulav/Desktop/myfile',"I was not here")
  #file.del_file('/home/sulav/Desktop/myfile')
end