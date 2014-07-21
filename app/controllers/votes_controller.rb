class VotesController < ApplicationController

  def create

    nominee = Nominee.find(params[:nominee])
    user = User.find(params[:user])
    category = nominee.category

    # Search for occurences where the user may have voted on this category
    result = CategoriesUsers.find_by_category_id_and_user_id(category.id, user.id)
    #binding.pry
    unless result.present?

      #Associate the current user with this category
      CategoriesUsers.create(:category_id => nominee.category.id, :user_id => user.id).save

      @vote = Vote.create(:user_id => params[:user], :nominee_id => params[:nominee])

      respond_to do |format|
        if @vote.save
          format.html { redirect_to '/', notice: 'Thanks for your vote' }
          format.json { render action: 'show', status: :created, location: @vote }
        else
          format.html { render action: 'new' }
          format.json { render json: @vote.errors, status: :unprocessable_entity }
        end
      end
    end
    #redirect_to '/'
  end
end
