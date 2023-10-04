API_KEY = '23cbbb222df6474face570ab39089e3f'


require 'net/http'
require 'uri'
require 'json'

# Your Google News Search API key
api_key = API_KEY

# The search query
query = 'Ruby on Rails'

# Build the request URL
uri = URI("https://newsapi.org/v2/everything?q=#{query}&apiKey=#{api_key}")

# Make the HTTP request
http = Net::HTTP.new(uri.host, uri.port)
http.use_ssl = true
request = Net::HTTP::Get.new(uri)
response = http.request(request)

# Parse the JSON response
json_response = JSON.parse(response.body)

# Print the news articles
puts 'News articles:'
puts json_response['articles'].map { |article| article['title'] }

