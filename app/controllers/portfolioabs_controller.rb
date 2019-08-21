class PortfoliosController < ApplicationController
  def index
    @portfolio_items = Portfolioab.all
  end

  def new
    @portfolio_item = Portfolioab.new
  end

  def create
    @portfolio_item = Portfolioabs .new(params.require(:portfolio).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolioabs_path, notice: 'Your portfolio item is now live.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @portfolio_item = Portfolioab.find(params[:id])
  end

  def update
    @portfolio_item = Portfolioab.find(params[:id])

    respond_to do |format|
      if @portfolio_item.update(params.require(:portfolioabs).permit(:title, :subtitle, :body))
        format.html { redirect_to portfolioabs_path, notice: 'The record successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

end