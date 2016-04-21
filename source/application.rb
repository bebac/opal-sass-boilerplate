require 'opal'
require 'browser'
require 'browser/socket'
require 'browser/location'
require 'browser/effects'
require 'json'

class Application
  def run
    ws_url = "ws://#{$document.location.host}"
    @channel = Browser::Socket.new ws_url do
    #@channel = Browser::Socket.new "ws://#{$document.location.host}" do # Does not work!!!
      on :open do
      end

      on :message do |e|
        p "Received #{JSON.parse(e.data)}"
      end
    end
    render
  end

  def render
    element = DOM { h1 }
    element << "Hello, World"
    find('body') << element
  end

  def find(selector)
    $document.at(selector)
  end
end

$document.ready do
  Application.new.run
end
