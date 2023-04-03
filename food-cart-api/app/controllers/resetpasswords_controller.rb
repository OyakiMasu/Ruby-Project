class ResetpasswordsController < ApplicationController
    skip_before_action :authorize_request, only: [:create, :update]
  
    # POST /reset_passwords
    def create
      user = User.find_by_email(params[:email])
  
      if user
        user.generate_password_reset_token!
        UserMailer.with(user: user).reset_password_email.deliver_now
        render json: { message: 'Password reset email sent successfully' }, status: :ok
      else
        render json: { message: 'Email address not found' }, status: :not_found
      end
    end
  
    # PUT /reset_passwords
    def update
      user = User.find_by_reset_password_token(params[:reset_password_token])
  
      if user && user.password_reset_token_valid?
        if user.reset_password!(params[:password])
          render json: { message: 'Password reset successful' }, status: :ok
        else
          render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
      else
        render json: { message: 'Invalid or expired reset password token' }, status: :unprocessable_entity
      end
    end
end
