# README

# DB設計

***
***

## users Table
| Column | Type| Option |
| :--- | :---: | :---: |
| id | integer | null:false |
| kanji_name | string | null:false,VARCHAR(70) |
| kana_name | string | null:false,VARCHAR(70) |
| nickname | string | null:false,VARCHAR(20) |
| birth_of_date | integer | null:false |
| password | integer | null:false |
| prefecture | string | null:false |
| address | string | null:false |
| profile | string | null:false |
| mail | string |  null:false, unique:true |
| credit_number | integer | unique:true,null:false |
| credit_security_number | integer | char(4), null:false |
| credit_expire_date | integer | null:false |
| phone_number | string | unique:true,VARCHAR(255), null:false |


### Association
has_many :reputations
has_many :comments
has_many :products
has_many :soldproducts

***
***

## reputations Table
| Column | Type| Option |
| :--- | :---: | :---: |
| id | integer | null:false |
| user_id | integer | null:false, foreign_key: true |
| status | integer | null:false |

### Association
belongs_to :user

***
***


## products Table
| Column | Type| Option |
| :--- | :---: | :---: |
| id | integer | null:false |
| name | string | null:false,VARCHAR(40),index:true |
| price | string | null:false, VARCHAR(9999999) |
| size | integer | null:false |
| description | string | null:false,VARCHAR(1000) |
| favorite | integer | null:true |
| prodution_quality | string | null:false |
| shipping_price | enum(buyer,exhibitor) | null:false |
| shipping_way | enum(undicided,kuroneko,yupack,yumail) | null:true |
| shipping_place | string | null:false |
| shipping_date | enum(1-2days,2-3days,4-7days) | null:false |
| product_status | string | null:false |
| user_id | integer | null:false, foreign_key: true|
| bland_id | integer | null:true, foreign_key: true|
| category_id | integer | null:false, foreign_key: true |

### Association
- belongs_to :user
- has_one :bland
- has_many :categorys
- has_many :images
- has_many :productimages
- has_many :comments

***
***

## sold_products Table
| Column | Type| Option |
| :--- | :---: | :---: |
| id | integer | null:false |
| product_id| integer | null:false |
| user_id | integer | null:false, foreign_key: true |


### Association
belongs_to :user
belongs_to :product

***
***

## product_images Table
| Column | Type| Option |
| :--- | :---: | :---: |
| id | integer | null:false |
| user_id | integer | null:false, foreign_key: true|
| product_id | integer | null:false, foreign_key: true |
| image | string | null:false |


### Association
- belongs_to :product
- belongs_to :user

***
***

## blands Table
| Column | Type| Option |
| :--- | :---: | :---: |
| id | integer | null:false |
| parent_id | integer | null:true |
| name | string | null:false,index:true |

### Association
- belongs_to :product

***
***

## categorys Table
| Column | Type| Option |
| :--- | :---: | :---: |
| id | integer | null:false |
| name | string | null:false ,index:true|

### Association
- belongs_to :product

***
***

## sub_category Table
| Column | Type| Option |
| :--- | :---: | :---: |
| id | integer | null:false |
| name | string | null:false |
| category_id | integer | null:false, foreign_key: true |



***
***

## item Table
| Column | Type| Option |
| :--- | :---: | :---: |
| id | integer | null:false |
| name | string | null:false |
| sub_category_id | integer | null:false, foreign_key: true |


***
***
## comments Table
| Column | Type| Option |
| :---: | :---: | :---: |
| id | integer | null:false |
| comment | string | null:false,VARCHAR(1000) |
| user_id | integer | null:false, foreign_key: true |
| product_id | integer | null:false, foreign_key: true |

### Association
- belongs_to :user 
- belongs_to :product

***
***
