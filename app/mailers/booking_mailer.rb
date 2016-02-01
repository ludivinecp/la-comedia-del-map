class BookingMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.booking_mailer.new_booking.subject
  #
  def new_booking(ticket)
    @ticket = ticket
    @booking_play = Play.find(@ticket.plays_id)
    mail to: @ticket.user.email,
    subject: "Confirmation de votre réservation"
  end

end
