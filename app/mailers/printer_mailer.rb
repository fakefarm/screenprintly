class PrinterMailer < ActionMailer::Base
  default from: "dave@screenPrintly.com"

  def new_quote(printer, quote_id)
    @printer = printer
    @quote = Quote.find(quote_id)
    @customer = Confirmation.where(printer_id: @printer.id).last
    mail(to: @printer.email, subject: "New Quote from screenPrintly!")
  end
end
