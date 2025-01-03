# frozen_string_literal: true

#
# Base controller with shared authentication helpers
#
class ApplicationController < ActionController::API
  def error404
    Rails.logger.warn(
      {
        event: '404',
        msg: 'Page not found',
        remote_ip: request.remote_ip,
        url: request.original_url,
        method: request.request_method,
        query_params: request.query_parameters
      }
    )
    head :not_found
  end
end
