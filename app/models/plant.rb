class Plant < ApplicationRecord
  belongs_to :order
  has_one_attached :avatar

  def recovered?
  date = self.arrival_date
  rec_date = self.recovery_date
        if date > rec_date
          "Not Recovered"
        else
          a = Date.parse("#{date}")
          b = Date.parse("#{rec_date}")
          c = b.mjd - a.mjd
          "#{rec_date.month}/#{rec_date.day}/#{rec_date.year} | #{c} day"
        end
  end

end
