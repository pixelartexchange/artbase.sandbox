###
#   check-up on collections; to run use:
#  $ ruby sandbox/collections.rb

require 'cocos'   # ruby code commons (cocos)


exclude_dirs = %w[
  sandbox
  tmp
  i
]


dirs = Dir.glob('./*').select {|f| File.directory?(f) }


puts "  #{dirs.size} dir(s):"
pp dirs


buf = String.new('')
warns = []


dirs.each do |dir|
   basename = File.basename( dir )

   ## check for sandbox/tmp/i/etc.  and skip
   next if exclude_dirs.include?( basename )


   config_path = "#{dir}/collection.yml"
   if File.exist?( config_path )


      puts "==> #{dir}:"
      config = read_yaml( config_path )
      pp config

      config_slug   = config['slug']
      config_format = config['format']
      config_count  = config['count']

      buf << "## #{config_format}  #{config_slug} (in #{dir}) - #{config_count} max.\n\n"


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

puts "bye"
