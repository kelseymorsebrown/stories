require 'rails_helper'

describe Api::StatusController do
  describe 'GET /api/status' do
    it 'sets a 200 OK status in the response' do
      get '/api/status'
      expect(response).to have_http_status(200)
    end
  end
end
