class Course < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :coursecode
      t.string :coursetitle
      t.integer :semester
      t.string :program
      t.string :section
      t.string :subject
      t.string :modulecoordinator1
      t.string :modulecoordinator2
      t.string :co1
      t.string :co2
      t.string :co3
      t.string :co4
      t.string :co5
      t.integer :po1
      t.integer :po2
      t.integer :po3
      t.integer :po4
      t.integer :po5
      t.integer :po6
      t.integer :po7
      t.integer :po8
      t.integer :po9
      t.integer :po10
      t.integer :po11
      t.integer :po12
      t.integer :pso1
      t.integer :pso2   
      t.timestamps               
      
    end
  end
end
