require 'byebug'
module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      self.current_user = find_verified_user
    end
# FIXME: AUTHORIZATION 
    private
      def find_verified_user
       byebug
        if verified_user = User.find_by(name: "Jeremy")
          verified_user
        else
          reject_unauthorized_connection
        end
      end
  end
end

# module ApplicationCable
#   class Connection < ActionCable::Connection::Base
#     identified_by :current_user
#
#     # rescue_from ActiveRecord::RecordNotFound, JWT::DecodeError, CustomErrorClass do
#     #   reject_unauthorized_connection
#     # end
#
#     def connect
#       @jwt_token = request.params[:token]
#       # || raise(CustomErrorClass)
#       self.current_user = find_verified_user
#     end
#
#     private
#
#     attr_reader :jwt_token
#
#     def find_verified_user
#       byebug
#       payload, = decode_token
#       User.find(payload['sub'])
#     end
#
#     def decoding_key
#       Knock.token_secret_signature_key.call
#     end
#
#     def decode_token
#       JWT.decode(jwt_token.to_s, decoding_key)
#     end
#   end
# end
