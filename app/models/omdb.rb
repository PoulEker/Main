class Omdb
    # belongs_to :omdb
    def responsesearch(search)
        url="http://www.omdbapi.com/?apikey=b511989&s=" + search
        uri = URI(url)
        json =  JSON.parse(Net::HTTP.get(uri))
        return json["Search"]
    end

    def responseshow(show)
        url="http://www.omdbapi.com/?apikey=b511989&i=" + show
        uri = URI(url)
        json =  JSON.parse(Net::HTTP.get(uri))
        return json
    end

end

