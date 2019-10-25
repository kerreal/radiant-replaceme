class UselinkController < ApplicationController
  before_action :authenticate_user!

  def create
    @link = current_user.uselinks.create(uselink_params)
    if @link.valid?
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def uselink_params
    params.require(:comment).permit(:title, :url_link)
  end
end
