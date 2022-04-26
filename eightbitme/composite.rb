#####
# to run use:
#   $ ruby eightbitme/composite.rb


require 'pixelart'


bits = ImageComposite.new( 100, 89 )   ## 100x89 = 8900


files = Dir.glob( "./eightbitme/24x24/*.png" )
puts "#{files.size} file(s)"

ids = files.map { |file| File.basename(file,'.*').to_i }
ids = ids.sort
puts ids.inspect


ids.each do |id|
  puts "==> #{id}"
  img = Image.read( "./eightbitme/24x24/#{id}.png")

  bits << img
end

bits.save( "./tmp/8bits-24x24.png" )

puts "bye"

