# frozen_string_literal: true

require 'rest-client'
require 'json'

class BingSearch
  def initialize
    search
  end

  private

  def search
    puts 'Enter bing search query'
    param_value = gets.chomp
    search_loc = 'https://www.bing.com/search'
    param_name = 'q'
    param = {}
    param[param_name] = param_value
    @response = RestClient.get(search_loc, param)
    display_response
  end

  def display_response
    puts "Code\n#{@response.code}\n"
    puts "Cookies\n#{@response.cookies}"
    puts "Headers\n#{@response.headers}\n"
    puts "Body\n#{@response.body}"
  end
end

BingSearch.new
