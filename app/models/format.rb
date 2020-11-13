class Format < ActiveHash::Base
  self.data = [
    { id: 1, name: 'LP(レコード)' },
    { id: 2, name: '7"(レコード)' },
    { id: 3, name: '10"(レコード)' },
    { id: 4, name: '12"(レコード)' },
    { id: 5, name: 'CD' },
    { id: 6, name: 'DVD' },
    { id: 7, name: 'BLU-RAY(ブルーレイ)' },
    { id: 8, name: 'BOOK' },
    { id: 9, name: 'GOODS' },
    { id: 10, name: 'CASSETTE TAPE' },
    { id: 11, name: 'その他' }
  ]
end
