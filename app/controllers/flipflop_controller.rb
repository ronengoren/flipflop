class FlipflopController < ApplicationController
    skip_before_action :verify_authenticity_token
 

    def index
        @users = User.all.where("id != ?", current_user.id).limit(80).shuffle
        @matchingusers = Matching.all
        @locations = Location.all
    end


    def show
        @match_list = Matching.find(params[:id])

    end


    def new
        @match = Matching.new
        

    end


  

    def create
        @match = Matching.create(matching_params)
        @match.user_id = params[:matching][:paired_user_id]
        



    
    # def create
    #         @location = Location.create(location_params)
    #         @location.neighborhood = params[:location][:neighborhood]
    #         @location.zip_code = params[:location][:zip_code]
    
      

        
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
        puts ">>>>>>>>>>>"
        puts @paired_user_id
        puts ">>>>>>>>>>>"
    # end

end
   

    private
    def matching_params
        params.require(:matching).permit(:user_id, :paired_user_id)
    end
  

 
end
