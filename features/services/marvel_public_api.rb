module Rest
  class MarvelPublicApi
    include HTTParty

    base_uri URL['marvel']

    def get_stories(data)
      params = { 'ts' => data['ts'], 'apikey' => data['apikey'], 'hash' => data['hash'], 'limit' => '5' }
      self.class.get(ENDPOINT['stories'], query: params)
    end

    def get_character(data, character_id)
      params = { 'ts' => data['ts'], 'apikey' => data['apikey'], 'hash' => data['hash']}
      endpoint = "#{ENDPOINT['characters']}#{character_id}"
      self.class.get(endpoint, query: params)
    end
  end
end