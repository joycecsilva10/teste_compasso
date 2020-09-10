require 'cucumber'
require 'httparty'
require 'rspec'
require 'json'
require 'uri'

if ENV['PLATFORM'] == 'qa'
  $host_fipe = 'https://parallelum.com.br'
  $env = 'QA'
else
  puts 'Não localizamos o ambiente informado'
end