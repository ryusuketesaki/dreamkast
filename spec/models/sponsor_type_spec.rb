# == Schema Information
#
# Table name: sponsor_types
#
#  id            :bigint           not null, primary key
#  name          :string(255)
#  order         :integer
#  visible       :boolean          default(TRUE)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  conference_id :bigint           not null
#
# Indexes
#
#  index_sponsor_types_on_conference_id  (conference_id)
#
# Foreign Keys
#
#  fk_rails_...  (conference_id => conferences.id)
#

require 'rails_helper'

RSpec.describe(SponsorType, type: :model) do
  pending "add some examples to (or delete) #{__FILE__}"
end
