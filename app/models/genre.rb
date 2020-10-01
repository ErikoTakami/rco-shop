class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'ROCK/POPS/INDIE' },
    { id: 3, name: 'OLD ROCK' },
    { id: 4, name: 'NOISE/AVANT-GARDE' },
    { id: 5, name: 'HARD ROCK/HEAVY METAL' },
    { id: 6, name: 'PUNK' },
    { id: 7, name: 'PROGRESSIVE ROCK' },
    { id: 8, name: 'JAZZ' },
    { id: 9, name: 'SOUL/BLUES' },
    { id: 10, name: 'LATIN/BRAZIL/WORLD MUSIC' },
    { id: 11, name: 'REGGAE' },
    { id: 12, name: 'CLUB/DANCE' },
    { id: 13, name: 'HIP HOP/日本語RAP' },
    { id: 14, name: 'CLASSIC' },
    { id: 15, name: 'JAPANESE ROCK・POPS/INDIES' },
    { id: 16, name: '昭和歌謡' },
    { id: 17, name: '映画DVD・ブルーレイ／サントラ' },
    { id: 18, name: 'CD・レコードアクセサリー' },
    { id: 19, name: 'グッズ' }
  ]
end
