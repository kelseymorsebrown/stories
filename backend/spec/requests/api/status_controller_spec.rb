# frozen_string_literal: true

require 'rails_helper'

describe Api::StatusController do
  describe '#status' do
    let(:request) { get '/api/status/am-i-up' }

    it 'sets a 200 OK status in the response' do
      request
      expect(response).to have_http_status(:ok)
    end

    context 'Cannot establish a database connection' do
      before { allow(ActiveRecord::Base).to receive(:connection).and_return(nil) }

      it 'returns a 500 status code' do
        request
        expect(response).to have_http_status(:internal_server_error)
      end
    end

    context 'Application not migrated to latest schema' do
      before { allow_any_instance_of(ActiveRecord::MigrationContext).to receive(:needs_migration?).and_return(true) }

      it 'returns a 500 status code' do
        request
        expect(response).to have_http_status(:internal_server_error)
      end
    end
  end
end
