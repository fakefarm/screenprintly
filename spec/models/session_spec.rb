require 'spec_helper'

describe Session do
  it 'stores the current session id' do
    my_session = Session.new(session_id: 123)
    my_session_id = my_session.session_id
    expect(my_session_id).not_to be_nil
  end
  it 'contains ids the quote process' do
    sess = Session.new( session_id: 2, quote_id: 2, garment_id: 2, printer_id: 2, garment_price: 2 )
    expect(sess).to be_valid
  end
end
