require 'cuba'
require 'cuba/render'
require 'erb'

Cuba.plugin Cuba::Render
Cuba.define do
  on get do

    on "slides" do
      res.write partial("slides")
    end

    on root do
      res.redirect "/slides"
    end
  end
end
