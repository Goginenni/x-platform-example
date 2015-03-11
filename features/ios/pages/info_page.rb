require 'calabash-cucumber/ibase'

class InfoPage < Calabash::IBase

  def trait
    "UINavigationBar marked:'Support'"
  end

  def assert_info_present
    queries = ['Activity Logs', 'WordPress Help Center']
    queries.each do |txt|
      check_element_exists "* marked:'#{txt}'"
    end

    screenshot_embed
  end

  def go_back
    tap_mark 'Close'
    page(LoginPage).await
  end

end