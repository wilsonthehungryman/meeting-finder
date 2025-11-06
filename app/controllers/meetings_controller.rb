class MeetingsController < ApplicationController
  before_action :set_meeting, only: %i[ show ]

  # GET /meetings or /meetings.json
  def index
    @meetings = Meeting.all
  end

  # GET /meetings/1 or /meetings/1.json
  def show
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meeting
      @meeting = Meeting.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def meeting_params
      params.expect(meeting: [ :source, :time, :type, :recovery_community_id, :location_id, :join_info_id ])
    end
end
