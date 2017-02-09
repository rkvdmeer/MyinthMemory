class CreateJoinTablePomsTags < ActiveRecord::Migration
  def change
    create_join_table :poms, :tags do |t|
      # t.index [:pom_id, :tag_id]
      # t.index [:tag_id, :pom_id]
    end
  end
end
