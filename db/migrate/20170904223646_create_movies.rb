class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string 'name'
      t.string 'director'
      t.string 'category'
      t.integer 'year'
      t.integer 'rating'
    end
  end
end
