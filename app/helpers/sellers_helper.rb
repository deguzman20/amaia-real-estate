module SellersHelper
  def seller_fullname(data)
    "#{data.try(:first_name).capitalize} #{data.try(:middle_name).capitalize} #{data.try(:last_name).capitalize}"
  end

  def seller_position(data)
    "#{data.try(:position)}"
  end

  def seller_prc(data)
    "#{data.try(:prc)}"
  end

  def seller_hlurb(data)
    "#{data.try(:hlurb)}"
  end

  def seller_fb_link(data)
    "#{data.try(:fb_link)}"
  end
end
