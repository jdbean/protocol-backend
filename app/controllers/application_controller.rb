class ApplicationController < ActionController::API
  include Knock::Authenticable

  private

require 'byebug'
  def authenticate_v1_user
    # byebug
    authenticate_for User
  end

end
