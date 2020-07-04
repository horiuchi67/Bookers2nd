class Users::RegistrationsController < Devise::RegistrationsController
 
  def create
    super
    byebug
    NotificationMailer.send_confirm_to_user(resource).deliver
  end
 
  #...
 
end