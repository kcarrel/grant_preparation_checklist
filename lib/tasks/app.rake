namespace :app do 

    task :create_sample_grants => :environment do
        grants = [["Kermit", 
            "What do frogs like?", 
            "01/02/21", 
            "text messaging", 
            "web", 
            "0-50,000", 
            "participants", 
            "NIH", 
            "1 -125",
            "less than 1 year",
            "engagement/tracking",
            "SOAP APIs",
            "pre-written",
            "Unsure"
        ], ["Chef", 
            "What is the best food", 
            "01/02/21", 
            "text messaging", 
            "web", 
            "50,000+", 
            "participants", 
            "Private", 
            "1 -125",
            "less than 1 year",
            "engagement/tracking",
            "SOAP APIs",
            "pre-written",
            "Unsure"
        ]]
        grants.each do |grant_data|
            grant = Grant.create researcher: grant_data[0],
                    study_question: grant_data[1],
                    start_date: grant_data[2],
                    communication: grant_data[3],
                    platform: grant_data[4],
                    budget: grant_data[5],
                    login_accounts: grant_data[6],
                    funding_source: grant_data[7],
                    population_size: grant_data[8],
                    length_of_study: grant_data[9],
                    computation: grant_data[10],
                    third_party: grant_data[11],
                    content: grant_data[12],
                    HIPAA: grant_data[13]
        end
    end
end
