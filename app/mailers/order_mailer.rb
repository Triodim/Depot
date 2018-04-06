class OrderMailer < ApplicationMailer
  default from: 'tds050680@gmail.com'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.received.subject
  #
  def received(order)
    @order = order
    mail to: order.email, subject: 'Pragmatic Store Order Confirmation'

    #@greeting = "Hi, order received"
    #mail to: "to@example.org"
  end


  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.shipped.subject
  #
  def shipped(order)
    @order = order

    mail to: order.email, subject: 'Pragmatic Store Order Shipped'
    #@greeting = "Hi, order shipped"
    #mail to: "to@example.org"
  end
end
