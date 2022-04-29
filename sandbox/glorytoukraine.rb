#####
# to run use:
#   $ ruby sandbox/glorytoukraine.rb
#
#
#   Public Service "Stop the War" Announcement:
#
#   The world has changed forever on February 24th, 2022
#   (and it's not the blockchain, it's war in Europe!).
#   Send a fuck (vladimir) putin! stop the war! glory to ukraine! message
#    to the world with your profile picture (such as your pixel birds, apes, etc.) with the flag of ukraine  in the background.


require 'pixelart'


##
#  try top selling golden moonbirds 42x42
#    see  https://www.nft-stats.com/collection/proof-moonbirds

composite = ImageComposite.new( 6, 3, width: 42, height: 42)

birds = [5602,7789,8249,
         6610,7205,2018,
         761,7473,3047].map { |id| Image.read( "./proof-moonbirds/42x42/#{id}.png" ) }


birds.each_slice(3) do |row|
  (0..1).each do |series|
    row.each do |bird|
      bird = bird.transparent.ukraine  if series == 1
      composite << bird
    end
  end
end


composite.save( "./tmp/moonbirds-ukraine-golden.png" )
composite.zoom(4).save( "./tmp/moonbirds-ukraine-golden@4x.png" )



###
#  try the first nine moonbirds 42x42
composite = ImageComposite.new( 3, 3, width: 42, height: 42)

birds = [0,1,2,
         3,4,5,
         6,8,9].map {|id| Image.read( "./proof-moonbirds/42x42/#{id}.png" ) }

birds.each do |bird|
  composite << bird.transparent.ukraine
end


composite.save( "./tmp/moonbirds-ukraine.png" )
composite.zoom(4).save( "./tmp/moonbirds-ukraine@4x.png" )

puts "bye"
