# encoding: utf-8


class CsvUtils

  def self.header( path, sep: ',', debug: false )   ## use header or headers - or use both (with alias)?

    # read first line (only)
    #  and parse with csv to get header from csv library itself
    #
    #  check - if there's an easier or built-in way for the csv library

    line = File.open( path, 'r:utf-8' ) { |f| f.readline }

    pp line   if debug
    ## e.g.:
    #  "Country,League,Season,Date,Time,Home,Away,HG,AG,Res,PH,PD,PA,MaxH,MaxD,MaxA,AvgH,AvgD,AvgA\n"

    csv_options = {  col_sep: sep }

    ## note: do NOT use headers: true to get "plain" data array (no hash records)
    ##   hash record does NOT work for single line/row
    rows = CSV.parse( line, csv_options )
    pp rows   if debug
    rows[0]   ## return first row
  end  # method self.header

end  # class CsvUtils
