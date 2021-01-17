# frozen_string_literal: true

# nodoc
module MyGem
  # nodoc
  class AnimalSound
    def initialize
      @animal = MyGem.configuration.animal
      @sound = MyGem.configuration.sound
    end

    def make_sound
      "The #{@animal} #{@sound}"
    end
  end
end
