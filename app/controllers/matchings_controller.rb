class MatchingsController < ApplicationController

    def index

        @matchings = Matching.all
      
    end

    def show
        @matching = current_user.matchings.all
      
    end
end
