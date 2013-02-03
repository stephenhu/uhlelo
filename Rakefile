require "erb"
require "highline/import"

task :default => :help

desc "help"
task :help do

  puts "rake"
  puts "  config"

end

desc "configuration"
task :config do

  client_id     = ask("client_id: ")
  client_secret = ask("client_secret: ")

  config    = ERB.new(File.read("./conf/config.yaml.erb"))
  contents  = config.result(binding)

  file = File.open( "./conf/config.yaml", "w" )
  file.write(contents)
  file.close
  
end

