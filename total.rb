puts dir = '_services'
total = Dir[File.join(dir, '**', '*')].count { |file| File.file?(file) }
File.open("_data/0count.yml", "w") {|f| f.write(
"- name: count
  total: #{total}"
  )}