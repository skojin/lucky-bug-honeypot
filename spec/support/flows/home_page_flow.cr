class HomePageFlow < BaseFlow
  def visit_home
    visit Home::Index
  end

  def should_have_guide_link
    el("a", text: "CHECK OUT THE GUIDES").should be_on_page
    el("a[href='https://luckyframework.org/guides']").should be_on_page
  end
end
