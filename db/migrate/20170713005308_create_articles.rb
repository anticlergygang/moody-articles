class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :articleURL
      t.string :status
      t.string :moodMusicURL

      t.timestamps
    end
  end
end
