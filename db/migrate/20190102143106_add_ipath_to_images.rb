class AddIpathToImages < ActiveRecord::Migration[5.2]
  def change
    add_column :images, :ipath, :string
  end
end
