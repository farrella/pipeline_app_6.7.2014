class MarketersController < ApplicationController
  def index
    @marketers = Marketer.all
  end

  def show
    @marketer = Marketer.find(params[:id])
  end

  def new
    @marketer = Marketer.new
  end

  def create
    @marketer = Marketer.new
    @marketer.name = params[:name]
    @marketer.email = params[:email]
    @marketer.avatar_url = params[:avatar_url]

    if @marketer.save
      redirect_to "/marketers", :notice => "Marketer created successfully."
    else
      render 'new'
    end
  end

  def edit
    @marketer = Marketer.find(params[:id])
  end

  def update
    @marketer = Marketer.find(params[:id])

    @marketer.name = params[:name]
    @marketer.email = params[:email]
    @marketer.avatar_url = params[:avatar_url]

    if @marketer.save
      redirect_to "/marketers", :notice => "Marketer updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @marketer = Marketer.find(params[:id])

    @marketer.destroy

    redirect_to "/marketers", :notice => "Marketer deleted."
  end
end
