#####
# to run use:
#   $ ruby proof-moonbirds/composite.rb


require 'pixelart'


moonbirds = ImageComposite.new( 100, 100,
                                width: 42, height: 42 )   ## 100x100 = 10000


files = Dir.glob( "./proof-moonbirds/42x42/*.png" )
puts "#{files.size} file(s)"

ids = files.map { |file| File.basename(file,'.*').to_i }
ids = ids.sort
puts ids.inspect


ids.each do |id|
  puts "==> #{id}"
  img = Image.read( "./proof-moonbirds/42x42/#{id}.png")

  moonbirds << img
end

moonbirds.save( "./tmp/moonbirds-42x42.png" )

puts "bye"

