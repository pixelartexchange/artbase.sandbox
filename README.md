# csvutils - tools 'n' scripts for working with comma-separated values (csv) datafiles - the world's most popular tabular date interchange format in text


* home  :: [github.com/csv11/csvutils](https://github.com/csv11/csvutils)
* bugs  :: [github.com/csv11/csvutils/issues](https://github.com/csv11/csvutils/issues)
* gem   :: [rubygems.org/gems/csvutils](https://rubygems.org/gems/csvutils)
* rdoc  :: [rubydoc.info/gems/csvutils](http://rubydoc.info/gems/csvutils)
* forum :: [wwwmake](http://groups.google.com/group/wwwmake)



## Usage

### Command Line Tools

`csvhead`  •  `csvheader`  •  `csvstat`  •  `csvsplit`  •  `csvcut`


Try:

```
$ csvhead -h          # or
$ csvhead --help
```

resulting in:

```
Usage: csvhead [OPTS] datafile ...
    -n, --num=NUM                    Number of rows
    -h, --help                       Prints this help
```

and so on. Now try with `csvheader -h`, `csvstat -h`, `csvsplit -h`,
`csvcut -h` and so on.



#### Working with Comma-Separated Values (CSV) Datafile Examples

Let's use a sample datafile e.g. `E0.csv` from the [football.csv project]() with
matches from the English Premier League. Try

```
$ csvhead E0.csv
```
to pretty print (pp) the first four row (use the `-n` option for more or less rows).
Resulting in:

```
== E0.csv (.) ==

#<CSV::Row "Date":nil "HomeTeam":"Arsenal" "AwayTeam":"Leicester" "FTHG":"4" "FTAG":"3" "HTHG":"2" "HTAG":"2">
#<CSV::Row "Date":nil "HomeTeam":"Brighton" "AwayTeam":"Man City" "FTHG":"0" "FTAG":"2" "HTHG":"?" "HTAG":"?">
#<CSV::Row "Date":"12/08/17" "HomeTeam":"Chelsea" "AwayTeam":"Burnley" "FTHG":"2" "FTAG":"3" "HTHG":"?" "HTAG":"?">
#<CSV::Row "Date":"-" "HomeTeam":"Crystal Palace" "AwayTeam":"Huddersfield" "FTHG":"0" "FTAG":"3" "HTHG":"0" "HTAG":"2">

 4 rows
```

Next try

```
$ csvheader E0.csv
```

to print all header columns (the first row). Resulting in:

```
== E0.csv (.) ==

7 columns:
  1: Date
  2: HomeTeam
  3: AwayTeam
  4: FTHG
  5: FTAG
  6: HTHG
  7: HTAG
```

Next try:

```
$ csvstat -c HomeTeam,AwayTeam E0.csv
```

to show all unique values for the columns `HomeTeam` and `AwayTeam`.
Resulting in:

```
== E0.csv (.) ==

... 380 rows

7 columns:
  1: Date
  2: HomeTeam
  3: AwayTeam
  4: FTHG
  5: FTAG
  6: HTHG
  7: HTAG

 column >HomeTeam< 21 unique values:
   1 x  <nil>
   19 x  Arsenal
   18 x  Bournemouth
   19 x  Brighton
   19 x  Burnley
   19 x  Chelsea
   19 x  Crystal Palace
   19 x  Everton
   19 x  Huddersfield
   19 x  Leicester
   19 x  Liverpool
   19 x  Man City
   19 x  Man United
   19 x  Newcastle
   19 x  Southampton
   19 x  Stoke
   19 x  Swansea
   19 x  Tottenham
   19 x  Watford
   19 x  West Brom
   19 x  West Ham
 column >AwayTeam< 21 unique values:
   1 x  ?
   19 x  Arsenal
   19 x  Bournemouth
   19 x  Brighton
   19 x  Burnley
   19 x  Chelsea
   19 x  Crystal Palace
   19 x  Everton
   19 x  Huddersfield
   19 x  Leicester
   19 x  Liverpool
   19 x  Man City
   19 x  Man United
   19 x  Newcastle
   19 x  Southampton
   19 x  Stoke
   19 x  Swansea
   19 x  Tottenham
   18 x  Watford
   19 x  West Brom
   19 x  West Ham
```


#### Split & Cut - Split One Datafile into Many or Cut / Reorder Columns

Let's use another sample datafile e.g. `AUT.csv` that holds many seasons
from the Austrian (AUT) Bundesliga. First lets see how many seasons:

```
$ csvstat -c Season AUT.csv
```

Resulting in:

```
== AUT.csv (.) ==

... 362 rows

7 columns:
  1: Season
  2: Date
  3: Time
  4: Home
  5: Away
  6: HG
  7: AG

 column >Season< 2 unique values:
   180 x  2016/2017
   182 x  2017/2018
```

Now let's split the `AUT.csv` datafile by the `Season` column
resulting in two new datafiles named `AUT_2016-2017.csv`
and `ÀUT_2017-2018.csv`. Try:

```
$ csvsplit -c Season AUT.csv
```

Resulting in:

```
new chunk: ["2016/2017"]
  saving >AUT_2016-2017.csv<...
new chunk: ["2017/2018"]
  saving >AUT_2017-2018.csv<...
```

Let's cut out (remove) the `Season` and `Time` column from the new `AUT_2016-2017.csv`
datafile. Try:

```
$ csvcut -c Date,Home,Away,HG,AG AUT_2016-2017.csv
```

Double check the overwritten cleaned-up datafile:

```
$ csvhead AUT_2016-2017.csv
```

resulting in:

```

```

And so on and so forth.




### Code, Code, Code - Script Your Data Work Flow with Ruby

You can use all tools in your script using the `CsvUtils`
class methods:

| Shell       | Ruby                              |
|-------------|-----------------------------------|
| `csvhead`   |  `CsvUtils.head( path, n: 4 )`    |
| `csvheader` |  `CsvUtils.header( path )`        |
| `csvstat`   |  `CsvUtils.stat( path, *columns )`  |
| `csvsplit`  |  `CsvUtils.split( path, *columns )` |
| `csvcut`    |  `CsvUtils.cut( path, *columns, output: path)`   |



Let's retry the sample above in a script:


``` ruby
require 'csvutils'


CsvUtils.head( 'E0.csv' )
# same as
#  $ csvhead E0.csv

CsvUtils.header( 'E0.csv' )
# => see above :-)

CsvUtils.stat( 'E0.csv', 'HomeTeam', 'AwayTeam' )
# same as:
#  $ csvstat -c HomeTeam,AwayTeam E0.csv


CsvUtils.stat( 'AUT.csv', 'Season' )
# => same as
#  $ csvstat -c Season AUT.csv


CsvUtils.split( 'AUT.csv', 'Season' )
# => see above :-)

CsvUtils.cut( 'AUT_2016-2017.csv', 'AUT_2016-2017.csv', 'Date', 'Home', 'Away', 'HG', 'AG' )
# => see above :-)


```


That's it.


## License


![](https://publicdomainworks.github.io/buttons/zero88x31.png)

The `csvutils` scripts are dedicated to the public domain.
Use it as you please with no restrictions whatsoever.

## Questions? Comments?

Send them along to the [wwwmake forum](http://groups.google.com/group/wwwmake).
Thanks!
