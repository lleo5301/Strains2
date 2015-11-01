class SymptomsController < ApplicationController
  def index

  end

  #helper methods for getting list of strains
  private
    def find_strains(symptom)
      url = "http://api.leoqz.me/api/strains?symptom=#{symptom}"
      response = HTTParty.get(url)
      json_data = JSON.parse(response.body)
      @strains = json_data["data"]
    end
  helper_method :find_strains


  def find_plant(name)
    url = "http://api.leoqz.me/api/strains&#{name}"
    response = HTTParty.get(url)
    json_data = JSON.parse(response.body)
    @name = json_data["data"]
  end
end
