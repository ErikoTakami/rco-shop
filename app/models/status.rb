class Status < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'S 未開封' },
    { id: 3, name: 'A 無傷' },
    { id: 4, name: 'A ほぼ無傷' },
    { id: 5, name: 'B ほぼ美品状態' },
    { id: 6, name: 'B ノイズほとんどなし' },
    { id: 7, name: 'B 多少の汚れあり' },
    { id: 8, name: 'B ノイズはあるが十分聴ける' },
    { id: 9, name: 'B ノイズがある' },
    { id: 10, name: 'C かなりノイズがある' }
  ]
end
