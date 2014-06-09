class LoantermsController < ApplicationController
  def index
    @loanterms = Loanterm.all
  end

  def show
    @loanterm = Loanterm.find(params[:id])
    @client = Client.find(params[:client_id])
  end

  def new
    @loanterm = Loanterm.new
    @client = Client.find(params[:client_id])
  end

  def create
    @loanterm = Loanterm.new
    @loanterm.client_id = params[:client_id]
    @loanterm.notional = params[:notional]
    @loanterm.maturity = params[:maturity]
    @loanterm.term = params[:term]
    @loanterm.amortization = params[:amortization]
    @loanterm.index = params[:index]
    @loanterm.credit_spread = params[:credit_spread]
    @loanterm.debt_type = params[:debt_type]
    @loanterm.closing = params[:closing]
    @loanterm.probability = params[:probability]
    @loanterm.notes = params[:notes]

    if @loanterm.save
      redirect_to "/loanterms", :notice => "Loanterm created successfully."
    else
      render 'new'
    end
  end

  def edit
    @loanterm = Loanterm.find(params[:id])
  end

  def update
    @loanterm = Loanterm.find(params[:id])

    @loanterm.client_id = params[:client_id]
    @loanterm.notional = params[:notional]
    @loanterm.maturity = params[:maturity]
    @loanterm.term = params[:term]
    @loanterm.amortization = params[:amortization]
    @loanterm.index = params[:index]
    @loanterm.credit_spread = params[:credit_spread]
    @loanterm.debt_type = params[:debt_type]
    @loanterm.closing = params[:closing]
    @loanterm.probability = params[:probability]
    @loanterm.notes = params[:notes]

    if @loanterm.save
      redirect_to "/loanterms", :notice => "Loanterm updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @loanterm = Loanterm.find(params[:id])

    @loanterm.destroy

    redirect_to "/loanterms", :notice => "Loanterm deleted."
  end
end
