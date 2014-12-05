
module Led
  attr_reader :color

  def self.clear()
    system ".lib/led clear"
    @color = 'blank'
  end

  def self.blue()
    clear
    system ".lib/led wipe 0 0 255"
    @color = 'blue'
  end

  def self.red()
    clear
    system ".lib/led wipe 255 0 0"
    @color = 'red'
  end

  def self.green()
    clear
    system ".lib/led wipe 0 255 0"
    @color = 'green'
  end

  def self.orange()
    clear
    system ".lib/led wipe 255 44 0"
    @color = 'orange'
  end

  def self.yellow()
    clear
    system ".lib/led wipe 255 255 0"
    @color = 'yellow'
  end

  def self.pink()
    clear
    system ".lib/led wipe 255 0 255"
    @color = 'pink'
  end

  def self.white()
    clear
    system ".lib/led wipe 255 255 255"
    @color = 'white'
  end

  def self.rainbow()
    clear
    system ".lib/led cycle-rainbow"
    @color = 'rainbow'
  end
end

class String
  def include(strings)
    return self.include?(strings) if strings.class.to_s == "String"
    results = strings.map {|string| self.include?(string) }
    results.index(true) ? true : false
  end
end

Led.clear()
