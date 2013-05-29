class RegistrationsController < Devise::RegistrationsController
  #before_filter :check_registrations_open!

  def create
    super
  end

  def new
  	logger.info 'lanvigeregnew'
    super
  end
end