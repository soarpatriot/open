class Admin::KeysController < ApplicationController
  before_action :set_admin_key, only: [:show, :edit, :update, :destroy]

  # GET /admin/keys
  def index
    @keys = Key.all
  end

  # GET /admin/keys/1
  def show
  end

  # GET /admin/keys/new
  def new
    @key = Key.new
    @key.client_secret = SecureRandom.uuid
  end

  # GET /admin/keys/1/edit
  def edit
  end

  # POST /admin/keys
  def create
    @key = Key.new(admin_key_params)

    if @key.save
      redirect_to admin_keys_url(@key), notice: 'Key was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/keys/1
  def update
    if @key.update(admin_key_params)
      redirect_to admin_keys_url(@key), notice: 'Key was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin/keys/1
  def destroy
    @key.destroy
    redirect_to admin_keys_url, notice: 'Key was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_key
      @key = Key.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_key_params
      params.require(:key).permit(:client_id, :client_secret)
    end
end
