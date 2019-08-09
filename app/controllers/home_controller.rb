class HomeController < ApplicationController
  before_action :commen_content, :only => [:index, :team]

  def commen_content
    @hero_name = Faker::Superhero.name
    @hero_power = Faker::Superhero.power
    @corp_poer = Faker::Company.bs
    @corp_title = Faker::Company.name
    @rand_num = rand(1..1000)
    @set_num = rand(1..4)
    @rand_bg = rand(1..2)
    if @set_num = 1
      @set = "set1"
    elsif @set_num = 2
      @set = "set2"
    elsif @set_num = 3
      @set = "set3"
    else
      @set = "set4"
    end
    if @rand_bg =1
      @background = "bg1"
    else
      @background = "bg2"
    end

    @avatar = Faker::Avatar.image(slug: @rand_num, size: "300x300", format: "png", set: @set, bgset: @background) #=> "https://robohash.org/my-own-slug.bmp?size=50x50&set=set1&bgset=bg1"
  end
  def index

  end

  def team
    @team_number = params[:team_number].to_i
  end

end
