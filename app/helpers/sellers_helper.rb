module SellersHelper
  def seller_fullname(data)
    "#{data.try(:first_name).capitalize} #{data.try(:middle_name).capitalize} #{data.try(:last_name).capitalize}"
  end
end
