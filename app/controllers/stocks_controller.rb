class StocksController < ApplicationController

  def search
    if params[:stock]
      @stock = Stock.find_by_ticker(params[:stock])
      @stock ||= Stock.new_from_lookup(params[:stock])
    end

    if @stock
      #render json: @stock EX) root/search_stocks?stock=SUNE output JSON object
      render partial: 'lookup'
    else
      render status: :not_found, nothing: true
    end
  end

end
