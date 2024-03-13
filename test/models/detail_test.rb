require "test_helper"

class DetailTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def show
    @detail = Detail.find(params[:id])
  end
  
end
