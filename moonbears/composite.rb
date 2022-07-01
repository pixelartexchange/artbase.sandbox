#####
# to run use:
#   $ ruby moonbears-nft/composite.rb


require 'pixelart'


bears = ImageComposite.new( 100, 40,
                            width: 34, height: 34 )   ## 1000x40 = 4000


files = Dir.glob( "./moonbears/34x34/*.png" )
puts "#{files.size} file(s)"

ids = files.map { |file| File.basename(file,'.*').to_i }
ids = ids.sort
puts ids.inspect


ids.each do |id|
  puts "==> #{id}"
  img = Image.read( "./moonbears/34x34/#{id}.png")

  bears << img
end

bears.save( "./tmp/moonbears-34x34.png" )

puts "bye"

