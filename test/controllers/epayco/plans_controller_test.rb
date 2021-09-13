require "test_helper"

class Epayco::PlansControllerTest < ActionDispatch::IntegrationTest
  test "should get deletePlan" do
    get epayco_plans_deletePlan_url
    assert_response :success
  end
end
