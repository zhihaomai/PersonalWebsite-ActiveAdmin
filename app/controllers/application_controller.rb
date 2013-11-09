class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  skip_before_filter :verify_authenticity_token, :only =>[:options]
  before_filter :cors_set_access_control_headers

  def cors_set_access_control_headers
  	headers['Access-Control-Allow-Origin'] = "*"
  	headers['Access-Control-Allow-Methods'] = 'GET'
  	headers['Access-Control-Allow-Headers'] = '*, X-Requested-With, X-Prototype-Version, X-CSRF-Token, Content-Type'
  	headers['Access-Control-Max-Age'] = '1728000'
  end

  def options
  	render :text => '', :content_type => 'text/plain'
  end

end
