########################
#  to run use:
#    $ ruby galacticaliensocialclub/composite.rb

require 'pixelart'


collection = 'galacticaliensocialclub'

aliens = ImageComposite.new( 9, 4, width: 28,
                                   height: 28 )


ids= (1..9)
ids.each do |id|
   alien = Image.read( "./#{collection}/28x28/#{id}.png")
   aliens << alien.mirror
end

ids = (10..18)
ids.each do |id|
  alien = Image.read( "./#{collection}/28x28/#{id}.png")
  alien = alien.change_colors( { '#7AA85B' => '#C8FBFB' })
  aliens << alien.mirror
end

ids= (19..27)
ids.each do |id|
   alien = Image.read( "./#{collection}/28x28/#{id}.png")
   aliens << alien.mirror
end

ids = (28..36)
ids.each do |id|
  alien = Image.read( "./#{collection}/28x28/#{id}.png")
  alien = alien.change_colors( { '#7AA85B' => '#C8FBFB' })
  aliens << alien.mirror
end


aliens.save( "./tmp/galatic.png" )
aliens.zoom(2).save( "./tmp/galatic@2x.png" )
aliens.zoom(4).save( "./tmp/galatic@4x.png" )


puts "bye"