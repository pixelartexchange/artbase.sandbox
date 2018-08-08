# encoding: utf-8

## check/use class or module ???


class CsvUtils

  def self.cut( inpath, outpath, *columns, sep: ',' )

    puts "cvscut in: >#{inpath}<  out: >#{outpath}<"

    ##  ["Date", "HomeTeam", "AwayTeam", "FTHG", "FTAG", "HTHG", "HTAG"]
    puts "columns:"
    pp columns

    text = File.open( inpath, 'r:utf-8' ).read   ## note: make sure to use (assume) utf-8

    csv_options = { headers: true,
                    col_sep: sep }

    table = CSV.parse( text, csv_options )


    ## for convenience - make sure parent folders/directories exist
    FileUtils.mkdir_p( File.dirname( outpath ))  unless Dir.exists?( File.dirname( outpath ))

    ## use wb mode - why? why not?
    ##   assumes same encoding as input?
    ##   fix/todo: better (always) use utf8!!!!
    ## CSV.open( out_path, 'wb' ) do |out|

    ## use just "regular" File for output - why? why not?
    ##    downside will not encode comma (for now) if present ("Beethoven, van")
    ##      all values will be unquoted etc. - keep it simple?

    CSV.open( outpath, 'w:utf-8' ) do |out|
      out << columns   ## for row add headers/columns
      table.each do |row|
        values = columns.map { |col| row[col].strip }  ## find data for column
        out << values
      end
    end

    puts 'Done.'
  end  ## method self.cut

end # class CsvUtils
