module ApplicationHelper
  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def show_full_message_from_controller(errors)
    errors.full_messages.each do |message|
      flash[:alert] = message
    end
  end

end
