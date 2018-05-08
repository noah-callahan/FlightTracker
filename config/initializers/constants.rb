def opensky_api
    uri = URI("https://opensky-network.org/api/states/all")

    Net::HTTP.get(uri)
end

FLIGHT_INDEX = ["icao","callsign","origin_country","time_position","last_contact","longitude","latitude","geo_altitude","on_ground","velocity","heading","vertical_rate","sensors","baro_altitude","squawk","spi","position_source"]