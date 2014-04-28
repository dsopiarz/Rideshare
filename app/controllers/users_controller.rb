Class UsersController < ApplicationController
  before_action :set_user, only: [:destroy]
   
   
  #get users
  def user_results
    @users = User.search(params)
  end
  
  # DELETE /users/1
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to user_search_url }
      format.json { head :no_content }
    end
  end
   
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
	end
	
	# Never trust parameters from the scary internet, only allow the white list through.
    def user_params
	  params.require(:user).permit(:email)
	end
    