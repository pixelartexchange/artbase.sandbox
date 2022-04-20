#####
# to run use:
#   $ ruby proof-moonbirds/generate_fifteen.rb
#
#
#  generate fifteen new never-before-seen variants
#   for the top seller #7963 (Jade Green Legendary Emperor)

require 'pixelart'



base = Image.read( './proof-moonbirds/42x42/7963.png' )

moonbirds = ImageComposite.new( 5, 3, width: 42, height: 42 )

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
  moonbird = Image.new( 42, 42 )
  moonbird.compose!( base )
  moonbird.compose!( Image.read( "./proof-moonbirds/attributes/#{attribute}.png" ))

  moonbirds << moonbird
end


moonbirds.save( "./tmp/moonbirds-jade_green.png" )
moonbirds.zoom(4).save( "./tmp/moonbirds-jade_green@4x.png" )

puts "bye"


