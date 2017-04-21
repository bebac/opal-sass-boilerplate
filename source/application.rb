require 'opal'
require 'browser'

class Application
  def run
    $document.at('body').inner_html = "<h1>Hello, World</h1>"
  end
end

$document.ready do
  Application.new.run
end
