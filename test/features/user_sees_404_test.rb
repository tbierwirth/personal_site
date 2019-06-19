require './test/test_helper'

class ErrorTest < CapybaraTestCase
  def test_user_can_see_404_error
    visit '/blog/'

    assert page.has_content?("Page not found.")
    assert_equal 404, page.status_code
  end
end
