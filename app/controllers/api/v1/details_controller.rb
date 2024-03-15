class Api::V1::DetailsController < ApplicationController

    class Api::V1::DetailsController < ApplicationController
      skip_before_action :verify_authenticity_token

        before_action :set_detail, only: [:show, :update, :destroy]
      
        # GET /api/v1/details
        def index
          @details = Detail.all
          render json: @details
        end
      
        # GET /api/v1/details/1
        def show
          render json: @detail
        end
      
        # POST /api/v1/details
        def create
          @detail = Detail.new(detail_params)
      
          if @detail.save
            render json: @detail, status: :created
          else
            render json: @detail.errors, status: :unprocessable_entity
          end
        end
      
        # PATCH/PUT /api/v1/details/1
        def update
          if @detail.update(detail_params)
            render json: @detail
          else
            render json: @detail.errors, status: :unprocessable_entity
          end
        end
      
        # DELETE /api/v1/details/1
        def destroy
          @detail.destroy
        end
      
        private
          # Use callbacks to share common setup or constraints between actions.
          def set_detail
            @detail = Detail.find(params[:id])
          end
      
          # Only allow a list of trusted parameters through.
          def detail_params
            params.require(:detail).permit(:name, :release_date, :main_actor, :director, :genres)
          end
      end
end
