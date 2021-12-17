Dir.foreach("assets/img/logo/") do |file|
  path = "/assets/img/logo/#{file}"
  # puts path
  system("cd .#{path}/ && rsvg-convert -w 1024 #{file}.svg > #{file}.png")
  system("cd .#{path}/ && rsvg-convert -f pdf -o #{file}.pdf #{file}.svg")
  system("cd ./assets/img/ && rm -rf ...pdf && rm -rf ...png && rm -rf .DS_Store")
  system("cd ./assets/img/logo/ && rm -rf ..pdf && rm -rf ..png")
end