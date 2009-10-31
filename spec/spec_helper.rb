$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'gemstreamer'
require 'rubygems'                                
#stubbing and mocking
require 'mocha'