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


###
#  try the first nine moonbirds 42x42
birds = ImageComposite.new( 3, 3, width: 42, height: 42)

ids = [0,1,2,
       3,4,5,
       6,8,9]

ids.each do |id|
  bird = Image.read( "./proof-moonbirds/42x42/#{id}.png" )
  birds << bird.transparent.ukraine
end


birds.save( "./tmp/moonbirds-ukraine.png" )
birds.zoom(4).save( "./tmp/moonbirds-ukraine@4x.png" )

puts "bye"