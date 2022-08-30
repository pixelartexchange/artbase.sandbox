#####
# to run use:
#   $ ruby unfudables/composite.rb


require_relative '../artbase'



collection = 'unfudables'



composite = ImageComposite.new( 10, 10 )

ids = (1..100)
ids.each do |id|
  punk = Image.read( "./#{collection}/24x24/#{id}.png" )
  composite << punk.mirror
end

composite.save( "./tmp/#{collection}_left.png" )
composite.zoom(2).save( "./tmp/#{collection}_left@2x.png" )


puts "bye"

