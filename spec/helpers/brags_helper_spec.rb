require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the BragsHelper. For example:
#
# describe BragsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe BragsHelper, type: :helper do
  it 'checks that app/helpers/brags_helper.rb file exists' do
    expect(File).to exist(Rails.root.join('app', 'helpers', 'brags_helper.rb'))
  end
end
