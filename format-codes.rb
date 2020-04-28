#
# The File format-codes.rb
# ruby format-codes.rb
#EXTENSIONS = %w[cxx cpp hpp cu c h]
EXTENSIONS = %w[hxx cxx]
EXTENSIONS.each do |ext|
    puts "ext = #{ext}"
    `clang-format -style=file -i $(find . -name "*.#{ext}")`
end

`cmake-format -c .cmake-format.yml -i $(find . -name "CMakeLists.txt")`
#`cmake-format -c .cmake-format.yml -i $(find . -name "*.cmake")`
#