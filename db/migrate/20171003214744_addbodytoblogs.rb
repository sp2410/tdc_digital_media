class Addbodytoblogs < ActiveRecord::Migration[5.1]
  def change
  	add_column :blogs, :body, :string
  end
end
