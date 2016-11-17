class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end
  def create
    @user = User.new
    if @user.authenticate_admin_key(params[:clave])
      super
    else
      flash[:notice] = 'La clave es inválida.'
      redirect_to root_path
    end
  end
  def edit
    super
  end
  def destroy
    super
  end
  def update
    super
  end
end