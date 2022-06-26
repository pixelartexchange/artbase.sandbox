#####
# to run use:
#   $ ruby babymoonrunners/composite.rb


require 'pixelart'


wolfs = ImageComposite.new( 10, 10, width: 50, height: 50 )


(1..100).each do |id|
  puts "==> #{id}"
  wolf = Image.read( "./babymoonrunners/100x100/#{id}.png")
  ## note: crop (cut off top 50px, and 25px left/right)

  wolfs << wolf.crop( 25, 50, 50, 50 ).mirror
end

wolfs.save( "./tmp/babymoonrunners-50x50.png" )
wolfs.zoom(2).save( "./tmp/babymoonrunners-50x50@2x.png" )
wolfs.zoom(4).save( "./tmp/babymoonrunners-50x50@4x.png" )

puts "bye"

