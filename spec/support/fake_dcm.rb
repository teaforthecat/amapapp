require 'sinatra/base'

class FakeDCM < Sinatra::Base
  get '/api/accounts/:code' do
    json_response 200, 'account.json'
  end

  get '/api/accounts/:code/topics' do
    json_response 200, 'topics.json'
  end

  get '/api/accounts/:code/topics/:id/recipients' do
    json_response 200, 'recipients.json'
  end


  private

  def json_response(response_code, file_name)
    content_type :json
    status response_code
    File.open( 'spec/fixtures/' + file_name, 'rb').read
  end
end
