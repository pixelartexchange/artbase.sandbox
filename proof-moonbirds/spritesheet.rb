#####
# to run use:
#   $ ruby proof-moonbirds/spritesheet.rb

require 'pixelart'




spritesheet = ImageComposite.new( 5, 3, width: 42, height: 42 )

['eyewear-3d_glasses',
 'eyewear-eyepatch',
 'eyewear-gazelles',
 'eyewear-jobs_glasses',
 'eyewear-rose-colored_glasses',
 'eyewear-sunglasses',
 'eyewear-visor',
 'headwear-bow',
 'headwear-cowboy_hat',
 'headwear-flowers',
 'headwear-lincoln',
 'headwear-moon_hat',
 'outerwear-hoodie',
 'outerwear-hoodie_down',
 'outerwear-punk_jacket',
].each do |attribute|
  spritesheet << Image.read( "./proof-moonbirds/attributes/#{attribute}.png" )
end


spritesheet.save( "./tmp/moonbirds-spritesheet.png" )
spritesheet.zoom(4).save( "./tmp/moonbirds-spritesheet@4x.png" )

puts "bye"

