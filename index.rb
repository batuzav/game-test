require 'gosu'

class GameWindow < Gosu::Window
    def initialize(width=820, height=740, fullscreen=false)
        super
        self.caption = 'Hola'
        @message = Gosu::Image.from_text(
            self, 'Hola, mundo!', Gosu::default_font_name, 30
        )
    end

    def draw
        @message.draw(10, 10, 0)
    end    
end

window = GameWindow.new
window.show