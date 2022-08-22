#####
# to run use:
#   $ ruby pudgypunks/composite.rb


require_relative '../artbase'



collection = 'pudgypunks'



composite = ImageComposite.new( 10, 10 )

ids = (0..99)
ids.each do |id|
  punk = Image.read( "./#{collection}/24x24/#{id}.png" )
  composite << punk.mirror
end

composite.save( "./tmp/#{collection}_left.png" )
composite.zoom(2).save( "./tmp/#{collection}_left@2x.png" )


puts "bye"

