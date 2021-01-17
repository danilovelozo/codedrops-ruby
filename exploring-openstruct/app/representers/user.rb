# frozen_string_literal: true

require 'ostruct'

# nodoc
class UserRepresenter
  attr_accessor :user

  def initialize(user = nil)
    @user = user || default_user
  end

  def attributes
    { name: user.name, email: user.email }
  end

  private

  def default_user
    OpenStruct.new(name: 'Anonymous', email: 'example@example.com')
  end
end
