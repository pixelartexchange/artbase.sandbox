#####
# to run use:
#   $ ruby proof-moonbirds/generate_0x.rb


require 'pixelart'


bodies = [
  'brave',
  'crescent',
  'emperor',
  'guardian',
  'professor',
  'sage',
  'tabby',
  'tranquil',
].map { |body| Image.read( "./proof-moonbirds/attributes/body-#{body}-red.png" ) }

beak_small  = Image.read( "./proof-moonbirds/attributes/beak-small-orange.png" )
_3d_glasses = Image.read( "./proof-moonbirds/attributes/eyewear-3d_glasses.png" )
## lincoln     = Image.read( "./proof-moonbirds/attributes/headwear-lincoln.png" )
headband     = Image.read( "./proof-moonbirds/attributes/headwear-headband.png" )


moonbirds = ImageComposite.new( 8, 3, width: 42, height: 42 )


(0..2).each do |series|
  bodies.each do |body|
    moonbird = if series == 0
                 Image.new( 42, 42 )
               else
                 Image.new( 42, 42, '#FFBF00' )   ## use golden 0x/extension background
               end

    moonbird.compose!( body )
    moonbird.compose!( beak_small )   if series == 1 || series == 2
    moonbird.compose!( _3d_glasses )  if series == 1 || series == 2
    moonbird.compose!( headband )     if series == 2

    moonbirds << moonbird
  end
end


moonbirds.save( "./tmp/moonbirds-bodies.png" )
moonbirds.zoom(3).save( "./tmp/moonbirds-bodies@3x.png" )

puts "bye"


