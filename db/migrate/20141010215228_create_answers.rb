class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
    	t.belongs_to :user
    	t.string :body
    	t.integer :vote_count, default: 0
    	t.timestamps
    end
  end
end
