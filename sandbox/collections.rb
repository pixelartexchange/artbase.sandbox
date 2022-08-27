###
#   check-up on collections; to run use:
#  $ ruby sandbox/collections.rb

require 'cocos'   # ruby code commons (cocos)

dirs = Dir.glob('*').select {|f| File.directory?(f) }


puts "  #{dirs.size} dir(s):"
pp dirs


dirs.each do |dir|
   config_path = "#{dir}/collection.yml"
   if File.exist?( config_path )
      puts "==> #{dir}:"
      config = read_yaml( config_path )
      pp config

      token_dir = "#{dir}/token"
      if Dir.exist?( token_dir )
         count = Dir.glob( "#{token_dir}/*.json" ).length
         puts "   #{count} in /token"
      end

      format_dir = "#{dir}/#{config['format']}"
      if Dir.exist?( format_dir )
        count = Dir.glob( "#{format_dir}/*.png" ).length
        puts "   #{count} in /#{config['format']}"
     end
   end
end

puts "bye"
