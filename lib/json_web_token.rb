require 'byebug'
class JsonWebToken
 class << self
   def encode(payload, exp = 24.hours.from_now)

     payload[:exp] = exp.to_i
     JWT.encode(payload, Rails.application.credentials.env_key)
   end

   def decode(token)
     body = JWT.decode(token, Rails.application.credentials.env_key)[0]
     HashWithIndifferentAccess.new body
   rescue
     nil
   end
 end
end
