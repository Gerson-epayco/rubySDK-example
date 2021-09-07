require "test_helper"

class Epayco::PseControllerTest < ActionDispatch::IntegrationTest
  test "should get getBanks" do
    get epayco_pse_getBanks_url
    assert_response :success
  end
end
