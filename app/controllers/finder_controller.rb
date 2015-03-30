class FinderController < ApplicationController
  def index
    @customers = Customer.all
  end

  def alphabetic
    @customers = Customer.order(:full_name).all
  end

  def missing_email
    @customers = Customer.all.where(missing_email)
  end
end
