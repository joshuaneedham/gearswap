class GearPostsController < ApplicationController
  before_action :set_gear_post, only: [:show, :update, :destroy]

  # GET /gear_post
  def index
    @gear_post = GearPost.all.with_attached_images

    render json: @gear_post
  end

  # GET /gear_post/1
  def show
    render json: @gear_post
  end

  # POST /gear_post
  def create
    @gear_post = GearPost.new(gear_post_params)
    @gear_post.images.attach(params[:gear_post][:images])

    if @gear_post.save
      render json: @gear_post, status: :created, location: @gear_post
    else
      render json: @gear_post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /gear_post/1
  def update
    if @gear_post.update(gear_post_params)
      render json: @gear_post
    else
      render json: @gear_post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /gear_post/1
  def destroy
    @gear_post.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @gear_post = GearPost.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def gear_post_params
      params.require(:article).permit(:title, :description, :price, :user_id, :images [])
    end
end
