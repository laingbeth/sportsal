class SportsController < ApplicationController
 
  def index
    response = HTTParty.get "http://api.usatoday.com/open/salaries/#{params[:sport]}?players=&encoding=json&api_key=rsf229wnbzyeq3cf4y6wqrfg"
    @data = JSON.parse(response.body)

    @salaries_object = @data["salaries"][0]
    @salaries = @salaries_object["salary"]
    @teams = []
    @teams_hash = Hash.new()
    @teams_hash_obj = Hash.new()

    @salaries.each do |salary| 
      @teams_hash[salary['team_full_name']] = salary['team_last_name']
      @team = Team.new(name: salary['team_full_name'], fullname: salary['team_last_name'])
      unless @teams.include?(@team)
        @teams.push(@team)
        @teams_hash_obj[salary['team_full_name']] = @team
      end
    end
    
    puts @teams_hash
    puts @teams_hash_obj
  end

end