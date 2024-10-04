module ApplicationHelper
  def on_landing_page?
    controller_name == "pages" && action_name == "landing"
  end
end
