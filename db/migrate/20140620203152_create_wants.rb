class CreateWants < ActiveRecord::Migration
  def change
    create_table :wants do |t|
      t.integer :wanted_user_id
      t.integer :wanting_user_id

      t.timestamps
    end
  end
end
