class UsersController < ApplicationController
  before_action :set_user, only: [:destroy]
   
   
  #get users
  def users_results
    # Not necessary since user needs to be admin to access the user search page
    if current_user.try(:admin?)
      @users = User.search(params)
    else
      redirect_to root_url, :notice => "Sorry, you must be an administrator to access that!"
    end
  end
  
  # DELETE /users/1
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to user_search_url }
      format.json { head :no_content }
    end
  end
  
  def update
    @user = User.find(params[:id])
      @user.disableAccount
    respond_to do |format|
      format.html { redirect_to user_search_url , :notice => "Selected account was disabled"}
    end
  end
  
  def show
    @user = User.find(params[:id])
    @user.activateAccount
    respond_to do |format|
      format.html { redirect_to user_search_url, :notice => "Selected account was activated" }
    end
  end
   
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
  end
  
  # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
    params.require(:user).permit(:email, :admin, :disabled)
  end
end