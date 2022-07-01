#####
# to run use:
#   $ ruby moon-hunters/composite.rb


require 'pixelart'


cheetahs = ImageComposite.new( 10, 10, width: 64, height: 64 )


(1..100).each do |id|
  puts "==> #{id}"
  cheetah = Image.read( "./moonhunters/64x64/#{id}.png")

  cheetahs << cheetah.mirror
end

cheetahs.save( "./tmp/cheetahs-64x64.png" )
cheetahs.zoom(2).save( "./tmp/cheetahs-64x64@2x.png" )
cheetahs.zoom(4).save( "./tmp/cheetahs-64x64@4x.png" )

puts "bye"

