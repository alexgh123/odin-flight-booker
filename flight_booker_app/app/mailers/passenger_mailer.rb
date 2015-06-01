class PassengerMailer < ApplicationMailer
  default from: 'notifications@flightbooker.com'

  def flight_confirm_email(passenger)
    @passenger = passenger
    @url = 'http://example.com/login'
    mail(to: @passenger.email, subject: "Your recently booked flight confirmation")
  end

end
