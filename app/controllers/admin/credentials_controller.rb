class Admin::CredentialsController < ApplicationController
  before_action :set_credential_key, only: [:show, :edit, :update, :destroy]

  # GET /admin/keys
  def index
    @credentials = Credential.all.page params[:page]
  end

  # GET /admin/keys/1
  def show
  end

  # GET /admin/keys/new
  def new
    @credential = Credential.new
    @credential.client_secret = SecureRandom.uuid
  end

  # GET /admin/keys/1/edit
  def edit
  end

  # POST /admin/keys
  def create
    @credential = Credential.new(admin_credential_params)

    if @credential.save
      redirect_to admin_credentials_url(@credential), notice: 'Key was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/keys/1
  def update
    if @credential.update(admin_credential_params)
      redirect_to admin_credentials_url(@credential), notice: 'Key was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin/keys/1
  def destroy
    @credential.destroy
    redirect_to admin_credentials_url, notice: 'Key was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_credential_key
      @credential = Credential.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_credential_params
      params.require(:credential).permit(:client_id, :client_secret, :grant_type, :description)
    end
end
