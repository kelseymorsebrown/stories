# frozen_string_literal: true

#
# Base class that all mailer operations should extend from
#
class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
