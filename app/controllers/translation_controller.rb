require 'google/cloud/translate'
class TranslationController < ApplicationController

def translate

text = translation_params[:text]
language_code = 'en'
key_file = 'keys.json'
project_id = 'stable-device-201314'
    translate   = Google::Cloud::Translate.new project: project_id, keyfile: key_file
    translation = translate.translate text, to: language_code

    puts "Translated '#{text}' to '#{translation.text.inspect}'"
    puts "Original language: #{translation.from} translated to: #{translation.to}"
    @message = {message: translation.text}

    render json: @message
end

private

  def translation_params
    params.require(:translation).permit(:language, :text)
  end

end
