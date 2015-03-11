require 'calabash-cucumber/core'
require 'calabash-cucumber/operations'
require 'calabash-cucumber/ibase'


require_relative './common_console_helper.rb'

include Calabash::Cucumber::Operations

load_and_instantiate_pages(Dir[File.dirname(__FILE__) + '/../features/ios/pages/*.rb'])



