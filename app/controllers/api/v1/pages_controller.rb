require 'alphabet_code_engine.rb'

module Api
  module V1
    class PagesController < ApiController
      before_action :set_page, only: [:openPage]

      # GET /trips/1
      def openPage
        json_response(@page.url)
      end

      # POST /trips
      def generate_shorten_urls
        @page = Page.where(url: page_params[:url]).first
        if @page != nil
          json_response(@page.shortenUrl)
          return
        end

        @page = Page.new(page_params)
        @page.shortenUrl = CharactersCodeEngine.encode((Page.count > 0 ? Page.last.id : 0) + 1)

        if @page.save
          json_response(@page.shortenUrl)
        else
          json_response(@page.errors, :unprocessable_entity)
        end
      end


      private
        # Use callbacks to share common setup or constraints between actions.
        def set_page
          @page = Page.find(CharactersCodeEngine.decode(params[:slug]))
        end
        # Only allow a list of trusted parameters through.
        def page_params
          params.fetch(:page, {}).permit(:url)
        end
    end
  end
end
