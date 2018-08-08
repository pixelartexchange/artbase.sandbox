# encoding: utf-8


class CsvUtils

  def self.pp_header( headers )  ## check: rename to print_headers or prettyprint_header - why? why not?
    puts "#{headers.size} columns:"
    headers.each_with_index do |header,i|
      puts "  #{i+1}: #{header}"
    end
  end

end  # class CsvUtils
