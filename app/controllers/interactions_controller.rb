class InteractionsController < ApplicationController

  def create
    Interaction.create!(user_one_id: current_user.id,
                        user_two_id: params[:id_user],
                        like: params[:me_gusta])
    @mensaje = "no hay match"
    if params[:me_gusta]
      if Interaction.where(user_one_id: params[:id_user], user_two_id: current_user.id, like: true ).count > 0
        @mensaje = "si hay match"
      end
    end
    redirect_to search_path
  end


end
