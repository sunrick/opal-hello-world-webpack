require 'opal'
require 'native'

require_relative './document.rb'

Document.hello_world(1)
Document.hello_world(2)
Document.hello_world(3)

Document.find('find-me')
