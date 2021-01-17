# frozen_string_literal: true

# nodoc
module MyGem
  class << self
    # Instantiate the Configuration singleton
    # or return it. Remember that the instance
    # has attribute readers so that we can access
    # the configured values

    def configuration
      @configuration ||= Configuration.new
    end

    # This is the configure block definition
    # The configuration method will return the
    # Configuration singleton, which is then yielded
    # to the configure block. Then it's just a matter
    # of using the attribute accessor we previously defined

    def configure
      yield(configuration)
    end
  end
end

# The gem is now set to be configured by the applications that use it.

# Example:

# MyGem.configure do |config|
  # Notice that the config block argument
  # is the yielded singleton of Configuration.
  # In essence, all we're doing is using the
  # accessors we defined in the Configuration class

  # config.animal = "Cat"
  # config.sound = "Meows"
# end

