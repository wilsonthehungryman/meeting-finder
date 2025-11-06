class RecoveryCommunitiesController < ApplicationController
  before_action :set_recovery_community, only: %i[ show ]

  # GET /recovery_communities or /recovery_communities.json
  def index
    @recovery_communities = RecoveryCommunity.all
  end

  # GET /recovery_communities/1 or /recovery_communities/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recovery_community
      @recovery_community = RecoveryCommunity.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def recovery_community_params
      params.expect(recovery_community: [ :name, :description, :acronym ])
    end
end
