class PrinterMailer < ActionMailer::Base
  default from: "dave@screenprintly.com"

  def new_quote(printer)
    @printer = printer
    mail(to: @printer.email, subject: "New Quote!")
  end
end
