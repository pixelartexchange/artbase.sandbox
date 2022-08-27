###
#   check-up on collections; to run use:
#  $ ruby sandbox/collections.rb

require 'cocos'   # ruby code commons (cocos)

dirs = Dir.glob('*').select {|f| File.directory?(f) }


puts "  #{dirs.size} dir(s):"
pp dirs


buf = String.new('')


dirs.each do |dir|
   config_path = "#{dir}/collection.yml"
   if File.exist?( config_path )

      buf << "## /#{dir}\n\n"

      puts "==> #{dir}:"
      config = read_yaml( config_path )
      pp config

      buf << "```\n"
      buf << config.pretty_inspect
      buf << "```\n\n"

      config_format = config['format']
      config_count  = config['count']

      token_dir = "#{dir}/token"
      if Dir.exist?( token_dir )
         count = Dir.glob( "#{token_dir}/*.json" ).length
         puts "   #{count} in /token"

         if count != config_count
           buf << "!! "
         else
           buf << "OK "
         end
         buf <<   "  #{count} in /token<br>\n"
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
         buf <<   "  #{count} in /#{config_format}<br>\n"
      end

     ## check/add some links
     config_opensea = config['opensea']
     if config_opensea
        buf << "OK  opensea @ [#{config_opensea}](https://opensea.io/collection/#{config_opensea})<br>\n"
     else
        buf << "!! opensea @ ???<br>\n"
     end

     buf << "\n\n"
   end
end


puts buf
write_text( "./COLLECTIONS.md", buf )


puts "bye"
