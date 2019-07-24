class Product < ApplicationRecord
    enum shipping_price: [['送料込み（出品者負担）'], ['着払い（購入者負担）'] ]
    enum shipping_way: [['未定'], ['クロネコヤマト'], ['ゆうパック'],['ゆうメール'] ]
    enum shipping_date: [['1~2日で発送'],['2~3日で発送'],['4~7日で発送'] ]
    enum size: [ ["XXS以下"], ["XS(SS)"], ["S"], ["M"], ["L"], ["XL"], ["2XL"], ["3XL"], ["4XL(5L)"], ["FREE SIZE"] ]
    enum product_quality: [ ["新品、未使用"], ["目立った傷や汚れなし"], ["やや傷や汚れあり"], ["傷や汚れあり"], ["全体的に状態が悪い"] ]
    enum product_status: [['未購入'],['購入済み'],['取引中'] ]


    belongs_to :user
    has_one :bland
    has_one :region
    has_many :categorys
    has_many :images
    has_many :product_images
    has_many :comments
    accepts_nested_attributes_for :product_images
end
