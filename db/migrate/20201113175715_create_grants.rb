class CreateGrants < ActiveRecord::Migration[6.0]
  def change
    create_table :grants do |t|
      t.string :researcher
      t.text :study_question
      t.date :start_date
      t.string :budget
      t.string :login_accounts
      t.string :funding_source
      t.string :population_size
      t.string :length_of_study
      t.string :communication
      t.string :platform
      t.string :computation
      t.string :third_party
      t.string :content
      t.string :HIPAA

      t.timestamps
    end
  end
end
