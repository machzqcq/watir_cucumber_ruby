require 'rspec'
require 'uri'
require 'yaml'
require 'json'
require 'nokogiri'
require 'open-uri'
require 'pdf/reader'
require_relative 'wrapper'
require 'rspec/expectations'
require 'browsermob/proxy'
require 'faker'

require './features/support/java_libraries/gson-2.2.4.jar' if defined? JRUBY_VERSION
require 'active_record'
# https://github.com/jruby/activerecord-jdbc-adapter
require 'java'  if defined? JRUBY_VERSION
require 'activerecord-jdbc-adapter' if defined? JRUBY_VERSION
require 'activerecord-jdbcmysql-adapter' if defined? JRUBY_VERSION
require 'activerecord-jdbcsqlite3-adapter' if defined? JRUBY_VERSION

# for sqlite3
require 'jdbc/sqlite3' if defined? JRUBY_VERSION

#for rubyXL
require 'rubyXL'




