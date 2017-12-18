$:.unshift(File.dirname(__FILE__) + '/../lib')

require 'test/unit'
require 'rubygems'
require 'action_controller'
require 'in_place_editing'

if Gem.loaded_specs['actionpack'].version >= Gem::Version.create('4.2')
  require 'rails/dom/testing/assertions/dom_assertions'
  include Rails::Dom::Testing::Assertions::DomAssertions
else
  require 'action_dispatch/testing/assertions'
  include ActionDispatch::Assertions::DomAssertions
end
