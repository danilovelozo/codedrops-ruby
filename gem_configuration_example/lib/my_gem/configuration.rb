# frozen_string_literal: true

# nodoc
module MyGem
  class Configuration
    # Custom error class for sounds that don't
    # match the expected animal
    class AnimalSoundMismatch < StandardError; end

    # Animal sound map
    ANIMAL_SOUND_MAP = {
      'Dog' => 'Barks',
      'Cat' => 'Meows'
    }.freeze

    # Writer + reader for the animal instance variable. No fancy logic
    attr_accessor :animal

    # Reader only for the sound instance variable.
    # The writer contains custom logic
    attr_reader :sound

    # Initialize every configuration with a default.
    # Users of the gem will override these with their
    # desired values

    def initialize
      @animal = 'Dog'
      @sound = 'Barks'
    end

    # Custom writer for sound.
    # If the sound variable is not exactly what is
    # mapped in our hash, raise the custom error

    def sound=(sound)
      raise AnimalSoundMismatch, "A #{@animal} can't #{sound}" if ANIMAL_SOUND_MAP[@animal] != sound

      @sound = sound
    end
  end
end
