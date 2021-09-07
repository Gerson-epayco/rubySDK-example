require 'json'

class Epayco::PseController < ApplicationController
  require 'epayco-sdk-ruby'

  def initialize 
    Epayco.apiKey = '32c8ef12cc65878db1ccff30cdaf8e49'
    Epayco.privateKey = 'd84e9885d4f7de545e09736e9c5beb61'
    Epayco.lang = 'ES'
    Epayco.test = true
  end
  
  def getBanks
    begin
      bank = Epayco::Bank.list
      render json: bank
    rescue Epayco::Error => e
      puts e
      render json: e
    end
  end
end
