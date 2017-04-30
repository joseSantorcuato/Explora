class PrincipalController < ApplicationController
  def index
  end

  def play

#Osibilidades de consulta sql
#@arduino = Arduino.all
#@arduino = Arduino.last(5).order('id desc')
#@arduino = Arduino.limit(2).reorder('id desc')
#@segundo = Arduino.limit(2).reorder('id desc')
@arduino =  Arduino.last(1).map{ |a| a.created_at }

#@arduino =  Arduino.last(3).map{ |arduino| arduino.created_at }.join("\n")
#@arduino =  Arduino.all
#@arduino = Arduino.last


  end

  def read


  end

  def digiread

    time = Time.new

    ano = time.year
    mes = time.month
    dia = time.day
    fecha_completa = "#{dia}/#{mes}/#{ano}"

    #@arduino = Arduino.new(params[:arduino])

    @arduino = Arduino.new(texto: 'arduino', valor: 255, fecha: fecha_completa)


   @arduino.save
   render action: "digiread"

  end
end
