module Api
  class ApiController < ApplicationController
    doorkeeper_for :all
    before_filter :validate_token

    def validate_token
      return head(401) unless doorkeeper_token
    end
  end
end
