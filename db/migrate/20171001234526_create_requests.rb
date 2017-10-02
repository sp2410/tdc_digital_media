class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.string :name
      t.string :company_name
      t.string :email
      t.string :descriotion
      t.string :timeline
      t.string :reference
      t.string :other

      t.timestamps
    end
  end
end
