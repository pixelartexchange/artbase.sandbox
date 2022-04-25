#####
# to run use:
#   $ ruby starbirds/composite.rb


require 'pixelart'


starbirds = ImageComposite.new( 100, 30,
                                width: 42, height: 42 )   ## 100x30 = 3000


files = Dir.glob( "./starbirds/42x42/*.png" )
puts "#{files.size} file(s)"

ids = files.map { |file| File.basename(file,'.*').to_i }
ids = ids.sort
puts ids.inspect


ids.each do |id|
  puts "==> #{id}"
  img = Image.read( "./starbirds/42x42/#{id}.png")

  starbirds << img
end

starbirds.save( "./tmp/starbirds-42x42.png" )

puts "bye"

