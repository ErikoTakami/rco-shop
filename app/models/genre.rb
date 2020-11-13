class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: 'ROCK/POPS/INDIE' },
    { id: 2, name: 'OLD ROCK' },
    { id: 3, name: 'NOISE/AVANT-GARDE' },
    { id: 4, name: 'HARD ROCK/HEAVY METAL' },
    { id: 5, name: 'PUNK' },
    { id: 6, name: 'PROGRESSIVE ROCK' },
    { id: 7, name: 'JAZZ' },
    { id: 8, name: 'SOUL/BLUES' },
    { id: 9, name: 'LATIN/BRAZIL/WORLD MUSIC' },
    { id: 10, name: 'REGGAE' },
    { id: 11, name: 'CLUB/DANCE' },
    { id: 12, name: 'HIP HOP/日本語RAP' },
    { id: 13, name: 'CLASSIC' },
    { id: 14, name: 'JAPANESE ROCK・POPS/INDIES' },
    { id: 15, name: '昭和歌謡' },
    { id: 16, name: '映画DVD・ブルーレイ／サントラ' },
    { id: 17, name: 'CD・レコードアクセサリー' },
    { id: 18, name: 'グッズ' }
  ]
end
