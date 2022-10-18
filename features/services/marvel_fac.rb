class MarvelFac
  def self.data_security
    YAML.load_file("#{File.dirname(__FILE__)}/data_security.yml")
  end

  def self.my_characters(characters)
    case characters
    when 'agents of atlas'
      '1011198'
    when 'agent brand'
      '1011297'
    when 'balder'
      '1011456'
    else
      '0101'
    end
  end
end
