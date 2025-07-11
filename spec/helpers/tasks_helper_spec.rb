require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the TasksHelper. For example:
#
# describe TasksHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe TasksHelper, type: :helper do
    it 'checks that app/helpers/tasks_helper.rb file exists' do
    expect(File).to exist(Rails.root.join('app', 'helpers', 'tasks_helper.rb'))
  end
end
