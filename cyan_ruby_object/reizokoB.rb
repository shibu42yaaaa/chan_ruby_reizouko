# Aモデルを継承する

require './reizouko'

class ReizokoB < ReizokoA
  def cool_down
    @temperature -= 3
    puts <<~EOS
    
    冷やす機能がパワーアップしました。
    現在の温度は#{@temperature}です。
    
    EOS
  end
end

if __FILE__ == $0 then
  reizokoB = ReizokoB.new(15)
  reizokoB.cool_down
  reizokoB.power(:off)
end