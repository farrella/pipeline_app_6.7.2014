class QuotesController < ApplicationController
  def index
    @quotes = Quote.all
  end

  def show
    @quote = Quote.find(params[:id])
    @client = Client.find(params[:client_id])
  end

  def new
    @quote = Quote.new
    @client = Client.find(params[:client_id])
  end

  def create
    @quote = Quote.new
    @quote.loanterm_id = params[:loan_terms_id]
    @quote.product = params[:product]
    @quote.rate = params[:rate]
    @quote.markup = params[:markup]
    @quote.est_fee = params[:est_fee]
    @quote.premium = params[:premium]
    @quote.notes = params[:notes]

    if @quote.save
      redirect_to "/quotes", :notice => "Quote created successfully."
    else
      render 'new'
    end
  end

  def edit
    @quote = Quote.find(params[:id])
  end

  def update
    @quote = Quote.find(params[:id])

    @quote.loan_terms_id = params[:loan_terms_id]
    @quote.product = params[:product]
    @quote.rate = params[:rate]
    @quote.markup = params[:markup]
    @quote.est_fee = params[:est_fee]
    @quote.premium = params[:premium]
    @quote.notes = params[:notes]

    if @quote.save
      redirect_to "/quotes", :notice => "Quote updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @quote = Quote.find(params[:id])

    @quote.destroy

    redirect_to "/quotes", :notice => "Quote deleted."
  end
end
