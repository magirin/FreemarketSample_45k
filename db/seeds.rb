User.create!(
  id: "1",
  email: "aaa@gmail.com",
  password: "1111111111111111",
  kanji_name: "鈴木太郎",
  kana_name: "スズキタロウ",
  nickname: "すーさん",
  birth_of_date: "1993/01/01"
)

Product.create!(
  id: "1",
  name: "パーカー",
  price: 0,
  size: 0,
  description: "おすすめです",
  favorite: 1,
  product_quality: 0,
  shipping_price: 0,
  shipping_way: 0,
  shipping_place: 0,
  shipping_date: 0,
  product_status: 0,
  user_id: "1",
  bland_id: nil,
  category_id: "1",
  sub_category_id: "1",
  item_id: "1",
  created_at: "2019-01-01 00:00:00",
  updated_at: "2019-01-01 00:00:00"
)

Category.create!(
  [
   {
    id: '1',
    name: 'シャツ',
    created_at: "2019-01-01 00:00:00",
    updated_at: "2019-01-01 00:00:00"
   },
   {
    id: '2',
    name: 'パーカー',
    created_at: "2019-01-01 00:00:00",
    updated_at: "2019-01-01 00:00:00"
   }
  ]
)

SubCategory.create!(
  [
   {
    id: '1',
    name: 'シャツ',
    category_id: "1",
    created_at: "2019-01-01 00:00:00",
    updated_at: "2019-01-01 00:00:00"
   },
   {
    id: '2',
    name: 'パーカー',
    category_id: "1",
    created_at: "2019-01-01 00:00:00",
    updated_at: "2019-01-01 00:00:00"
   }
  ]
)

Item.create!(
  [
   {
    id: '1',
    name: 'シャツ',
    sub_category_id: "1",
    created_at: "2019-01-01 00:00:00",
    updated_at: "2019-01-01 00:00:00"
   },
   {
    id: '2',
    name: 'パーカー',
    sub_category_id: "1",
    created_at: "2019-01-01 00:00:00",
    updated_at: "2019-01-01 00:00:00"
   }
  ]
)