## Endpoint Stories.get
Dado('ter uma massa configurada do endpoint Stories.get') do
  @stories_get ||= OpenStruct.new
  @stories_get.data = MarvelFac.data_security
end

Quando('chamo o endpoint Stories.get') do
  @stories_get.response = marvel_public_api.get_stories(@stories_get.data)
rescue StandardError => e
  @stories_get.error = e
end

Entao('verifico o retorno do endpoint Stories.get') do
  response = @stories_get.response
  expect(response.code).to eql 200
  expect(response['data']['count']).to eql 5
  puts "Title 1 => #{response['data']['results'][0]['title']}"
  puts "Title 2 => #{response['data']['results'][1]['title']}"
  puts "Title 3 => #{response['data']['results'][2]['title']}"
  puts "Title 4 => #{response['data']['results'][3]['title']}"
  puts "Title 5 => #{response['data']['results'][4]['title']}"
end

## Endpoint Characters.get
Dado('ter uma massa configurada do endpoint Characters.get para o {string}') do |character|
  @character_get ||= OpenStruct.new
  @character_get.data = MarvelFac.data_security
  @character_get.character = MarvelFac.my_characters(character)
end

Quando('chamo o endpoint Characters.get') do
  @character_get.response = marvel_public_api.get_character(@character_get.data, @character_get.character)
rescue StandardError => e
  @character_get.error = e
end

Entao('verifico o retorno do endpoint Characters.get para o {string}') do |character|
  response = @character_get.response
  character.eql?('inexistente') ? (expect(response.code).to eql 404) : (expect(response.code).to eql 200)
  case character
  when 'agents of atlas'
    expect(response['data']['results'][0]['name']).to eql 'Agents of Atlas'
  when 'agent brand'
    expect(response['data']['results'][0]['name']).to eql 'Agent Brand'
  when 'balder'
    expect(response['data']['results'][0]['name']).to eql 'Balder'
  else
    expect(response['status']).to eql "We couldn't find that character"
  end
end
