require 'pixelart'


names = %w[
  alien
  solid_gold
  trippy
  noise
  death_bot

  dmt
  bot
  zombie
  white
  cheetah

  red
  blue
  gray
  pink
  tan

  cream
  golden_brown
  black
  dark_brown
  brown
]



apes = ImageComposite.new( 5, 4, background: '#638596' )

names.each do |name|
   ape = Image.read( "./attributes/#{name}.png" )
   apes << ape.mirror
end

apes.save( "./tmp/apes.png" )
apes.zoom(4).save( "./tmp/apes@4x.png" )
apes.zoom(8).save( "./tmp/apes@8x.png" )


puts "bye"