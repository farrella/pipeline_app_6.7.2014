class ClientsController < ApplicationController
  def index
    @clients = Client.where("name LIKE '%#{params[:keyword]}%'")
  end

  def show
    @client = Client.find(params[:id])
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new
    @client.name = params[:name]
    @client.contact_person = params[:contact_person]
    @client.contact_email = params[:contact_email]
    @client.contact_phone = params[:contact_phone]
    @client.metavante_id = params[:metavante_id]
    @client.onboarding_status = params[:onboarding_status]
    @client.marketer_id = params[:marketer_id]
    @client.notes = params[:notes]
    @client.banker_id = params[:banker_id]

    if @client.save
      redirect_to "/clients", :notice => "Client created successfully."
    else
      render 'new'
    end
  end

  def edit
    @client = Client.find(params[:id])
  end

  def update
    @client = Client.find(params[:id])

    @client.name = params[:name]
    @client.contact_person = params[:contact_person]
    @client.contact_email = params[:contact_email]
    @client.contact_phone = params[:contact_phone]
    @client.metavante_id = params[:metavante_id]
    @client.onboarding_status = params[:onboarding_status]
    @client.marketer_id = params[:marketer_id]
    @client.notes = params[:notes]
    @client.banker_id = params[:banker_id]

    if @client.save
      redirect_to "/clients", :notice => "Client updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @client = Client.find(params[:id])

    @client.destroy

    redirect_to "/clients", :notice => "Client deleted."
  end
end
