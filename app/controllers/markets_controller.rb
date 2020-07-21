class MarketsController < ApplicationController

  access all: [:index], user: {except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all

  def index
    @market = Market.first
    @page_title = "Market Status"
  end

  def show
  end

  def edit
    @market = Market.first

  end

  def new
    @market_item = Market.new
  end

  def create
    @market = Market.new(market_status_params)

    respond_to do |format|
      if @market.save
        format.html { redirect_to markets_path, notice: 'Market Status was successfully created.' }

      else
        format.html { render :new, notice: 'Something went wrong' }
      end
    end
  end


  def update
    @market = Market.first
    respond_to do |format|
      if @market.update(market_status_params)
        format.html { redirect_to markets_path, notice: 'Market Status was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end


  private

  def market_status_params
    params.require(:market).permit(:status,:percent_cash, :market_status_update)
  end
end
