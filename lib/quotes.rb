require 'httparty'

module Quotes
  BASE_URL = 'http://quotes.rest'

  def qod(author: false)
    res = HTTParty.get(BASE_URL + '/qod')
    return '' unless res.code == 200
    quote = ['contents']['quotes'][0]
    "#{quote['quote']}#{'\n- ' + quote['author'] if author}"
  end
  module_function 'qod'
end
