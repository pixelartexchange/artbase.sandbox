#####
# to run use:
#   $ ruby moonbirdpunks/composite.rb


require 'pixelart'


punks = ImageComposite.new( 50, 50,
                            width: 50, height: 50 )   ## 50x50 = 2500


files = Dir.glob( "./moonbirdpunks/50x50/*.png" )
puts "#{files.size} file(s)"

ids = files.map { |file| File.basename(file,'.*').to_i }
ids = ids.sort
puts ids.inspect


ids.each do |id|
  puts "==> #{id}"
  img = Image.read( "./moonbirdpunks/50x50/#{id}.png")

  punks << img
end

punks.save( "./tmp/moonbirdpunks-50x50.png" )

puts "bye"

