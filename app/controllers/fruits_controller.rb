class FruitsController < ApplicationController
  def new
    render html: FancyRenderer.new.render
  end

  def new2
  end

  def create
    render html: "Submitted #{params.inspect}"
  end
end
