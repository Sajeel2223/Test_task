# app/controllers/providers_controller.rb
class ProvidersController < ApplicationController
    def new
      @provider = Provider.new
    end
  
    def create
      @provider = DibcService.add_provider(provider_params)
      if @provider.persisted?
        redirect_to @provider, notice: 'Provider was successfully created.'
      else
        render :new
      end
    end
  
    private
  
    def provider_params
      params.require(:provider).permit(:name, :service)
    end
  end
  