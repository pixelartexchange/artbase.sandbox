# encoding: utf-8


class CsvTool

## command line tools
def self.cut( args )

  config = { columns: [] }

  parser = OptionParser.new do |opts|
     opts.banner = "Usage: csvcut [OPTS] source dest"

     opts.on("-c", "--columns=COLUMNS", "Name of header columns" ) do |columns|
       config[:columns] = columns.split(/[,|;]/)   ## allow differnt separators
     end

     opts.on("-h", "--help", "Prints this help") do
       puts opts
       exit
     end
  end

  parser.parse!( args )

  ## pp config
  ## pp args

  source = arg[0]
  dest   = arg[1]

  unless arg[0] && arg[1]
    puts "** error: arg(s) missing - source and dest filepath required!!! - #{args.inspect}"
    exit 1
  end

  columns = config[:columns]

  CsvUtils.cut( source, dest, *columns )
end


end # class CsvTool
