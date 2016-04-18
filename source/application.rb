require 'opal'
require 'browser'
require 'browser/effects'
require 'vienna'

require_tree 'templates'
require_tree 'views'

class Application
  def run
    router.update
    puts "hello"
  end

  def router
    @router ||= Vienna::Router.new.tap do |router|
      #router.route('/')                    { |params| router.navigate('albums') }
      #router.route('menu/:action(/:state)') { |params| @view.show_content(params) }
    end
  end

  def find(selector)
    $document.at(selector)
  end
end

$document.ready do
  Application.new.run
end
