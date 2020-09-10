class CreateUseralcohols < ActiveRecord::Migration[6.0]
  def change
    create_table :useralcohols do |t|
      t.integer :user_id
      t.integer :alcohol_id
      t.integer :rating
    end
  end
end
