require 'grape'

module Explorer
  module APIHelpers
    
    # user helpers
    def current_user
      @current_user ||= User.where(:token => params[:token] || '').first
    end

    def authenticate!
      error!({ "error" => "401 Unauthorized" }, 401) unless current_user
    end
  end
end