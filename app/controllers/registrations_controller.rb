class RegistrationsController < Devise::RegistrationsController
  #before_filter :check_registrations_open!

  def create
    super
    logger.info 'lanvigecreatemessage'
  end

  def new
  	logger.info 'lanvigeregnew'
    super
  end
  
end