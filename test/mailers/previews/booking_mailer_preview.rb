# Preview all emails at http://localhost:3000/rails/mailers/booking_mailer
class BookingMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/booking_mailer/new_booking
  def new_booking
    ticket = Ticket.last
    BookingMailer.new_booking(ticket)
  end

end
