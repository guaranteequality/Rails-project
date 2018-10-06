class AddImagenameToPostAjob < ActiveRecord::Migration[5.1]
  def change
    add_column :post_ajobs, :imagename, :string
  end
end
