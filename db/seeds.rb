# BASE_URL = ENV["BASE_URL"]

response = RestClient.get(ENV["BASE_URL"])

events_array = JSON.parse(response)


count = 0



events_array.each do |e|

    

    if e["coordinates"] != ""
    long_lat = e["coordinates"].split(', ')

    latitude = long_lat[0][0,11]
    longitude = long_lat[1][0,12]

    end

    start_date_time = (e['startdate'] + " " + e['starttime']).to_datetime

    end_date_time = (e['startdate'] + " " + e['endtime']).to_datetime

    count = count + 1

    Event.create( title: e["title"], guide: e["guide"], description: e["description"], park_ids: e["parkids"], park_names: e["parknames"], start_date_time: start_date_time, end_date_time: end_date_time, contact_phone: e["contact_phone"], image: e["image"], categories: e["categories"], location: e["location"], link: e["link"], latitude: latitude , longitude: longitude)

end

puts count