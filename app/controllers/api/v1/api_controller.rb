module Api
  module V1
    class ApiController < ApplicationController

      include Concerns::Response
      include Concerns::ErrorHandler
    end
  end
end