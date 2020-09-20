class PostBox < Avram::Box
  def initialize
    title "My Post"
    enabled false
    notify false
  end
end
