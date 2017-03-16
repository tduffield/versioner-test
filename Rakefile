require "rake"

task :update do
  version = File.read("VERSION").chomp
  contents = <<-VERSION_RB
class Version
  VERSION = "#{version}"
end
  VERSION_RB
  IO.write("lib/version.rb", contents)
end
