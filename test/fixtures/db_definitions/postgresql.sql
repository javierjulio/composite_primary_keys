CREATE SEQUENCE public.reference_types_seq START 1;
CREATE TABLE reference_types (
  reference_type_id int DEFAULT nextval('public.reference_types_seq'),
  type_label varchar(50) default NULL,
  abbreviation varchar(50) default NULL,
  description varchar(50) default NULL,
  PRIMARY KEY  (reference_type_id)
);

CREATE TABLE reference_codes (
  reference_type_id int NOT NULL,
  reference_code int NOT NULL,
  code_label varchar(50) default NULL,
  abbreviation varchar(50) default NULL,
  description varchar(50) default NULL,
  PRIMARY KEY  (reference_type_id,reference_code)
);

CREATE SEQUENCE public.products_seq START 1;
CREATE TABLE products (
  id int NOT NULL DEFAULT nextval('public.products_seq'),
  name varchar(50) default NULL,
  PRIMARY KEY  (id)
);

CREATE TABLE tariffs (
  tariff_id int NOT NULL,
  start_date date NOT NULL,
  amount int default NULL,
  PRIMARY KEY  (tariff_id,start_date)
);

CREATE TABLE product_tariffs (
  product_id int NOT NULL,
  tariff_id int NOT NULL,
  tariff_start_date date NOT NULL,
  PRIMARY KEY  (product_id,tariff_id,tariff_start_date)
);

CREATE TABLE suburbs (
  city_id int NOT NULL,
  suburb_id int NOT NULL,
  name varchar(50) NOT NULL,
  PRIMARY KEY  (city_id,suburb_id)
);

CREATE SEQUENCE public.streets_seq START 1;
CREATE TABLE streets (
  id int NOT NULL DEFAULT nextval('public.streets_seq'),
  city_id int NOT NULL,
  suburb_id int NOT NULL,
  name varchar(50) NOT NULL,
  PRIMARY KEY  (id)
);

CREATE SEQUENCE public.users_seq START 1;
CREATE TABLE users (
  id int NOT NULL DEFAULT nextval('public.users_seq'),
  name varchar(50) NOT NULL,
  PRIMARY KEY  (id)
);

CREATE SEQUENCE public.articles_seq START 1;
CREATE TABLE articles (
  id int NOT NULL DEFAULT nextval('public.articles_seq'),
  name varchar(50) NOT NULL,
  PRIMARY KEY  (id)
);

CREATE SEQUENCE public.readings_seq START 1;
CREATE TABLE readings (
  id int NOT NULL DEFAULT nextval('public.readings_seq'),
  user_id int NOT NULL,
  article_id int NOT NULL,
  rating int NOT NULL,
  PRIMARY KEY  (id)
);

