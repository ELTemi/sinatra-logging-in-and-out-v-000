class Helpers < ActiveRecord::Migration[5.1]
  def change
    create_table :helpers do |t|
      t.string :current_user
      t.boolean :is_logged_in
    end
  end
end
