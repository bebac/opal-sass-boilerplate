require 'opal'
require 'browser'
require 'browser/interval'
require 'inesita'

class Clock
  include Inesita::Component

  def initialize
    @time = Time.now
    every 1 do
      @time = Time.now
      render!
    end
  end

  def render
    div class: 'clock' do
      text @time.strftime('%r')
    end
  end
end

$document.ready do
  Clock.new.mount_to($document.body)
end
