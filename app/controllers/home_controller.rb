class HomeController < ApplicationController
    def index
        @opensky = JSON.parse(opensky_api)

        @response = @opensky['states'].select{|icao,callsign,origin_country,time_position,last_contact,longitude,latitude,geo_altitude,on_ground,velocity,heading,vertical_rate,sensors,baro_altitude,squawk,spi,position_source| callsign[0..2] == "SWA"}

    end
end
