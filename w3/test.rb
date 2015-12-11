require 'httparty'
require 'pp'

class Coursera
  include HTTParty

  base_uri 'https://api.coursera.org/api/catalog.v1'
  default_params :fields => "smallIcon,shortDescription", q: "search"
  format :json

  def self.for term
    get("/courses", {query: { query: term}})
  end
end


hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'food2fork.com'
base_uri="http://#{hostport}/api"
p base_uri