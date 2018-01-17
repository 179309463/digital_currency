class BaseController < ApplicationController
  include Mobylette::RespondToMobileRequests

  mobylette_config do |config|
	  config[:skip_xhr_requests] = false
  end
end
