class MailSubscriptionsController < ApplicationController

  def create
    @subscriber = MailSubscription.new(subscription_params)

    if @subscriber.save
      redirect_to(:back)
      flash[:notice] =  "You successfully subscribed to news"
    else
      redirect_to(:back)
      show_full_message_from_controller(@subscriber.errors)
    end
  end

  private
  def subscription_params
    params.require(:mail_subscription).permit(:email)
  end
end
