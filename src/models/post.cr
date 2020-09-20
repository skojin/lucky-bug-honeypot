class Post < BaseModel
  table do
    column title : String
    column enabled : Bool
    column notify : Bool
  end
end
