# create folder and move svg file in it and convert to png and pdf
Dir.foreach("assets/img/logo/") do |filename|
  file_extension = File.extname(filename)
  file_no_extension = File.basename(filename, ".svg")
  curent_path = "/assets/img/logo/"
  curent_path_folder = curent_path+file_no_extension
  if file_extension == ".svg"
    folder_title = file_no_extension.split(' ', 2).first
    puts folder_title
    # creating folder
    # system("cd .#{curent_path} && rm -r #{folder_title}")
    system("cd .#{curent_path} && mkdir #{folder_title}")
    # move file
    system("cd .#{curent_path} && mv #{filename} #{folder_title}/#{filename}")
    # convert svg to png and pdf
    system("cd .#{curent_path_folder} && rsvg-convert -w 1024 #{filename} > #{file_no_extension}.png && rsvg-convert -f pdf -o #{file_no_extension}.pdf #{filename}")
  end
end