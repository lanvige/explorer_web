class PasswordsController < Devise::PasswordsController
  
  def new
    logger.info 'lanvigecreatepasswordmessage'
    super
  end

  def create
    logger.info 'lanvigecreatepasswordmessage'
    super
  end

  def edit
    super
  end
  
  def update
    super
  end
end