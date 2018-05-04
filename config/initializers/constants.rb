def opensky_api
    uri = URI("https://opensky-network.org/api/states/all")

    Net::HTTP.get(uri)
end