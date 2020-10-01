class Format < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'LP(レコード)' },
    { id: 3, name: '7"(レコード)' },
    { id: 4, name: '10"(レコード)' },
    { id: 5, name: '12"(レコード)' },
    { id: 6, name: 'CD' },
    { id: 7, name: 'DVD' },
    { id: 8, name: 'BLU-RAY(ブルーレイ)' },
    { id: 9, name: 'BOOK' },
    { id: 10, name: 'GOODS' },
    { id: 11, name: 'CASSETTE TAPE' },
    { id: 12, name: 'その他' }
  ]
end
