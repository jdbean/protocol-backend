module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_api_v1_user

    rescue_from ActiveRecord::RecordNotFound, JWT::DecodeError, CustomErrorClass do
      reject_unauthorized_connection
    end

    def connect
      @jwt_token = request.params[:token] || raise(CustomErrorClass)
      self.current_api_v1_user = find_verified_user
    end

    private

    attr_reader :jwt_token

    def find_verified_user
      payload, = decode_token
      User.find(payload['sub'])
    end

    def decoding_key
      Knock.token_secret_signature_key.call
    end

    def decode_token
      JWT.decode(jwt_token.to_s, decoding_key)
    end
  end
end
