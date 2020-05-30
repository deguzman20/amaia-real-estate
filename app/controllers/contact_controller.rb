# ContactController Documetation
#   Available Action
#     - new = create inquiry instance
#     - create = create new inquiry
class ContactController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @units = Unit.all
    @inquiry = Inquiry.new
  end

  def create
    @inquiry = InquiryForm.new(params)
    render json: "Your inquiry was send successfuly".to_json if @inquiry.save
  end
end
