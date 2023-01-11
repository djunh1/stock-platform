class PortfoliosController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_portfolio_item, only: [:edit, :update, :show, :destroy]
  layout "portfolio"
  access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit, :sort]}, site_admin: :all

  def index
    @portfolio_items = Portfolio.by_position
    @page_title = "The Watchlist"
  end

  def sort
    params[:order].each do |key, value|
      Portfolio.find(value[:id]).update(position: value[:position])
    end
    render nothing: true
  end

  def rails
    @rails_portfolio_items = Portfolio.all

  end

  def new
    @portfolio_item = Portfolio.new

  end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)
    respond_to do |format|
      if @portfolio_item.save
        format.html {redirect_to rails_items_path, notice: 'Stock added to watchlist.'}
      else
        format.html {render :new}
      end
    end
  end

  def update
    respond_to do |format|
      set_portfolio_item
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to rails_items_path, notice: 'Stock was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def edit
    3.times { @portfolio_item.technologies.build }
  end

  def show
    @page_title = "#{Portfolio.find(params[:id]).ticker}"
  end

  def destroy
    @portfolio_item.destroy
    respond_to do |format|
      format.html { redirect_to rails_items_path, notice: 'Portfolio item deleted.' }
    end
  end

 private

 def portfolio_params
   params.require(:portfolio).permit(:ticker,
                                      :purchase_date,
                                      :body,
                                      :main_image,
                                      :thumb_image,
                                      :pivot_buy,
                                      :stop_loss,
                                      :status,
                                      technologies_attributes: [:id, :name, :_destroy]
                                    )
 end

 def set_portfolio_item
   @portfolio_item = Portfolio.find(params[:id])
 end
end
