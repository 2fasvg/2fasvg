# create folder and move svg file in it
Dir.foreach("assets/img/logo/") do |filename|
  file_extension = File.extname(filename)
  if file_extension == ".svg"
    file_no_extension = File.basename(filename, ".svg")
    file_title = file_no_extension.split(' ', 2).first
    # creating folder
    curent_path = "/assets/img/logo/"
    system("cd .#{curent_path} && rm -r #{file_title}")
    system("cd .#{curent_path} && mkdir #{file_title}")
    # move file
    system("cd .#{curent_path} && mv #{filename} #{file_title}/#{filename}")
  end
end