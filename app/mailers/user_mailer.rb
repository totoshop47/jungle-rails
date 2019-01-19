
class UserMailer < ApplicationMailer
  default from: 'no-reply@jungle.com'

  def confirmation_email(order, email)
    @order = order
    @email = email

    mail(to: @email, subject: "Thank you for your purchase :). Your order Id is: #{order.id}")
  end
end