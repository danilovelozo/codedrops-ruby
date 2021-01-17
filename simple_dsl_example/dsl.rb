# frozen_string_literal: true

# nodoc
class Dsl
  attr_reader :gems

  def initialize
    @gems = []
  end

  def read_gemfile
    # Read the contents of the gemfile as a string
    contents = File.read('Gemfile')

    # Evaluate the ruby string within the context
    # of the Dsl instance. That is, execute whatever
    # code found in the Gemfile using the state of
    # the current Dsl object.
    instance_eval(contents)
  end

  private

  # Gem directive definition
  # Adds the given gem_name to the list of
  # gems to be installed.
  #
  # This is the method executed whenever the Gemfile
  # contains the directive "gem 'something'"

  def gem(gem_name)
    @gems << gem_name
  end
end
