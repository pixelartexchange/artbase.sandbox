#####
# to run use:
#   $ ruby starbirds/spritesheet.rb

require 'pixelart'




spritesheet = ImageComposite.new( 6, 5, width: 42, height: 42 )


[
  'clothes-blue_hoodie',
  'clothes-blue_scarf',
  'clothes-blue_shirt',
  'clothes-green',
  'clothes-green_hoodie',
  'clothes-green_scarf',
  'clothes-orange',
  'clothes-red',
  'clothes-red_scarf',
  'clothes-tee',
  'eyes-aviators',
  'eyes-chill',
  'eyes-green_shades',
  'eyes-neon_shades',
  'eyes-rainbow_shades',
  'eyes-red_shades',
  'eyes-round_glasses',
  'eyes-sunset_shades',
  'eyes-vipers',
  'head-black_red',
  'head-blue_bucket',
  'head-cowboy',
  'head-crown',
  'head-gold',
  'head-gray_hat',
  'head-red_bucket',
  'head-star',
  'head-white_bucket_hat',
].each do |attribute|
  spritesheet << Image.read( "./starbirds/attributes/#{attribute}.png" )
end


spritesheet.save( "./tmp/starbirds-spritesheet.png" )
spritesheet.zoom(4).save( "./tmp/starbirds-spritesheet@4x.png" )

puts "bye"

