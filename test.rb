require 'gosu'

class Rectangle
  attr_accessor :x, :y

  def initialize
    @x = 0
    @y = 0
  end

  def draw
    Gosu.draw_rect(@x, @y, 50, 50, Gosu::Color::RED) 
  end

  def move
    @x += 1 
  end

end

class GameWindow < Gosu::Window
  def initialize
    super 640, 480
    self.caption = "Ruby Animation"
    
    @rectangle = Rectangle.new
  end

  def update
    @rectangle.move
    @rectangle.draw
  end

  def draw
  end

end

window = GameWindow.new
window.show
