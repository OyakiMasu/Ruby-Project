class ResetPasswordSerializer < ActiveModel::Serializer
  attributes :id, :email, :reset_password_token, :reset_password_sent_at

end
