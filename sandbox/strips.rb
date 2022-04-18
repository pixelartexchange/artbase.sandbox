#####
# to run use:
#   $ ruby sandbox/strips.rb


require 'pixelart'


def gen_strip( slug, offset: 0, width: 24, height: 24 )
  strip = ImageComposite.new( 9, 1, width: width, height: height )

  (offset..offset+8).each do |id|
    strip << Image.read( "./#{slug}/#{width}x#{height}/#{id}.png" )
  end
  strip
end

strip = gen_strip( "binaryapes", offset: 1 )
strip.save( "./tmp/binaryapes-strip.png" )

strip = gen_strip( "papc-punk-ape-pixel-club", offset: 1 )
strip.save( "./tmp/papc-punk-ape-pixel-club-strip.png" )

strip = gen_strip( "proof-moonbirds", width: 42, height: 42 )
strip.save( "./tmp/proof-moonbirds-strip.png" )


puts "bye"


