# encoding: utf-8


class CsvUtils

  ## test or dry run to check if rows can get read/scanned
  def self.head( path, sep: ',', n: 4 )
    i = 0
    csv_options = { headers: true,
                    col_sep: sep,
                    external_encoding: 'utf-8'  ## note:  always (auto-)add utf-8 external encoding!!!
                   }

    CSV.foreach( path, csv_options ) do |row|
      i += 1

      pp row

      break if i >= n
    end

    puts " #{i} rows"
  end

end  # class CsvUtils
