require 'opal'
require 'native'

require 'vue.rb'

require_relative './document.rb'
require_relative './app.rb'

App.new('#app')

Document.hello_world(1)
Document.hello_world(2)
Document.hello_world(3)

Document.find('find-me')
