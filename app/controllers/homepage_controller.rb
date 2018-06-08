class HomepageController < ApplicationController
    

    def index
      
        @matchingusers = Matching.all
        @locations = Location.all
    end

    # def new
    #     @match = Matching.new
        

    # end


    def new
        @location = Location.new

    end

    # def create
       
    #     @match = Matching.create(matching_params)
    #     @match.user_id = params[:matching][:user_id]
    #     @match.paired_user_id = params[:matching][:paired_user_id]


    # end
    def create
            @location = Location.create(location_params)
            @location.neighborhood = params[:location][:neighborhood]
            @location.zip_code = params[:location][:zip_code]
            if @location.save
                redirect_to '/flipflop'
              else
                # This line overrides the default rendering behavior, which
                # would have been to render the "create" view.
                render "homepage"
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
        puts ">>>>>>>>>>>"
        puts @paired_user_id
        puts ">>>>>>>>>>>"
    end

   
   

    private
    def location_params
        params.require(:location).permit(:user_id, :neighborhood, :zip_code)
    end
  


end
