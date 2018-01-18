class BaseController < ApplicationController
  include Pundit

  include Mobylette::RespondToMobileRequests

  mobylette_config do |config|
	  config[:skip_xhr_requests] = false
  end
end
