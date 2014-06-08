class BankersController < ApplicationController
  def index
    @bankers = Banker.all
  end

  def show
    @banker = Banker.find(params[:id])
  end

  def new
    @banker = Banker.new
  end

  def create
    @banker = Banker.new
    @banker.name = params[:name]
    @banker.division = params[:division]
    @banker.email = params[:email]
    @banker.phone = params[:phone]
    @banker.marketer_id = params[:marketer_id]

    if @banker.save
      redirect_to "/bankers", :notice => "Banker created successfully."
    else
      render 'new'
    end
  end

  def edit
    @banker = Banker.find(params[:id])
  end

  def update
    @banker = Banker.find(params[:id])

    @banker.name = params[:name]
    @banker.division = params[:division]
    @banker.email = params[:email]
    @banker.phone = params[:phone]
    @banker.marketer_id = params[:marketer_id]

    if @banker.save
      redirect_to "/bankers", :notice => "Banker updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @banker = Banker.find(params[:id])

    @banker.destroy

    redirect_to "/bankers", :notice => "Banker deleted."
  end
end
