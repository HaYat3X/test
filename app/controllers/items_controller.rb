class ItemsController < ApplicationController
    '''
        購入済みのアイテム一覧を取得する
        @return @PurchasedItems
    '''
    def getPurchasedItems
        @purchasedItems = Item.where(purchas_flag: 1)
    end

    '''
        未購入のアイテム一覧を取得する
        @return @UnpurchasedItems
    '''
    def unpurchasedItems
        @unpurchasedItems = Item.where(purchas_flag: 0)
    end

    '''
        アイテムを追加するフォーム
    '''
    def addItemForm
        @item = Item.new()
    end

    '''
        アイテムを追加する
        @param
        @return redirect
    '''
    def addItem
      item = Item.create(itemParams)

      if item.save
        redirect_to '/', alert: "アイテムを追加しました。"
      else
        redirect_to '/', alert: "アイテムを追加しました。"
      end
    end

    private

    def itemParams
      params.require(:item).permit(:category, :image, :brand, :price, :purchas_flag)
    end
end