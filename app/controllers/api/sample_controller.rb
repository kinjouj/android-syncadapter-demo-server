module Api
  class SampleController < Api::ApiController
    def index
      samples = Sample.find(:all)

      respond_to do |format|
        format.json {
          render :json => samples
        }
      end
    end
  end
end
