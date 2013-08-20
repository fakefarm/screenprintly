class PrinterMailer < ActionMailer::Base
  default from: "dave@screenPrintly.com"

  def new_quote(printer)
    @printer = printer
    quote_entry = Session.where(printer_id: @printer.id).last
    @quote = Quote.find(quote_entry)
    @customer = Confirmation.where(printer_id: @printer.id).last
    mail(to: @printer.email, subject: "New Quote from screenPrintly!")
  end
end
