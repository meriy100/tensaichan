require 'net/https'
class SearchController < ApplicationController
  def word
    # res = open "https://ja.wikipedia.org/w/api.php?format=json&action=query&prop=revisions&titles=#{params[:word]}&rvprop=content&rvparse"
    res = wikipedia ERB::Util.url_encode params[:word]
    render json: {
      message: ApplicationController.helpers.message(params[:word]),
      word: ApplicationController.helpers.message(res.html_safe)
    }
  end


  private

  def wikipedia title
    xml = open("http://wikipedia.simpleapi.net/api?keyword=#{title}").read
    doc = Nokogiri::XML(xml)
    doc.search("body").first.children.text

  end

end
