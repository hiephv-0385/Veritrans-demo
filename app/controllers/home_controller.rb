class HomeController < ApplicationController
  def home

  end

  def web_payment
    @result = Veritrans.charge(
      payment_type: "VTWEB",
      transaction_details: {
      order_id: "Sample Order-15",
      gross_amount: 100_000
    })
    redirect_to @result.redirect_url
  end
end
