# frozen_string_literal: true

#
# Base class that all ActiveRecord model classes should extend from
#
class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
end
