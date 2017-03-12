require "rake"

desc "Bump Patch"
task :bump_patch do
  current_version_file = IO.read("VERSION")
  new_version = nil
  new_version_file = current_version_file.sub(/^(\d+\.\d+\.)(\d+)/) do
    "#{$1}#{$2.to_i + 1}"
  end
  IO.write("VERSION", new_version_file)
end
