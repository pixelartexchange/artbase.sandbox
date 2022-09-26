###
#   check-up on collections; to run use:
#  $ ruby sandbox/collections.rb

require 'cocos'   # ruby code commons (cocos)



def each_dir( glob, exclude: [], &blk )
   dirs = Dir.glob( glob ).select {|f| File.directory?(f) }

   puts "  #{dirs.size} dir(s):"
   pp dirs

   dirs.each do |dir|
      basename = File.basename( dir )
      ## check for sandbox/tmp/i/etc.  and skip
      next if exclude.include?( basename )

      blk.call( dir )
   end
end




exclude_dirs = %w[
  sandbox
  tmp
  i
]

buf = String.new('')
warns = []

## (csv) records for collections
collections = []
base_url = 'https://github.com/pixelartexchange/artbase.sandbox/raw/master'

each_dir( './*', exclude: exclude_dirs ) do |dir|

   config_path = "#{dir}/collection.yml"
   if File.exist?( config_path )

      puts "==> #{dir}:"
      config = read_yaml( config_path )
      pp config

      config_slug   = config['slug']
      config_format = config['format']
      config_count  = config['count']

      collections << [
         config_slug,
         config_format,
         config_count.to_s,
         "#{base_url}/#{File.basename(dir)}/collection.yml"
      ]

      buf << "## #{config_format}  #{config_slug} (in #{dir}) - #{config_count} max.\n\n"


      strip_path = "./i/#{config_slug}-strip.png"
      if File.exist?( strip_path )
         buf << "![](i/#{config_slug}-strip.png)\n\n"
      else
         buf << "!! preview strip missing\n\n"
         warns << "teaser / preview strip missing for collection >#{dir}<"
      end

      token_dir = "#{dir}/token"
      if Dir.exist?( token_dir )
         count = Dir.glob( "#{token_dir}/*.json" ).length
         puts "   #{count} in /token"

         if count != config_count
           buf << "!! "
         else
           buf << "OK "
         end
         buf <<   "  #{count} of #{config_count} in /token<br>\n"
      end

      format_dir = "#{dir}/#{config_format}"
      if Dir.exist?( format_dir )
        count = Dir.glob( "#{format_dir}/*.png" ).length
        puts "   #{count} in /#{config_format}"

        if count != config_count
           buf << "!! "
         else
           buf << "OK "
         end
         buf <<   "  #{count} of #{config_count} in /#{config_format}<br>\n"
      end

     ## check/add some links
     config_opensea = config['opensea']
     if config_opensea
        buf << "OK  opensea @ [#{config_opensea}](https://opensea.io/collection/#{config_opensea})<br>\n"
     else
        buf << "!! opensea @ ???<br>\n"
        warns << "opensea slug missing for collection >#{dir}<"
     end
     buf << "\n\n"

     buf << "```\n"
     buf << config.pretty_inspect
     buf << "```\n\n"

   else
      puts "!! WARN - no config found for dir >#{dir}<"
      warns << "no config found for dir >#{dir}<"
   end
end


puts buf
write_text( "./COLLECTIONS.md", buf )

puts
puts "  #{warns.size} warning(s):"
pp warns

puts "  #{collections.size} collection(s):"
pp collections


##
# note sort by format  smaller first e.g. 24x24 to 100x100 etc.

def parse_px( str )
  str.scan( /\d+/ )[0].to_i
end

collections = collections.sort do |l,r|
                                  l_px = parse_px( l[1] )
                                  r_px = parse_px( r[1] )
                                  res  = l_px <=> r_px
                                  res  = l[0] <=> r[0]  if res == 0
                                  res
                              end

puts
collections.each do |values|
   puts values.join( ', ' )
end


puts "bye"
