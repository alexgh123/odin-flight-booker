class PassengerMailer < ApplicationMailer
  default from: 'notifications@flightbooker.com'

  def flight_confirmation_email(passenger, booking)
    @passenger = passenger
    @booking = booking
    @url = 'http://example.com/login'
    mail(to: @passenger.email, subject: "Your recently booked flight confirmation")
  end

end
