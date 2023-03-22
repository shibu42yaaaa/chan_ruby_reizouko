require './power'

class ReizokoA
  def initialize(num)
    @set_temperture = num.to_i
    @temperature = 25
    @foodstuff = []
    power(:on)
    puts "設定温度を#{@set_temperture}に設定しました。"
    puts "現在の温度は#{@temperature}度です。"
    puts "#{@foodstuff.size} 個の食材があります"
  end

  def cool_down
    @temperature -= 1 if @set_temperture < @temperature
    puts "内部を冷やして#{@temperature}になりました。"
  end

  def open_door
    @temperature += 3
    puts "ドアを開けたことによって内部温度が上昇。#{@temperature}度になりまいた"
    puts "#{@foodstuff.size} 個の食材があります。"
    @foodstuff.each do |v|
      puts v
    end
  end

  # 冷蔵庫に食材を入れる
  def puts_in(str)link_to "link text...", parent_child_path(@parent, @child)
    @foodstuff << str
  end

  #電源ON
# モジュール化
#   def power(onoff)
#     puts "電源を入れました。" if onoff.to_sym == :on
#     puts "電源を切りました。" if onoff.to_sym == :off
#   end

  include Power
end

if __FILE__ == $0 then
  modelA = ReizokoA.new(15)
  modelA.cool_down
  modelA.puts_in("apple")
  modelA.open_door
  modelA.power(:off)
end
