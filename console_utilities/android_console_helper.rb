require 'calabash-android/operations'
require 'calabash-android/abase'

require_relative './common_console_helper.rb'

include Calabash::Android::Operations

load_and_instantiate_pages(Dir[File.dirname(__FILE__) + '/../features/android/pages/*.rb'])

