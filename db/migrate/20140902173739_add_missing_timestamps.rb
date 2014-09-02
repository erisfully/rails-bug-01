class AddMissingTimestamps < ActiveRecord::Migration
  def change
    quotes  =Quote.all
    quotes.each do |quote|
      if quote.created_at == nil
        quote.update_attributes!(:created_at => "2014-07-12 03:40:54.405448")
      end
    end
  end
end
