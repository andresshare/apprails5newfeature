class PortfolioabsController < ApplicationController

  def index
  @portfolio_items = Portfolioab.all
  end

  def new
  @portfolio_item = Portfolioab.new
  end


  def create
    @portfolio_item = Portfolioab.new(params.require(:portfolioab).permit(:title, :subtitle, :body))
    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to @portfolioabs_path, notice: 'Portfolio was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end


end
