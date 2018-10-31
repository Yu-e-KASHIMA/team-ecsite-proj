set names utf8;
set foreign_key_checks=0;

drop database if exists i1810c;
create database i1810c;
use i1810c;

create table user_info(
id int primary key not null auto_increment,
user_id varchar(16) not null unique,
password varchar(16) not null,
family_name varchar(32) not null,
first_name varchar(32) not null,
family_name_kana varchar(32) not null,
first_name_kana varchar(32) not null,
sex tinyint default 0 not null,
email varchar(32) not null,
status tinyint default 0 not null,
logined tinyint default 0 not null,
regist_date datetime not null,
update_date datetime
)
default charset=utf8
;
insert into user_info values
(1,"guest","guest","インターノウス","ゲストユーザー","いんたーのうす","げすとゆーざー",0,"guest@gmail.com",0,0,now(),now()),
(2,"guest2","guest2","インターノウス","ゲストユーザー","いんたーのうす","げすとゆーざー",0,"guest@gmail.com",0,0,now(),now()),
(3,"guest3","guest3","インターノウス","ゲストユーザー","いんたーのうす","げすとゆーざー",0,"guest@gmail.com",0,0,now(),now()),
(4,"guest4","guest4","インターノウス","ゲストユーザー","いんたーのうす","げすとゆーざー",0,"guest@gmail.com",0,0,now(),now()),
(5,"guest5","guest5","インターノウス","ゲストユーザー","いんたーのうす","げすとゆーざー",0,"guest@gmail.com",0,0,now(),now()),
(6,"guest6","guest6","インターノウス","ゲストユーザー","いんたーのうす","げすとゆーざー",0,"guest@gmail.com",0,0,now(),now()),
(7,"guest7","guest7","インターノウス","ゲストユーザー","いんたーのうす","げすとゆーざー",0,"guest@gmail.com",0,0,now(),now()),
(8,"guest8","guest8","インターノウス","ゲストユーザー","いんたーのうす","げすとゆーざー",0,"guest@gmail.com",0,0,now(),now()),
(9,"guest9","guest9","インターノウス","ゲストユーザー","いんたーのうす","げすとゆーざー",0,"guest@gmail.com",0,0,now(),now()),
(10,"guest10","guest10","インターノウス","ゲストユーザー","いんたーのうす","げすとゆーざー",0,"guest@gmail.com",0,0,now(),now()),
(11,"guest11","guest11","インターノウス","ゲストユーザー","いんたーのうす","げすとゆーざー",0,"guest@gmail.com",0,0,now(),now()),
(12,"guest12","guest12","インターノウス","ゲストユーザー","いんたーのうす","げすとゆーざー",0,"guest@gmail.com",0,0,now(),now()),
(13,"admin","admin","インターノウス","管理者ユーザー","いんたーのうす","かんりしゃゆーざー",0,"admin@gmail.com",1,0,now(),now()),
(14,"admin2","admin2","インターノウス","管理者ユーザー","いんたーのうす","かんりしゃゆーざー",0,"admin@gmail.com",1,0,now(),now()),
(15,"admin3","admin3","インターノウス","管理者ユーザー","いんたーのうす","かんりしゃゆーざー",0,"admin@gmail.com",1,0,now(),now()),
(16,"admin4","admin4","インターノウス","管理者ユーザー","いんたーのうす","かんりしゃゆーざー",0,"admin@gmail.com",1,0,now(),now()),
(17,"admin5","admin5","インターノウス","管理者ユーザー","いんたーのうす","かんりしゃゆーざー",0,"admin@gmail.com",1,0,now(),now()),
(18,"admin6","admin6","インターノウス","管理者ユーザー","いんたーのうす","かんりしゃゆーざー",0,"admin@gmail.com",1,0,now(),now()),
(19,"admin7","admin7","インターノウス","管理者ユーザー","いんたーのうす","かんりしゃゆーざー",0,"admin@gmail.com",1,0,now(),now()),
(20,"admin8","admin8","インターノウス","管理者ユーザー","いんたーのうす","かんりしゃゆーざー",0,"admin@gmail.com",1,0,now(),now()),
(21,"admin9","admin9","インターノウス","管理者ユーザー","いんたーのうす","かんりしゃゆーざー",0,"admin@gmail.com",1,0,now(),now()),
(22,"admin10","admin10","インターノウス","管理者ユーザー","いんたーのうす","かんりしゃゆーざー",0,"admin@gmail.com",1,0,now(),now()),
(23,"admin11","admin11","インターノウス","管理者ユーザー","いんたーのうす","かんりしゃゆーざー",0,"admin@gmail.com",1,0,now(),now()),
(24,"admin12","admin12","インターノウス","管理者ユーザー","いんたーのうす","かんりしゃゆーざー",0,"admin@gmail.com",1,0,now(),now())
;

create table product_info(
id int primary key not null auto_increment,
product_id int not null unique,
product_name varchar(100) not null unique,
product_name_kana varchar(100) not null unique,
product_description varchar(255) not null,
category_id int not null,
price int,
image_file_path varchar(100),
image_file_name varchar(50),
release_date datetime not null,
release_company varchar(50),
status tinyint default 0 not null,
regist_date datetime not null,
update_date datetime,
foreign key(category_id) references m_category(category_id)
)
default charset=utf8
;
insert into product_info values
(1,1,"北斗随想","ほくとずいそう","北海道",2,2200,"./images","酒瓶1.jpg",now(),"小林酒造",0,now(),now()),
(2,2,"田酒","でんしゅ","青森",3,2300,"./images","酒瓶2.jpg",now(),"西田酒造店",0,now(),now()),
(3,3,"真澄","ますみ","長野",4,2400,"./images","酒瓶3.jpg",now(),"宮坂醸造",0,now(),now()),
(4,4,"菊鷹","きくたか","愛知",5,2500,"./images","酒瓶4.jpg",now(),"藤市酒造",0,now(),now()),
(5,5,"王祿","おうろく","島根",6,2600,"./images","酒瓶5.jpg",now(),"王祿酒造",0,now(),now()),
(6,6,"黎明","れいめい","沖縄",7,2700,"./images","酒瓶6.jpg",now(),"泰石酒造",0,now(),now()),
(7,7,"北の錦","きたのにしき","北海道",2,2200,"./images","酒瓶7.jpg",now(),"小林酒造",0,now(),now()),
(8,8,"南部美人","なんぶびじん","岩手",3,2300,"./images","酒瓶8.jpg",now(),"南部美人",0,now(),now()),
(9,9,"久保田","くぼた","新潟",4,2400,"./images","酒瓶9.jpg",now(),"朝日酒造",0,now(),now()),
(10,10,"射美","いび","岐阜",5,2500,"./images","酒瓶10.jpg",now(),"杉原酒造",0,now(),now()),
(11,11,"弁天娘","べんてんむすめ","鳥取",6,2600,"./images","酒瓶11.jpg",now(),"太田酒造場",0,now(),now()),
(12,12,"田中六五","たなかろくじゅうご","福岡",7,2700,"./images","酒瓶12.jpg",now(),"白糸酒造",0,now(),now()),
(13,13,"上川大雪","かみかわたいせつ","北海道",2,2200,"./images","酒瓶13.jpg",now(),"上川大雪酒造",0,now(),now()),
(14,14,"AKABU","あかぶ","岩手",3,2300,"./images","酒瓶14.jpg",now(),"赤武酒造",0,now(),now()),
(15,15,"八海山","はっかいさん","新潟",4,2400,"./images","酒瓶15.jpg",now(),"八海醸造",0,now(),now()),
(16,16,"磯自慢","いそじまん","静岡",5,2500,"./images","酒瓶16.jpg",now(),"磯自慢酒造",0,now(),now()),
(17,17,"十八盛","じゅうはちざかり","岡山",6,2600,"./images","酒瓶17.jpg",now(),"十八盛酒造",0,now(),now()),
(18,18,"鍋島","なべしま","佐賀",7,2700,"./images","酒瓶18.jpg",now(),"富久千代酒造",0,now(),now()),
(19,19,"国稀","くにまれ","北海道",2,2200,"./images","酒瓶19.jpg",now(),"國稀酒造",0,now(),now()),
(20,20,"新政","あらまさ","秋田",3,2300,"./images","酒瓶20.jpg",now(),"新政酒造",0,now(),now()),
(21,21,"金婚","きんこん","東京",4,2400,"./images","酒瓶21.jpg",now(),"豊島屋本店",0,now(),now()),
(22,22,"而今","じこん","三重",5,2500,"./images","酒瓶22.jpg",now(),"木屋正酒造",0,now(),now()),
(23,23,"賀茂金秀","かもきんしゅう","広島",6,2600,"./images","酒瓶23.jpg",now(),"金光酒造",0,now(),now()),
(24,24,"七田","しちだ","佐賀",7,2700,"./images","酒瓶24.jpg",now(),"天山酒造",0,now(),now()),
(25,25,"二世古","にせこ","北海道",2,2200,"./images","酒瓶25.jpg",now(),"二世古酒造",0,now(),now()),
(26,26,"伯楽星","はくらくせい","宮城",3,2300,"./images","酒瓶26.jpg",now(),"新澤醸造店",0,now(),now()),
(27,27,"仙禽","せんきん","栃木",4,2400,"./images","酒瓶27.jpg",now(),"仙禽酒造",0,now(),now()),
(28,28,"勝駒","かちこま","富山",5,2500,"./images","酒瓶28.jpg",now(),"清都酒造場",0,now(),now()),
(29,29,"獺祭","だっさい","山口",6,2600,"./images","酒瓶29.jpg",now(),"旭酒造山口",0,now(),now()),
(30,30,"福田","ふくだ","長崎",7,2700,"./images","酒瓶30.jpg",now(),"福田酒造",0,now(),now()),
(31,31,"十一州","じゅういっしゅう","北海道",2,2200,"./images","酒瓶31.jpg",now(),"日本清酒",0,now(),now()),
(32,32,"阿部勘","あべかん","宮城",3,2300,"./images","酒瓶32.jpg",now(),"阿部勘酒造店",0,now(),now()),
(33,33,"花陽浴","はなあび","埼玉",4,2400,"./images","酒瓶33.jpg",now(),"南陽醸造",0,now(),now()),
(34,34,"手取川","てどりがわ","石川",5,2500,"./images","酒瓶34.jpg",now(),"吉田酒造店",0,now(),now()),
(35,35,"芳水","ほうすい","徳島",6,2600,"./images","酒瓶35.jpg",now(),"芳水酒造",0,now(),now()),
(36,36,"花の香","はなのか","熊本",7,2700,"./images","酒瓶36.jpg",now(),"花の香酒造",0,now(),now()),
(37,37,"吉翔","きっしょう","北海道",2,2200,"./images","酒瓶37.jpg",now(),"日本清酒",0,now(),now()),
(38,38,"十四代","じゅうよんだい","山形",3,2300,"./images","酒瓶38.jpg",now(),"高木酒造",0,now(),now()),
(39,39,"鳳凰美田","ほうおうびでん","栃木",4,2400,"./images","酒瓶39.jpg",now(),"小林酒造",0,now(),now()),
(40,40,"黒龍","こくりゅう","福井",5,2500,"./images","酒瓶40.jpg",now(),"黒龍酒造",0,now(),now()),
(41,41,"国重","くにしげ","香川",6,2600,"./images","酒瓶41.jpg",now(),"綾菊酒造",0,now(),now()),
(42,42,"豊潤","ほうじゅん","大分",7,2700,"./images","酒瓶42.jpg",now(),"小松酒造場",0,now(),now()),
(43,43,"国士無双","こくしむそう","北海道",2,2200,"./images","酒瓶43.jpg",now(),"高砂酒造",0,now(),now()),
(44,44,"楯野川","たてのかわ","山形",3,2300,"./images","酒瓶44.jpg",now(),"楯の川酒造",0,now(),now()),
(45,45,"甲子","きのえねまさむね","千葉",4,2400,"./images","酒瓶45.jpg",now(),"飯沼本家",0,now(),now()),
(46,46,"秋鹿","あきしか","大阪",5,2500,"./images","酒瓶46.jpg",now(),"秋鹿酒造",0,now(),now()),
(47,47,"宮乃舞","みやのまい","愛媛",6,2600,"./images","酒瓶47.jpg",now(),"松田酒造",0,now(),now()),
(48,48,"智恵美人","ちえびじん","大分",7,2700,"./images","酒瓶48.jpg",now(),"中野酒造",0,now(),now()),
(49,49,"海底力","そこぢから","北海道",2,2200,"./images","酒瓶49.jpg",now(),"福司酒造",0,now(),now()),
(50,50,"天明","てんめい","福島",3,2300,"./images","酒瓶50.jpg",now(),"曙酒造",0,now(),now()),
(51,51,"来福","らいふく","茨城",4,2400,"./images","酒瓶51.jpg",now(),"来福酒造",0,now(),now()),
(52,52,"福寿","ふくじゅ","兵庫",5,2500,"./images","酒瓶52.jpg",now(),"神戸酒心館",0,now(),now()),
(53,53,"亀泉","かめいずみ","高知",6,2600,"./images","酒瓶53.jpg",now(),"亀泉酒造",0,now(),now()),
(54,54,"千徳","せんとく","宮崎",7,2700,"./images","酒瓶54.jpg",now(),"千徳酒造",0,now(),now()),
(55,55,"男山","おとこやま","北海道",2,2200,"./images","酒瓶55.jpg",now(),"男山",0,now(),now()),
(56,56,"飛露喜","ひろき","福島",3,2300,"./images","酒瓶56.jpg",now(),"廣木酒造本店",0,now(),now()),
(57,57,"龍神","りゅうじん","群馬",4,2400,"./images","酒瓶57.jpg",now(),"龍神酒造",0,now(),now()),
(58,58,"黒松剣菱","くろまつけんびし","兵庫",5,2500,"./images","酒瓶58.jpg",now(),"剣菱酒造",0,now(),now()),
(59,59,"酔鯨","すいげい","高知",6,2600,"./images","酒瓶59.jpg",now(),"酔鯨酒造",0,now(),now()),
(60,60,"薩州正宗","さっしゅうまさむね","鹿児島",7,2700,"./images","酒瓶60.jpg",now(),"濱田酒造",0,now(),now())
;

create table cart_info(
id int primary key not null auto_increment,
user_id varchar(16) not null,
temp_user_id varchar(16),
product_id int not null,
product_count int not null,
price int not null,
regist_date datetime not null,
update_date datetime
)
default charset=utf8
;

create table purchase_history_info(
id int primary key not null auto_increment,
user_id varchar(16) not null,
product_id int not null,
product_count int not null,
price int not null,
destination_id int not null,
regist_date datetime not null,
update_date datetime,
foreign key(product_id) references product_info(product_id)
)
default charset=utf8
;

create table destination_info(
id int primary key not null auto_increment,
user_id varchar(16) not null,
family_name varchar(32) not null,
first_name varchar(32) not null,
family_name_kana varchar(32) not null,
first_name_kana varchar(32) not null,
email varchar(32) not null,
tel_number varchar(13) not null,
user_address varchar(50) not null,
regist_date datetime not null,
update_date datetime
)
default charset=utf8
;
insert into destination_info values
(1,"guest","インターノウス","ゲストユーザー","いんたーのうす","げすとゆーざー","guest@gmail.com","080-1234-5678","東京都千代田区三番町１－１　ＫＹ三番町ビル１Ｆ",now(),now()),
(2,"guest2","インターノウス","ゲストユーザー","いんたーのうす","げすとゆーざー","guest@gmail.com","080-1234-5678","東京都千代田区三番町１－１　ＫＹ三番町ビル１Ｆ",now(),now())
;

create table m_category(
id int primary key not null auto_increment,
category_id int not null unique,
category_name varchar(20) not null unique,
category_description varchar(100),
insert_date datetime not null,
update_date datetime
)
default charset=utf8
;
insert into m_category values
(1,1,"全て","全地方が対象",now(),now()),
(2,2,"北海道","北海道が対象",now(),now()),
(3,3,"東北","東北地方が対象",now(),now()),
(4,4,"関東甲信越","関東甲信越が対象",now(),now()),
(5,5,"東海、北陸、近畿","東海地方、北陸地方、近畿地方が対象",now(),now()),
(6,6,"中国、四国","中国地方、四国地方が対象",now(),now()),
(7,7,"九州、沖縄","九州地方、沖縄が対象",now(),now())
;
