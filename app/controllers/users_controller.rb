class UsersController < ApplicationController
  def index
    @users = User.all
    @location= Location.all
    @matchings = Matching.all
    @match_list = Matching.find(params[:paired_user_id])


  end

  def show
    @user = User.find(params[:id])
    @user_location = Location.find(params[:id])
    @result = request.location
    @matching = current_user.matchings.all



   end

   def create
    @location = Location.create(location_params)
    @location.neighborhood = params[:location][:neighborhood]
    @location.zip_code = params[:location][:zip_code]
    # if @location.save
    #     redirect_to current_user
    #   else
    #     # This line overrides the default rendering behavior, which
    #     # would have been to render the "create" view.
    #     redirect_to current_user
    # end

  end
    



# { 
#     user_id: current_user_int, 
#     paired_user_id: userIdInt 
# }
# {
#     matching: {
#         user_id: 2,
#         paired_user_id: 2
#     }
# }
# puts ">>>>>>>>>>>"
# puts @paired_user_id
# puts ">>>>>>>>>>>"
# end




private
def location_params
params.require(:location).permit(:user_id, :neighborhood, :zip_code)
end


        
      
    
end
