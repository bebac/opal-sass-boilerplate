require 'opal'
require 'clearwater'
require 'bowser'

class Layout
  include Clearwater::Component

  def render
    h1('Hello, World')
  end
end

#
# Bowser doesn't have a document ready method. The DOMContentLoadad event
# does the trick at least in chrome. Not sure if it is even needed?
#
Bowser.document.on :DOMContentLoaded do
  app = Clearwater::Application.new(component: Layout.new)
  app.call
end
