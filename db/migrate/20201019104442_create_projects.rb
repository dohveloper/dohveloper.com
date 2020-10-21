class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :summaryOfChallenge
      t.string :summaryOfSolution
      t.string :summaryOfOutcome
      t.string :challenge
      t.string :solution
      t.string :outcome
      t.string :comment
      t.integer :order
      t.string :category

      t.timestamps
    end
  end
end
