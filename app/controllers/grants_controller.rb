class GrantsController < ApplicationController

    def index 
        @grants = Grant.all
    end
    
    def show 
        @grant = Grant.find(params[:id])
    end

    def create 
        grant_params = params.require(:grant).permit(:researcher, :study_question, :start_date, :communication, :platform, :budget, :login_accounts, :funding_source, :population_size, :length_of_study, :computation, :third_party, :content, :HIPAA)
        Grant.create(grant_params)
        redirect_to root_path, notice: "Grant saved!"
    end

end
