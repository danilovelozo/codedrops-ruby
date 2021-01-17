# frozen_string_literal: true

# nodoc
class ClassEvalExample
  define_method('name_of_new_method') do |arg1, arg2, &block|
    # Define the behavior of the new method.
    # arg1, arg2 and &block are acessible here in the body
  end

  def sing(genre)
    # "Open the class for changes

    class_eval do
      # Use the define_method method to define "rock"
      # in runtime

      define_method(genre) do |band|
        puts "I love #{band}"
      end

      # def rock(band)
        # puts "I love #{band}"
      # end
    end
  end
end

# nodoc
class Person
  sing :rock
  # sing
end

# After evaluating the class, the new rock method exists
Person.new.rock('AC/DC')
