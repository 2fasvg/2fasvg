# Dir.foreach("_data/services/") do |filename|
#  puts filen =  File.basename(filename, "*")
# end

# system("cd ./_data/ && rm -rf services && mkdir services")
Dir.foreach("assets/img/logo/") do |file|
# file_extension = File.extname(file)
  if File.extname(file) == ".svg"
    new_file_name = File.basename(file, ".svg")
    new_service_name = new_file_name.capitalize.split('.').first
    File.open("_data/services/#{new_file_name}.yml", "w") {|f| f.write(
"- name: #{new_service_name}
  url: #{new_file_name}
  2fa: null
  tags: #{new_service_name}"
  )}
    end
end