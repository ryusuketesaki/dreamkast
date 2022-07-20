# == Schema Information
#
# Table name: talks
#
#  id                    :integer          not null, primary key
#  title                 :string(255)
#  abstract              :text(65535)
#  movie_url             :string(255)
#  start_time            :time
#  end_time              :time
#  talk_difficulty_id    :integer
#  talk_category_id      :integer
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  conference_id         :integer
#  conference_day_id     :integer
#  track_id              :integer
#  video_published       :boolean          default("0"), not null
#  document_url          :string(255)
#  show_on_timetable     :boolean
#  talk_time_id          :integer
#  expected_participants :json
#  execution_phases      :json
#  sponsor_id            :integer
#
# Indexes
#
#  index_talks_on_conference_id       (conference_id)
#  index_talks_on_talk_category_id    (talk_category_id)
#  index_talks_on_talk_difficulty_id  (talk_difficulty_id)
#

require 'rails_helper'

describe Talk, type: :model do
  context 'update on_air status' do
    before do
      create(:cndt2020)
    end
    let!(:talk1) { create(:talk1) }
    let!(:talk2) { create(:talk2, :conference_day_id_1) }
    let!(:video1) { create(:video, :off_air) }
    let!(:video2) { create(:video, :on_air, :talk2) }
    context 'start streaming talk1' do
      before do
        talk1.start_streaming
      end

      it 'should be on_air' do
        expect(talk1.video.on_air).to(eq(true))
      end

      example 'talk in the same track and same conference_day should be off_air' do
        expect(talk2.video.on_air).to(eq(false))
      end
    end

    context 'stop streaming' do
      it 'should be off_air' do
        talk1.stop_streaming
        expect(talk1.video.on_air).to(eq(false))
      end
    end
  end
end
