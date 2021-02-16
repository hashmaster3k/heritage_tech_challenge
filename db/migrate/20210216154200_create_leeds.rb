class CreateLeeds < ActiveRecord::Migration[5.2]
  def change
    create_table :leeds do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone

      t.timestamps
    end
  end
end
