class JoinInfosController < ApplicationController
  before_action :set_join_info, only: %i[ show ]

  # GET /join_infos or /join_infos.json
  def index
    @join_infos = JoinInfo.all
  end

  # GET /join_infos/1 or /join_infos/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_join_info
      @join_info = JoinInfo.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def join_info_params
      params.expect(join_info: [ :link, :meeting_id, :meeting_provider, :password ])
    end
end
