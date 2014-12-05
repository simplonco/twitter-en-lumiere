require 'pi_piper'
include PiPiper


module Led
  attr_reader :color

    @@pin16 = PiPiper::Pin.new(pin: 16, direction: :out)
    @@pin20 = PiPiper::Pin.new(pin: 20, direction: :out)
    @@pin21 = PiPiper::Pin.new(pin: 21, direction: :out)
    @@color = nil

  def self.clear()
    [@@pin16, @@pin20, @@pin21].map {|pin| pin.on}
    @color = 'blank'
  end

  def self.blue()
    clear
    @@pin21.off
    @color = 'blue'
  end

  def self.red()
    clear
    @@pin16.off
    @color = 'red'
  end

  def self.green()
    clear
    @@pin20.off
    @color = 'green'
  end

  def self.orange()
    clear
    @@pin16.off
    @@pin20.off
    @@pin21.off
    @color = 'orange'
  end
end

Led.clear()
