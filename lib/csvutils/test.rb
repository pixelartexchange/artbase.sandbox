# encoding: utf-8


class CsvUtils

  ## test or dry run to check if rows can get read/scanned
  def self.test( path, sep: ',' )
    i = 0
    csv_options = { headers: true,
                    col_sep: sep,
                    external_encoding: 'utf-8'  ## note:  always (auto-)add utf-8 external encoding!!!
                   }

    CSV.foreach( path, csv_options ) do |row|
      i += 1
      print '.' if i % 100 == 0
    end

    puts " #{i} rows"
  end

end  # class CsvUtils
