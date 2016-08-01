require 'test_helper'

class DossierTest < ActiveSupport::TestCase

test "should not save dossier without title" do
  dossier = Dossier.new
  assert_not dossier.save
end

end
