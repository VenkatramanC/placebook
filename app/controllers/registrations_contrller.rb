class RegistrationsContrller < Devise::RegistrationsContrller

  private
    def sign_up_params
      params.require(:user).permit(:email, :password, :password_conformation, :username )
    end

    def account_update_Params
      params.require(:user).permit(:email, :password, :password_conformation, :current_Password, :username )
    end

end