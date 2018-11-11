class AddImageUrlToPortfolios < ActiveRecord::Migration[5.2]
  def change
    add_column :portfolios, :image_url, :string
  end
end
