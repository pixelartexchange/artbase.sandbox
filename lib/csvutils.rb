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

require 'csvutils/commands/head'
require 'csvutils/commands/header'
require 'csvutils/commands/stat'
require 'csvutils/commands/cut'
require 'csvutils/commands/split'




puts CsvUtils.banner   # say hello
