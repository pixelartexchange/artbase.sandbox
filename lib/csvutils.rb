# encoding: utf-8

require 'pp'
require 'csv'
require 'date'
require 'fileutils'
require 'optparse'



###
# our own code
require 'csvutils/version' # let version always go first
require 'csvutils/utils'
require 'csvutils/split'
require 'csvutils/cut'
require 'csvutils/test'
require 'csvutils/stat'
require 'csvutils/header'
require 'csvutils/head'




class CsvTool

## command line tools
def self.header( args )

  config = {}

  parser = OptionParser.new do |opts|
     opts.banner = "Usage: csvheader [OPTS] datafile ..."

     opts.on("-h", "--help", "Prints this help") do
       puts opts
       exit
     end
  end

  parser.parse!( args )

  ## pp config
  ## pp args

  args.each do |arg|
    path = arg

    puts "== #{File.basename(path)} (#{File.dirname(path)}) =="
    puts
    CsvUtils.pp_header( CsvUtils.header( path ) )
    puts
  end # each arg
end


def self.stat( args )

  config = { columns: [] }

  parser = OptionParser.new do |opts|
     opts.banner = "Usage: csvstat [OPTS] datafile ..."

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

  args.each do |arg|
    path = arg
    columns = config[:columns]

    puts "== #{File.basename(path)} (#{File.dirname(path)}) =="
    puts
    CsvUtils.stat( path, *columns )
    puts
  end # each arg
end


def self.head( args )

  config = { n: 4 }

  parser = OptionParser.new do |opts|
     opts.banner = "Usage: csvhead [OPTS] datafile ..."

     opts.on("-n", "--num=NUM", "Number of rows" ) do |num|
       config[:n] = num.to_i
     end

     opts.on("-h", "--help", "Prints this help") do
       puts opts
       exit
     end
  end

  parser.parse!( args )

  ## pp config
  ## pp args

  args.each do |arg|
    path = arg
    n = config[:n]

    puts "== #{File.basename(path)} (#{File.dirname(path)}) =="
    puts
    CsvUtils.head( path, n: n )
    puts
  end # each arg
end


end # class CsvTool


puts CsvUtils.banner   # say hello
