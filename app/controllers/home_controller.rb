class HomeController < ApplicationController
    def index
        @opensky = JSON.parse(opensky_api)
    end
end
