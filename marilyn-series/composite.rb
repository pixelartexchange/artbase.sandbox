#####
# to run use:
#   $ ruby marilyn-series/composite.rb


require 'pixelart'


marilyns = ImageComposite.new( 4, 4, width: 20, height: 20 )   ## 4x4 = 16


files = Dir.glob( "./marilyn-series/20x20/*.png" )
puts "#{files.size} file(s)"

ids = files.map { |file| File.basename(file,'.*').to_i }
ids = ids.sort
puts ids.inspect


ids.each do |id|
  puts "==> #{id}"
  img = Image.read( "./marilyn-series/20x20/#{id}.png")

  marilyns << img
end

marilyns.save( "./tmp/marilyns-20x20.png" )
marilyns.zoom(8).save( "./tmp/marilyns-20x20@8x.png" )

puts "bye"

