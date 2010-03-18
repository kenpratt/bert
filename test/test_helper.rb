require 'rubygems'
require 'test/unit'
require 'shoulda'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'ext', 'bert', 'c'))

load 'bert.rb'

puts "Using #{BERT::Decode.impl} implementation."

def to_bytes(str)
  bytes = []
  str.each_byte {|b| bytes << b }
  bytes
end
