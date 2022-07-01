#####
# to run use:
#   $ ruby etherbears/composite.rb


require 'pixelart'


bears = ImageComposite.new( 100, 50 )   ## 100x50 = 5000


files = Dir.glob( "./etherbears/24x24/*.png" )
puts "#{files.size} file(s)"

ids = files.map { |file| File.basename(file,'.*').to_i }
ids = ids.sort
puts ids.inspect


ids.each do |id|
  puts "==> #{id}"
  img = Image.read( "./etherbears/24x24/#{id}.png")

  bears << img
end

bears.save( "./tmp/bears-24x24.png" )

puts "bye"

