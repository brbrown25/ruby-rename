#!/usr/bin/ruby

require 'FileUtils'

cur = Dir.pwd
newDir = 'bak'

puts "The current directory is #{cur}"
fileList = Dir.glob("#{cur}/*")
puts "Making new directory #{cur}/#{newDir}"
Dir.mkdir(newDir)
FileUtils.cp fileList, "./#{newDir}/"
#Dir.chdir("./#{newDir}/")
puts "Original files can be found in The new directory in #{cur}/#{newDir}"
puts "Now Renaming Files in Source Directory"
fileList.each{|x| File.rename(x,x.downcase)}
