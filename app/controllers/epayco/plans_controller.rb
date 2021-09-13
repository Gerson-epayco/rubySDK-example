require 'json'
require 'epayco-sdk-ruby'

class Epayco::PlansController < ApplicationController
  def initialize 
    Epayco.apiKey = '32c8ef12cc65878db1ccff30cdaf8e49'
    Epayco.privateKey = 'd84e9885d4f7de545e09736e9c5beb61'
    Epayco.lang = 'ES'
    Epayco.test = true
  end

  def destroy 
    begin
      id_plan = params[:id]
      puts id_plan
      plan = Epayco::Plan.delete(id_plan)
      puts plan
      render json: plan
    rescue Epayco::Error => e
      puts e
      render json: e
    end
  end
end
