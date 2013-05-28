class SessionsController < Devise::SessionsController

  # GET /resource/sign_in
  def new
    logger.debug { "omniauth1:::::::" }
    logger.info "My info message"
    super
  end

  # POST /resource/sign_in
  def create
    super
  end

  # GET /resource/sign_out
  def destroy
    super
  end
end