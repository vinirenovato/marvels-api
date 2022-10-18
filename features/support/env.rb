require 'cucumber'
require 'httparty'
require 'pry'
require 'rspec'
require 'yaml'

URL ||= YAML.load_file("#{File.dirname(__FILE__)}/config/urls.yml")
ENDPOINT ||= YAML.load_file("#{File.dirname(__FILE__)}/config/endpoints.yml")