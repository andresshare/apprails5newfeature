class CreatePortfolioabs < ActiveRecord::Migration[5.2]
  def change
    create_table :portfolioabs do |t|
      t.string :title
      t.string :subtitle_string
      t.text :body
      t.text :main_image
      t.text :thumb_image

      t.timestamps
    end
  end
end
