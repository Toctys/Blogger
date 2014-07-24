class AddDefaultToPublished < ActiveRecord::Migration
  def change
  	change_column_default :post, :published, false
  end
end
