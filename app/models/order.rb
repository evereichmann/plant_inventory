class Order < ApplicationRecord
    has_many :plants

    def name_and_date
        "#{seller_name} | #{date_order.month}/#{date_order.day}/#{date_order.year}"
    end    
end
