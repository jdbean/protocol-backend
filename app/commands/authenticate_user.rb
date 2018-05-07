require 'byebug'
class AuthenticateUser
  prepend SimpleCommand

  def initialize(name, password)
    @name = name
    @password = password
  end

  def call
    
    JsonWebToken.encode(user_id: user.id.to_s) if user
  end

  private

  attr_accessor :name, :password

  def user
    # byebug
    user = User.find_by(name: @name)
    return user if user && user.authenticate(password)

    errors.add :user_authentication, 'invalid credentials'
    nil
  end
end
