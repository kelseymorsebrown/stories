# frozen_string_literal: true

#
# A Rails controller that serves up /api/status
#
class Api::StatusController < ApplicationController
  def status
    if ActiveRecord::Base.connection.nil? || !ActiveRecord::Base.connected?
      Rails.logger.error(controller: 'StatusController', method: 'status', status: 'database_not_connected')

      render status: :internal_server_error
    elsif ActiveRecord::Base.connection.migration_context.needs_migration?
      Rails.logger.error(controller: 'StatusController', method: 'status', status: 'database_needs_migration')

      render status: :internal_server_error
    else
      render status: :ok
    end
  end
end
