class RegistrationsController < Devise::RegistrationsController
  #before_filter :check_registrations_open!

  def create
    super
    logger.info 'lanvige message'
  end

  def new
    super
  end
  
end