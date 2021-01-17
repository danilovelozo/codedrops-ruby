# frozen_string_literal: true

# nodoc
module MyGem
  # nodoc
  class Configuration
    attr_reader :key_name

    # Define no lambda as the default
    def initialize
      @key_name = nil
    end

    # Raise an error if trying to set the key_name
    # to something other than a lambda

    def key_name=(lambda)
      raise ArgumentError, 'The key_name must be a lambda' unless lambda.is_a?(Proc)

      @key_name = lambda
    end
  end
end

# Example

=begin

MyGem.configure do |config|
  config.lambda_config = ->(model_name) { model_name == "Post" ? :posts : :articles }
end

=end
