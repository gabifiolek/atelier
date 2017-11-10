class BooksNotifierMailer < ApplicationMailer
  default from: 'warsztaty@infakt.pl'
  layout 'mailer'

  def reservation_confirmation(user, book, reservation)
    @user = user
    @book = book
    @reservation = reservation

    mail(to: "#{@user.email}", subject: "Your book reservation confirmation - #{@book.title}")
  end

  def return_confirmation(user, book)
    @user = user
    @book = book

    mail(to: "#{@user.email}", subject: "Your book return confirmation - #{@book.title}")
  end
end
