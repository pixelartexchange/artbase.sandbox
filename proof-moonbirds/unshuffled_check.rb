#####
# to run use:
#   $ ruby proof-moonbirds/unshuffled_check.rb



require 'json'



def find_orig_id( data )
   # "x_debug": [
   #  "orig:9650"
   # ]
   xdebug = data['x_debug']

   if xdebug.size != 1
      puts "!! ERROR: #{data['name']} - unexpected x_debug structure in:"
      pp xdebug
      exit 1
   end

   if m=xdebug[0].strip.match( /^orig:(?<num>[0-9]+)$/ )
     num = m[:num].to_i
     return num
   else
     puts "!! ERROR: #{data['name']} - unexpected x_debug format:"
     pp xdebug
     exit 1
   end
end


def read_json( path )
  txt = File.open( path, 'r:utf-8') {|f| f.read }
  data = JSON.parse( txt )
  data
end



ids = []

(0..9999).each do |id|
   data = read_json( "./proof-moonbirds/token/#{id}.json" )

   print "."
   print " #{id} "    if id % 1000 == 0

   ids <<  find_orig_id( data )
end


ids = ids.sort
pp ids

### assert sorted ids from 0 to 9999
(0..9999).each do |id|
   if ids[id] != id
      puts "!! ERROR - expected #{id}; got #{ids[id]}"
      exit 1
   end
end


puts "bye"