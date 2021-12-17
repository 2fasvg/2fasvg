system("rm -rf _services && mkdir _services")
Dir.foreach("_data/services/") do |filename|
  file_extension = File.extname(filename)
  if file_extension == ".yml"
    file_no_extension = File.basename(filename, ".yml")
    file_title = file_no_extension.capitalize.split('.').first
    file_ser = file_no_extension.tr('.', '')
    puts file_ser
    File.open("_services/#{file_no_extension}.html", "w") {|f| f.write(
"---
layout: main
title: #{file_title}
description: #{file_title} Service page description
permalink: /#{file_no_extension}/
ser: #{file_ser}
---
<div class="+'"container"'+">{% include service.html %}</div>
"
)}
  end
end