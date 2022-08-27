#####
# to run use:
#   $ ruby pudgypenguins/composite.rb


require_relative '../artbase'



collection = 'pudgypenguins'



composite = ImageComposite.new( 10, 10, width: 28,
                                        height: 28 )

ids = (1..100)
ids.each do |id|
  punk = Image.read( "./#{collection}/28x28/#{id}.png" )
  composite << punk.mirror
end

composite.save( "./tmp/#{collection}_left.png" )
composite.zoom(2).save( "./tmp/#{collection}_left@2x.png" )


puts "bye"

