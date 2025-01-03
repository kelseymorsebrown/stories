# frozen_string_literal: true

require 'rails_helper'

describe ApplicationController do
  describe '#error404' do
    let(:url) { '/not/real' }
    let(:request) { get url }

    it 'returns 404 status code' do
      request
      expect(response).to have_http_status(:not_found)
    end

    it 'logs a warning about the missing route' do
      expect(Rails.logger).to receive(:warn).with(
        event: '404',
        msg: 'Page not found',
        remote_ip: anything,
        url: 'http://www.example.com/not/real',
        method: 'GET',
        query_params: {}
      )
      request
    end
  end
end
