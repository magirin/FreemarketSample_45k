class Product < ApplicationRecord
    enum shipping_price: [['送料込み（出品者負担）', 1], ['着払い（購入者負担）', 2]]
    enum shipping_way: [['未定',""], ['クロネコヤマト', 1], ['ゆうパック', 2],['ゆうメール', 3]]
    enum shipping_date: [['1~2日で発送', 1],['2~3日で発送', 2],['4~7日で発送', 3]]
    enum product_status: [['新品、未使用',1],['目立った傷や汚れなし',2],['やや傷や汚れあり',3],['傷や汚れあり',4],['全体的に状態が悪い',5]]
    enum size: [ ["XXS以下", 1], ["XS(SS)", 2], ["S", 3], ["M", 4], ["L", 5], ["L", 6], ["XL", 7], ["2XL", 8], ["3XL", 9], ["4XL(5L)", 10], ["FREE SIZE", 11]]

    belongs_to :user
    has_one :bland
    has_one :region
    has_many :categorys
    has_many :images
    has_many :productimages
    has_many :comments
end
