class Api::StatusController < ApplicationController
  def status
    render status: :ok
  end
end