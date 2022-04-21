#####
# to run use:
#   $ ruby proof-moonbirds/generate_1bit.rb


require 'pixelart'

logo = Image.read( './proof-moonbirds/36x36/moonbird-1bit-logo.png' )


moonbirds = ImageComposite.new( 3, 2,
                                width: 36, height: 36 )

moonbirds << logo
moonbirds << logo.change_colors( { '0x000000' => '0xff0000'  })
moonbirds << logo.change_colors( { '0x000000' => '0xffff00'  })
moonbirds << logo.change_colors( { '0x000000' => '0x00ff00'  })
moonbirds << logo.change_colors( { '0x000000' => '0x0000ff'  })
moonbirds << logo.change_colors( { '0x000000' => '0xffffff',
                                   '0xffffff' => '0x000000'  })


moonbirds.save( "./tmp/moonbirds-1bit.png" )
moonbirds.zoom(4).save( "./tmp/moonbirds-1bit@4x.png" )

puts "bye"

