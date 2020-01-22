class OffersController < ApplicationController
 
  def new
  	@offer = Offer.new
  end

  def create
  	@offer = Offer.new(buyer_title: params[:buyer_title],
  										 buyer_first_name: params[:offer][:buyer_first_name],
  										 buyer_last_name: params[:offer][:buyer_last_name],
  										 buyer_email: params[:offer][:buyer_email],
  										 buyer_adress: params[:offer][:buyer_adress],
  										 buyer_zipcode: params[:offer][:buyer_zipcode],
  										 buyer_city: params[:offer][:buyer_city],
  										 seller_title: params[:seller_title],
  										 seller_first_name: params[:offer][:seller_first_name],
  										 seller_last_name: params[:offer][:seller_last_name],
  										 seller_adress: params[:offer][:seller_adress],
  										 seller_zipcode: params[:offer][:seller_zipcode],
  										 seller_city: params[:offer][:seller_city],
  										 property_adress: params[:offer][:property_adress],
  										 property_zipcode: params[:offer][:property_zipcode],
  										 property_city: params[:offer][:property_city],
  										 property_type: params[:property_type],
  										 property_surface: params[:offer][:property_surface],
  										 property_price: params[:offer][:property_price],
  										 property_price_letters: params[:offer][:property_price_letters],
  										 date_max:params[:year]+"-"+params[:month]+"-"+params[:day]
  										)
  	if @offer.save
      redirect_to offer_path(@offer)
    else 
    	render "new"
    end
  end

  def show
  end


end
