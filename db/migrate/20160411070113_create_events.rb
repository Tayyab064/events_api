class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name , null: false
      t.string :fb_url , null: false
      t.datetime :edate ,null: false
      t.text :description , null: false
      t.string :email , null: false
      t.string :first_name , null: false
      t.string :last_name , null: false
      t.string :country , null: false
      t.string :state , null: false
      t.string :city , null: false
      t.integer :postal_code , null: false

      t.timestamps null: false
    end
  end
end
