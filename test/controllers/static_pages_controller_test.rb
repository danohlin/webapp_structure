require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "Web App"
  end
  
  test "should get root" do
    get root_path
    assert_response :success
  end
  
  test "should get home" do
    get root_url
    assert_response :success
    assert_select "title", "#{@base_title} - Home"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "#{@base_title} - About"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "#{@base_title} - Contact"
  end

end
