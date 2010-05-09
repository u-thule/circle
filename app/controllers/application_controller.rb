# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  
  before_filter :find_id_by_alias
  
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
protected
  
  def find_id_by_alias
    if params[:id].blank? && !params[:alias].blank?
      circle = Circle.find_by_alias(params[:alias])
      if circle
        params[:id] = circle.id
      else
        redirect_to(:action => :index)
      end
    end
  end
  
end
