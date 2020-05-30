module ApplicationHelper
  def number_to_currency_peso(number)
    number_to_currency(number, unit: "₱", separator: ".", delimiter: ",").sub(".00", "")
  end

  def current_page(action = "")
    params[:action] == action ? "active" : nil
  end
end
