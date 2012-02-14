class ChampionsController < ApplicationController
  inherit_resources
  def create
    create! {champions_path}
  end
   
end
