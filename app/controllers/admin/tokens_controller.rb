class Admin::TokensController < ApplicationController
  before_action :set_admin_token, only: [:show, :edit, :update, :destroy]

  # GET /admin/tokens
  def index
    @admin_tokens = Admin::Token.all
  end

  # GET /admin/tokens/1
  def show
  end

  # GET /admin/tokens/new
  def new
    @admin_token = Admin::Token.new
  end

  # GET /admin/tokens/1/edit
  def edit
  end

  # POST /admin/tokens
  def create
    @admin_token = Admin::Token.new(admin_token_params)

    if @admin_token.save
      redirect_to @admin_token, notice: 'Token was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/tokens/1
  def update
    if @admin_token.update(admin_token_params)
      redirect_to @admin_token, notice: 'Token was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin/tokens/1
  def destroy
    @admin_token.destroy
    redirect_to admin_tokens_url, notice: 'Token was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_token
      @admin_token = Admin::Token.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_token_params
      params.require(:admin_token).permit(:access_token, :refresh_token, :expired_at, :datatime)
    end
end
