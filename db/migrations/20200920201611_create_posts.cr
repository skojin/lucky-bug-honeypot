class CreatePosts::V20200920201611 < Avram::Migrator::Migration::V1
  def migrate
    # Learn about migrations at: https://luckyframework.org/guides/database/migrations
    create table_for(Post) do
      primary_key id : Int64
      add_timestamps
      add title : String
      add enabled : Bool
      add notify : Bool
    end
  end

  def rollback
    drop table_for(Post)
  end
end
