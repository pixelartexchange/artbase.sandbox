#####
# to run use:
#   $ ruby sandbox/generate_1000.rb


require 'pixelart'


def gen_composite( slug,
                   offset: 0,
                   width: 24, height: 24,
                   transparent: false, mirror: false )

  # use a 25x40 grid for a thousand (1000) items
  composite = ImageComposite.new( 25, 40, width: width, height: height )

  (offset..offset+999).each do |id|
    tile = Image.read( "./#{slug}/#{width}x#{height}/#{id}.png" )
    tile = tile.transparent  if transparent
    tile = tile.mirror       if mirror
    composite << tile
  end
  composite
end






composite = gen_composite( "binaryapes", offset: 1,
                                         transparent: true,
                                         mirror: true )
composite.save( "./tmp/binaryapes-24x24.png" )



composite = gen_composite( "proof-moonbirds", width: 42, height: 42,
                                              mirror: true )
composite.save( "./tmp/proof-moonbirds-42x42.png" )



puts "bye"


