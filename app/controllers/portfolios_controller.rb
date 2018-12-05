class PortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: [:edit, :update, :show, :destroy]
  layout "portfolio"
  access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all
  def index
    @portfolio_items = Portfolio.all
  end

  def rails
    @rails_portfolio_items = Portfolio.ruby_on_rails
  end

  def new
    @portfolio_item = Portfolio.new
    #Make available to form
    3.times { @portfolio_item.technologies.build }
  end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html {redirect_to portfolios_path, notice: 'Portfolio Item is live.'}
      else
        format.html {render :new}
      end
    end
  end

  def update
    respond_to do |format|
      set_portfolio_item
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def edit
    3.times { @portfolio_item.technologies.build }
  end

  def show
  end

  def destroy
    @portfolio_item.destroy
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Portfolio item deleted.' }
    end
  end

 private

 def portfolio_params
   params.require(:portfolio).permit(:title,
                                      :subtitle,
                                      :body,
                                      technologies_attributes: [:name]
                                    )
 end

 def set_portfolio_item
   @portfolio_item = Portfolio.find(params[:id])
 end
end
