class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :agent_mls
      t.text :description
      t.string :image_url
      t.string :office_mls
      t.string :phone_number
      t.string :country_code

      t.timestamps null: false
    end
  end
end
