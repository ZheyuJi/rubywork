require 'httparty'
require 'pp'

class Coursera
  include HTTParty

  base_uri 'https://api.coursera.org/api/catalog.v1'
  default_params :fields => "smallIcon,shortDescription", q: "search"
  format :json

  def self.for term
    get("/courses", {query: { query: term}})["elements"]
  end
end

pp Coursera.for "python"

