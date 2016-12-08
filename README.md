
## users テーブル

 #### Column
   * id : integer
   * user_name : string
   * email : string
   * password : string  

#### Association
 * has_many : follows
 * has_many : blocks
 * has_many : tweets
 * has_many : group_affiliations
 * 　

## follows テーブル
 #### Column
  * id :integer
  * follow_id : integer
  * followed_id : integer

#### Association
 * belongs_to : users

## blocks テーブル
#### Column
 * id :integer
 * block_id : integer
 * blocked_id : integer

#### Association
  * belongs_to : users

## tweets テーブル
 #### Column
 * id : integer
 * users_id : integer
 * tweets_id : integer
 * text : text

#### Association
 * belongs_to : users
 * has_many : tweet_images
 * belongs_to : tweets
 * has_many : tweets
 * has_many : favorites

## tweet_images テーブル 
 #### Column
 * id : integer
 * tweets_id : integer
 * image : string

#### Association
 *  belongs_to : tweets

## favorites テーブル
#### Column
 * id :integer
 * users_id : integer
 * tweets_id : integer

#### Association
* belongs_to : users
* belongs_to : tweets

## groups テーブル
#### Column
 * id : integer
 * group_name : string
 * group_prof : text

#### Association
 * has_many : group_affiliations

## group_affiliations テーブル
#### Column
* id : integer
* users_id : integer
* groups_id :integer

#### Association
 * belongs_to : users
 * belongs_to : groups
