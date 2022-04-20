#####
# to run use:
#   $ ruby sandbox/generate_100.rb


require 'pixelart'


def gen_composite( slug,
                   offset: 0,
                   width: 24, height: 24,
                   transparent: false, mirror: false )

  # use a 10x10 grid for a hundred (100) items
  composite = ImageComposite.new( 10, 10, width: width, height: height )

  (offset..offset+99).each do |id|
    tile = Image.read( "./#{slug}/#{width}x#{height}/#{id}.png" )
    tile = tile.transparent  if transparent
    tile = tile.mirror       if mirror
    composite << tile
  end
  composite
end






composite = gen_composite( "moonbirdpunks",  width: 50, height: 50,
                                             mirror: true )
composite.save( "./tmp/moonbirdpunks-50x50.png" )


puts "bye"


