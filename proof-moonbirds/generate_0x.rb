#####
# to run use:
#   $ ruby proof-moonbirds/generate_0x.rb


require 'pixelart'


bodies_red = [
  'brave',
  'crescent',
  'emperor',
  'guardian',
  'professor',
  'sage',
  'tabby',
  'tranquil',
].map { |body| Image.read( "./proof-moonbirds/attributes/body-#{body}-red.png" ) }


bodies_brown = [
 'brave',
 'crescent',
 'emperor',
 'guardian',
 'sage',
  'stark',
  'tabby',
  'tranquil',
].map { |body| Image.read( "./proof-moonbirds/attributes/body-#{body}-brown.png" ) }



beak_small  = Image.read( "./proof-moonbirds/attributes/beak-small-orange.png" )

_3d_glasses = Image.read( "./proof-moonbirds/attributes/eyewear-3d_glasses.png" )
rose_colored_glasses = Image.read( "./proof-moonbirds/attributes/eyewear-rose-colored_glasses.png" )
gazelles    = Image.read( "./proof-moonbirds/attributes/eyewear-gazelles.png" )

## lincoln     = Image.read( "./proof-moonbirds/attributes/headwear-lincoln.png" )
headband     = Image.read( "./proof-moonbirds/attributes/headwear-headband.png" )
## wizards_hat  = Image.read( "./proof-moonbirds/attributes/headwear-wizards_hat.png" )
flowers     = Image.read( "./proof-moonbirds/attributes/headwear-flowers.png" )
bandana     = Image.read( "./proof-moonbirds/attributes/headwear-bandana.png" )

moonbirds = ImageComposite.new( 8, 3, width: 42, height: 42 )


(0..2).each do |series|
  bodies_red.each do |body|
    background = if series == 0
                     0 # use (default) transparent
                else
                     '#FFBF00'  # use golden 0x/extension background
                 end

    moonbird = Image.new( 42, 42, background )

    moonbird.compose!( body )
    moonbird.compose!( beak_small )   if series == 1 || series == 2
    moonbird.compose!( _3d_glasses )  if series == 1 || series == 2
    moonbird.compose!( headband )     if series == 2

    moonbirds << moonbird
  end
end


moonbirds.save( "./tmp/moonbirds-bodies.png" )
moonbirds.zoom(3).save( "./tmp/moonbirds-bodies@3x.png" )




moonbirds = ImageComposite.new( 8, 4, width: 42, height: 42 )

(0..3).each do |series|
  bodies_brown.each do |body|
    background = if series == 0
                    0 # use (default) transparent
                 else
                     '#FFBF00'  # use golden 0x/extension background
                 end

    moonbird = Image.new( 42, 42, background )

    moonbird.compose!( body )
    moonbird.compose!( beak_small )            if series != 0
    moonbird.compose!( rose_colored_glasses )  if series == 1 || series == 2
    moonbird.compose!( flowers )               if series == 2
    moonbird.compose!( gazelles )              if series == 3
    moonbird.compose!( bandana )               if series == 3

    moonbirds << moonbird
  end
end


moonbirds.save( "./tmp/moonbirds-bodies_brown.png" )
moonbirds.zoom(3).save( "./tmp/moonbirds-bodies_brown@3x.png" )


puts "bye"


