class GrantsController < ApplicationController

    def create 
        grant_params = params.require(:grant).permit(:researcher, :study_question, :start_date, :communication, :platform, :budget, :login_accounts, :funding_source, :population_size, :length_of_study, :platform_targets, :computation, :third_party, :content, :HIPAA)
        Grant.create(grant_params)
        redirect_to root_path, notice: "Grant saved!"
    end
end
