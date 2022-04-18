#####
# to run use:
#   $ ruby proof-moonbirds/pixelate.rb


require_relative '../artbase'



steps  = Image.calc_sample_steps( 1008, 42 )


range = (498..999)
range.each do |id|

  puts "==> #{id}  - reading / decoding #{id} ..."
  start = Time.now

  img = Image.read( "./proof-moonbirds/token-i/#{id}.png" )

  stop = Time.now
  diff = stop - start

  puts "  in #{diff} sec(s)\n"

  if img.width == 1008 && img.height == 1008
    pix = img.pixelate( steps )

    ## todo/check: keep usingu slug e.g. 0001.png or "plain" 1.png - why? why not?
    ## slug = "%04d" % id
    pix.save( "./proof-moonbirds/42x42/#{id}.png")
  else
    puts "!! ERROR - unknown/unsupported dimension - #{img.width}x#{img.height}; sorry"
    exit 1
  end
end

puts "bye"