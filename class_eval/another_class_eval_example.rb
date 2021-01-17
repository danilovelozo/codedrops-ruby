# frozen_string_literal: true

# nodoc
class AnotherClassEvalExample
  def has_many(resource)
    # Turn current class name into name_id
    # E.g: Newsletter -> news_letter_id
    # Evaluated before opening for modification

    id_attribute_name = "#{self.name.underscore}_id"

    class_eval(<<-ASSOCIATION_METHODS, __FILE__, __LINE__ + 1)
      def #{resource}
        # Turn the argument (e.g: :posts) into the class
        # name Post
        # {resource.to_s.singularize.camelize}.where(#{id_attribute_name}: self.id)
      end
    ASSOCIATION_METHODS
  end
end

# nodoc
class Author
  # Using our version of has_many
  has_many :posts
end

# In this case, the resource argument is :posts.
# The string resulting from the HEREDOC is the one below.
# Notice that this will get evaluated within the context
# of the Author class and then will define
# the instance method posts, allowing us to
# invoke
# author.posts

def posts
  Post.where(author_id: self.id)
end
