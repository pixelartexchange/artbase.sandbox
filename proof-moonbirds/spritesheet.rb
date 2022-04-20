#####
# to run use:
#   $ ruby proof-moonbirds/spritesheet.rb

require 'pixelart'




spritesheet = ImageComposite.new( 10, 5, width: 42, height: 42 )

['eyewear-3d_glasses',
 'eyewear-black-rimmed_glasses',
 'eyewear-eyepatch',
 'eyewear-gazelles',
 'eyewear-jobs_glasses',
 'eyewear-rose-colored_glasses',
 'eyewear-sunglasses',
 'eyewear-visor',
 'headwear-aviators_cap',
 'headwear-backwards_hat',
 'headwear-bandana',
 'headwear-beanie',
 'headwear-bow',
 'headwear-bucket_hat',
 'headwear-captains_cap',
 'headwear-chromie',
 'headwear-cowboy_hat',
 'headwear-crescent_talisman',
 'headwear-dancing_flame',
 'headwear-diamond',
 'headwear-durag',
 'headwear-fire',
 'headwear-flowers',
 'headwear-forest_ranger',
 'headwear-grail',
 'headwear-gremplin',
 'headwear-halo',
 'headwear-headband',
 'headwear-headphones',
 'headwear-heros_cap',
 'headwear-karate_band',
 'headwear-lincoln',
 'headwear-mohawk_green',
 'headwear-mohawk_pink',
 'headwear-moon_hat',
 'headwear-pirates_hat',
 'headwear-queens_crown',
 'headwear-raincloud',
 'headwear-rubber_duck',
 'headwear-skully',
 'headwear-tiara',
 'headwear-tiny_crown',
 'headwear-witchs_hat',
 'headwear-wizards_hat',
 'outerwear-hoodie',
 'outerwear-hoodie_down',
 'outerwear-punk_jacket',
].each do |attribute|
  spritesheet << Image.read( "./proof-moonbirds/attributes/#{attribute}.png" )
end


spritesheet.save( "./tmp/moonbirds-spritesheet.png" )
spritesheet.zoom(4).save( "./tmp/moonbirds-spritesheet@4x.png" )

puts "bye"

