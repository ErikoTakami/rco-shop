require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '商品出品機能' do
    context '商品出品がうまくいくとき' do
      it 'すべての値が正しく入力されていれば保存できること' do
        expect(@item).to be_valid
      end

      it '国は空でも出品できること' do
        @item.country = ''
        expect(@item).to be_valid
      end
    end

    context '商品出品がうまくいかないとき' do
      it '画像が1枚ないと出品できない' do
        @item.image = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Imageを入力してください")
      end
      it 'タイトルが空だと出品できない' do
        @item.title = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Titleを入力してください")
      end
      it 'アーティストが空だと出品できない' do
        @item.artist = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Artistを入力してください")
      end
      it '商品の説明が空だと出品できない' do
        @item.text = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Textを入力してください")
      end
      it 'ジャンルの情報が選択されていないと出品できない' do
        @item.genre_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Genreを入力してください")
      end
      it 'フォーマットの情報が選択されていないと出品できない' do
        @item.format_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Formatを入力してください")
      end
      it '商品の状態の情報が選択されていないと出品できない' do
        @item.status_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Statusを入力してください")
      end
      it '価格が空だと出品できない' do
        @item.price = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Priceを入力してください")
      end
      it '販売価格は半角数字でないと出品できない' do
        @item.price = '２０００'
        @item.valid?
        expect(@item.errors.full_messages).to include("Priceは半角数字で入力してください")
      end
      it '在庫数が空だと出品できない' do
        @item.stock = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Stockを入力してください")
      end
    end
  end
end
