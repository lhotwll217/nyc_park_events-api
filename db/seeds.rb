# BASE_URL = ENV["BASE_URL"]

response = RestClient.get(ENV["BASE_URL"])

events_array = JSON.parse(response)





events_array.each do |e|

    long_lat = e.coordinates.split(', ')

    Event.create( title: e["title"], guide: e["guide"], description: e["description"], end_date: e["enddate"], park_ids: e["parkids"], park_names: e["parknames"], start_date: e["startdate"], start_time: e["starttime"], end_time: e["endtime"], contact_phone: e["contact_phone"], image: e["image"], categories: e["categories"], location: e["location"], link: e["link"], latitude: e[long_lat[0][0,11]], longitude: e[long_lat[1][0,12]])

end