class ScommentsController < ApplicationController

  def create
    @scomment = Scomment.new scomment_params
    @scomment.user_id = current_user.id

    respond_to do |format|
      format.js {
        if @scomment.save
          @scomments = Scomment.where(post_id: @scomment.post_id)
          render "scomments/create"
        else
          #no save
        end
      }
    end
  end

  private
  def scomment_params
    params.require(:scomment).permit(:message, :post_id)
  end
end
