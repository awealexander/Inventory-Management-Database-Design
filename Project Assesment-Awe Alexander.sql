--CREATE DATABASE inventory;

--Inventory Database Schema
CREATE SCHEMA [inventory] AUTHORIZATION [dbo];


--User Table
CREATE TABLE [inventory].[user] (
  [id] BIGINT IDENTITY(1,1) NOT NULL,
  [roleId] SMALLINT NOT NULL,
  [firstName] VARCHAR(50) NULL,
  [middleName] VARCHAR(50) NULL,
  [lastName] VARCHAR(50) NULL,
  [username] VARCHAR(50) NULL,
  [mobile] VARCHAR(15) NULL,
  [email] VARCHAR(50) NULL,
  [passwordHash] VARCHAR(32) NOT NULL,
  [registeredAt] DATETIME NOT NULL,
  [lastLogin] DATETIME NULL,
  [intro] NVARCHAR(MAX) NULL,
  [profile] NVARCHAR(MAX) NULL,
  CONSTRAINT [PK_user_id] PRIMARY KEY ([id]),
  CONSTRAINT [uq_username] UNIQUE ([username]),
  CONSTRAINT [uq_mobile] UNIQUE ([mobile]),
  CONSTRAINT [uq_email] UNIQUE ([email])
);

--Insert Values
INSERT INTO [inventory].[user] (roleId, firstName, middleName, lastName, username, mobile, email, passwordHash, registeredAt, lastLogin, intro, profile) 
VALUES 
    (1, 'Chidi', 'Oluwaseyi', 'Adeoye', 'chidi.adeoye', '08012345678', 'chidi.adeoye@example.com', '81dc9bdb52d04dc20036dbd8313ed055', GETDATE(), GETDATE(), 'Hi, I am Chidi', 'I am a software engineer with experience in building web applications.'),
    (2, 'Esther', 'Olamide', 'Bello', 'esther.bello', '08087654321', 'esther.bello@example.com', 'c47dbf176b1bb94deab81781d0ccee9b', GETDATE(), GETDATE(), 'Hello, I am Esther', 'I am a designer with expertise in UI/UX design.'),
    (3, 'Tope', 'Victor', 'Olaniyan', 'tope.olaniyan', '0802345679', 'tope.olaniyan@example.com', 'f7c3bc1d808e04732adf679965ccc34c', GETDATE(), GETDATE(), 'Hi there, I am Tope', 'I am a software developer specializing in backend development.'),
    (4, 'Aisha', 'Sadiq', 'Muhammed', 'aisha.muhammed', '08055555555', 'aisha.muhammed@example.com', '202cb962ac59075b964b07152d234b70', GETDATE(), GETDATE(), 'Hello everyone, I am Aisha', 'I am a frontend developer with skills in HTML, CSS, and JavaScript.'),
    (5, 'Emeka', 'Chinedu', 'Okafor', 'emeka.okafor', '08033333333', 'emeka.okafor@example.com', '098f6bcd4621d373cade4e832627b4f6', GETDATE(), GETDATE(), 'Hey, I am Emeka', 'I am a software engineer specializing in web development.'),
    (6, 'Bisi', 'Modupe', 'Oyedele', 'bisi.oyedele', '08098765432', 'bisi.oyedele@example.com', 'e10adc3949ba59abbe56e057f20f883e', GETDATE(), GETDATE(), 'Hi everyone, I am Bisi', 'I am a web designer with experience in creating beautiful and functional websites.'),
    (7, 'Uche', 'Ogochukwu', 'Okoro', 'uche.okoro', '08011111111', 'uche.okoro@example.com', '827ccb0eea8a706c4c34a16891f84e7b', GETDATE(), GETDATE(), 'Hello, I am Uche', 'I am a software developer with experience in building scalable web applications.'),
    (8, 'Joy', 'Oluwakemi', 'Ogunbiyi', 'joy.ogunbiyi', '08022222222', 'joy.ogunbiyi@example.com', '5f4dcc3b5aa765d61d8327deb882cf99', GETDATE(), GETDATE(), 'Hello, I am Joy', 'I am a UI/UX designer with skills in creating intuitive interfaces.'),
	(9, 'Ngozi', 'Nkechi', 'Okonkwo', 'ngoziokonkwo', '08012345677', 'ngoziokonkwo@gmail.com', '098f6bcd4621d373cade4e832627b4f6', '2022-01-01 08:23:05', NULL, 'I am a software engineer with over 5 years of experience', NULL),
	(10, 'Ibrahim', 'Sani', 'Abubakar', 'ibrahimsani', '08022345678', 'ibrahimsani@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2022-01-01 12:34:56', '2022-01-05 09:12:34', 'I am a business analyst with interests in finance and investments', NULL),
	(11, 'Aisha', 'Salisu', 'Mohammed', 'aishasalisu', '08032345678', 'aishasalisu@yahoo.com', '202cb962ac59075b964b07152d234b70', '2022-01-02 14:45:23', NULL, NULL, NULL),
	(12, 'Yusuf', 'Abubakar', 'Suleiman', 'yusufabubakar', '08042345678', 'yusufabubakar@gmail.com', '098f6bcd4621d373cade4e832627b4f6', '2022-01-03 16:54:32', '2022-02-10 15:21:43', NULL, NULL),
	(13, 'Kemi', 'Oluwakemi', 'Oladipo', 'kemioladipo', '08052345678', 'kemioladipo@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2022-01-04 18:34:12', NULL, NULL, NULL),
	(14, 'Chuka', 'Olu', 'Adeyemi', 'chukaadeyemi', '08062345678', 'chukaadeyemi@yahoo.com', '202cb962ac59075b964b07152d234b70', '2022-01-05 20:42:37', '2022-01-15 17:32:56', NULL, NULL),
	(15, 'Tolu', 'Moses', 'Ademola', 'toluademola', '08072345678', 'toluademola@gmail.com', '098f6bcd4621d373cade4e832627b4f6', '2022-01-06 10:22:48', NULL, NULL, NULL),
	(16, 'Umar', 'Bashir', 'Abdullahi', 'umarbashir', '08082345678', 'umarbashir@yahoo.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2022-01-07 12:39:54', '2022-02-14 11:23:54', 'I am an Enterprenuer', NULL),
	(17, 'Aisha', 'B.', 'Ahmed', 'aisha.ahmed', '+2348021234567', 'aisha.ahmed@example.com', HASHBYTES('MD5', 'string_to_hash'), '2022-01-01 10:00:00', NULL, 'I am a software developer based in Lagos', NULL),
	(18, 'Moses', 'O.', 'Adewale', 'moses.adewale', '+2348032345678', 'moses.adewale@example.com', HASHBYTES('MD5', 'string_to_hash'), '2022-01-02 11:00:00', NULL, 'I am a product manager based in Abuja', NULL),
	(19, 'Oluwakemi', 'A.', 'Adeyemi', 'kemi.adeyemi', '+2348053456789', 'kemi.adeyemi@example.com', HASHBYTES('MD5', 'string_to_hash'), '2022-01-03 12:00:00', NULL, 'I am a customer service representative based in Port Harcourt', NULL),
	(20, 'Chinonso', 'N.', 'Okoro', 'chinonso.okoro', '+2348034567890', 'chinonso.okoro@example.com', HASHBYTES('MD5', 'string_to_hash'), '2022-01-04 13:00:00', NULL, 'I am a project manager based in Enugu', NULL),
	(21, 'Tunde', 'O.', 'Olawale', 'tunde.olawale', '+2348095678901', 'tunde.olawale@example.com', HASHBYTES('MD5', 'string_to_hash'), '2022-01-05 14:00:00', NULL, 'I am a customer support agent based in Lagos', NULL),
	(22, 'Joy', 'N.', 'Ugwu', 'joy.ugwu', '+2348076789012', 'joy.ugwu@example.com', HASHBYTES('MD5', 'string_to_hash'), '2022-01-06 15:00:00', NULL, 'I am a customer service agent based in Lagos', NULL),
	(23, 'Chidinma', 'K.', 'Nwosu', 'chidinma.nwosu', '+2347037890123', 'chidinma.nwosu@example.com', HASHBYTES('MD5', 'string_to_hash'), '2022-01-07 16:00:00', NULL, 'I am a software engineer based in Abuja', NULL),
	(24, 'Abdul', 'O.', 'Ibrahim', 'abdul.ibrahim', '+2347034567890', 'abdul.ibrahim@example.com', HASHBYTES('MD5', 'string_to_hash'), '2022-01-08 17:00:00', NULL, 'I am a software developer based in Lagos', NULL),
	(25, 'Blessing', 'O.', 'Ajayi', 'blessing.ajayi', '+2348025678901', 'blessing.ajayi@example.com', HASHBYTES('MD5', 'string_to_hash'), '2022-01-09 18:00:00', NULL, 'I am a customer service agent based in Abuja', NULL),
	(26, 'Abdullahi', 'Adeleke', 'Muhammad', 'abdullahi.muhammad', '08068402923', 'abdullahi.muhammad@example.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2022-02-11 12:00:00', '2022-02-12 10:25:00', 'Hi, I am Abdullahi.', 'I am a software developer based in Lagos, Nigeria.'),
	(27, 'Tolu', 'Folayan', 'Ajayi', 'tolu.ajayi', '08064479012', 'tolu.ajayi@example.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2022-02-12 14:00:00', '2022-02-12 17:30:00', 'Hi, I am Tolu.', 'I am a graphic designer based in Abuja, Nigeria.'),
	(28, 'Esther', 'Nwosu', 'Obi', 'esther.obi', '08027967890', 'esther.obi@example.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2022-02-12 15:00:00', '2022-02-13 08:45:00', 'Hi, I am Esther.', 'I am a business analyst based in Enugu, Nigeria.'),
	(35, 'Olumide', 'Ogunleye', 'Oluwaseyi', 'olumide.olu', '08139184265', 'olumide.olu@example.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2022-02-13 09:00:00', '2022-02-14 11:20:00', 'Hi, I am Olumide.', 'I am a software developer based in Lagos, Nigeria.'),
	(29, 'Chinwe', 'Nwosu', 'Amaechi', 'chinwe.amaechi', '08093754621', 'chinwe.amaechi@example.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2022-02-13 10:30:00', '2022-02-14 15:10:00', 'Hi, I am Chinwe.', 'I am a digital marketer based in Port Harcourt, Nigeria.'),
	(30, 'Adebayo', 'Adeniyi', 'Ibrahim', 'adebola.ibrahim', '08078765902', 'adebola.ibrahim@example.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2022-02-14 11:00:00', '2022-02-14 14:40:00', 'Hi, I am Adebayo.', 'I am a web developer based in Lagos, Nigeria.'),
	(31, 'Ahmed', 'Jibril', 'Oluwadamilare', 'ahmedj', '08033558931', 'ahmedjibril@yahoo.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2022-03-15 12:10:31', NULL, 'Hello, I am a web developer with 3 years of experience.', 'I am a full-stack developer with expertise in PHP, JavaScript, and SQL. I have worked on several projects for clients in various industries, including e-commerce, education, and healthcare.'),
	(32, 'Tolu', 'Temitope', 'Oni', 'tolut', '08023456789', 'tolutemi@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2022-03-15 13:12:48', NULL, 'I am a software engineer with 5 years of experience in web development.', 'I have worked on several projects, including a social networking site and an online marketplace. I am skilled in HTML, CSS, JavaScript, and PHP.'),
	(33, 'Jumoke', 'Olufunke', 'Ogunsanya', 'jumokeo', '08034567890', 'jumokeo@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2022-03-15 14:05:17', NULL, 'I am a graphic designer with 2 years of experience in branding and marketing.', 'I have created logos, brochures, and website designs for clients in various industries, including hospitality, fashion, and finance.'),
	(34, 'Abdullahi', 'Salami', 'Ibrahim', 'abdullahii', '08045456789', 'abdullahisalami@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2022-03-15 15:01:55', NULL, 'I am a creative graphic designer with a passion for visual storytelling.', 'I specialize in creating unique and engaging designs for brands, including logos, social media graphics, and print materials.')
	;




--Product Table
CREATE TABLE inventory.product (
id BIGINT NOT NULL IDENTITY(1,1),
title VARCHAR(75) NOT NULL,
summary NVARCHAR(MAX) NULL,
type SMALLINT NOT NULL DEFAULT 0,
createdAt DATETIME2 NOT NULL,
updatedAt DATETIME2 NULL,
content NVARCHAR(MAX) NULL,
PRIMARY KEY (id)
);

-- insert Values
INSERT INTO inventory.product (title, summary, type, createdAt, updatedAt, content)
VALUES
('Egusi Soup', 'A traditional Nigerian soup made with ground melon seeds and vegetables', 1, '2023-04-30 10:30:00', NULL, 'Ingredients: egusi, spinach, tomatoes, onions, peppers, crayfish, stockfish, smoked fish, seasoning cubes, palm oil'),
('Jollof Rice', 'A classic Nigerian dish made with rice and tomato stew', 1, '2023-04-29 08:15:00', '2023-04-30 11:45:00', 'Ingredients: rice, tomatoes, tomato paste, onions, peppers, chicken, beef, stock, seasoning cubes, bay leaves, thyme'),
('Suya', 'A popular Nigerian street food made with grilled meat and spices', 2, '2023-04-28 16:20:00', NULL, 'Ingredients: beef, onions, ginger, garlic, peanut butter, cayenne pepper, salt'),
('Moi Moi', 'A steamed bean pudding made with black-eyed peas and spices', 1, '2023-04-27 14:30:00', NULL, 'Ingredients: black-eyed peas, onions, peppers, crayfish, vegetable oil, seasoning cubes, bay leaves'),
('Akara', 'A Nigerian breakfast food made with black-eyed peas and spices', 2, '2023-04-26 07:45:00', '2023-04-28 11:10:00', 'Ingredients: black-eyed peas, onions, peppers, vegetable oil, salt'),
('Pounded Yam', 'A starchy Nigerian dish made with yam and served with soup', 1, '2023-04-25 12:00:00', NULL, 'Ingredients: yam, water'),
('Efo Riro', 'A Nigerian vegetable soup made with spinach and meat', 1, '2023-04-24 19:00:00', '2023-04-26 10:45:00', 'Ingredients: spinach, meat, tomatoes, onions, peppers, crayfish, seasoning cubes, palm oil'),
('Gizdodo', 'A Nigerian dish made with gizzards and plantains', 2, '2023-04-23 17:30:00', NULL, 'Ingredients: chicken gizzards, plantains, tomatoes, onions, peppers, seasoning cubes, vegetable oil'),
('Chin Chin', 'A crunchy Nigerian snack made with flour and sugar', 2, '2023-04-22 14:00:00', '2023-04-24 09:30:00', 'Ingredients: flour, sugar, milk, eggs, nutmeg, vegetable oil'),
('Fried Rice', 'A Nigerian version of the classic dish made with rice and vegetables', 1, '2023-04-21 10:00:00', NULL, 'Ingredients: rice, mixed vegetables, chicken, beef, shrimp, onions, peppers, soy sauce, seasoning cubes');

INSERT INTO inventory.product (title, summary, type, createdAt, content)
VALUES
('Indomie Noodles', 'Instant noodles', 1, '2022-04-01 12:00:00', '70g, Chicken Flavour'),
('Golden Morn', 'Cereal drink', 1, '2022-04-02 09:15:00', '500g, Maize'),
('Milo', 'Chocolaty beverage', 1, '2022-04-03 11:30:00', '500g, Tin'),
('Peak Milk', 'Powdered milk', 1, '2022-04-04 08:45:00', '400g, Tin'),
('Dangote Sugar', 'Granulated sugar', 1, '2022-04-05 13:20:00', '500g'),
('Bournvita', 'Malted chocolate drink', 1, '2022-04-06 10:00:00', '500g'),
('Mama Gold Rice', 'Parboiled rice', 1, '2022-04-07 14:30:00', '5kg'),
('Dangote Cement', 'Cement', 2, '2022-04-08 12:45:00', '50kg'),
('Power Oil', 'Vegetable oil', 1, '2022-04-09 11:10:00', '2L'),
('Maggi Cubes', 'Seasoning cubes', 1, '2022-04-10 09:00:00', '100g');


--Product Meta
CREATE TABLE [inventory].[product_meta] (
[id] BIGINT NOT NULL IDENTITY(1,1),
[productId] BIGINT NOT NULL,
[key] VARCHAR(50) NOT NULL,
[content] TEXT NULL,
CONSTRAINT [pk_product_meta_id] PRIMARY KEY CLUSTERED ([id] ASC),
CONSTRAINT [fk_meta_product] FOREIGN KEY ([productId]) REFERENCES [inventory].product ON DELETE NO ACTION ON UPDATE NO ACTION,
CONSTRAINT [uq_product_meta] UNIQUE NONCLUSTERED ([productId] ASC, [key] ASC),
INDEX [idx_meta_product] ([productId] ASC)
);

INSERT INTO [inventory].[product_meta] ([productId], [key], [content])
VALUES 
(1, 'color', 'Red'),
(1, 'weight', '500g'),
(1, 'dimensions', '12x6x4 inches'),
(2, 'color', 'Blue'),
(2, 'weight', '750g'),
(2, 'dimensions', '16x8x5 inches'),
(3, 'color', 'Green'),
(3, 'weight', '1kg'),
(3, 'dimensions', '20x10x6 inches'),
(4, 'color', 'Yellow'),
(4, 'weight', '300g'),
(4, 'dimensions', '10x5x3 inches'),
(5, 'color', 'Black'),
(5, 'weight', '1.5kg'),
(5, 'dimensions', '24x12x8 inches'),
(6, 'color', 'White'),
(6, 'weight', '1.2kg'),
(6, 'dimensions', '22x11x7 inches'),
(7, 'color', 'Pink'),
(7, 'weight', '900g'),
(7, 'dimensions', '18x9x6 inches'),
(8, 'color', 'Purple'),
(8, 'weight', '1.3kg'),
(8, 'dimensions', '22x12x7 inches'),
(9, 'color', 'Orange'),
(9, 'weight', '600g'),
(9, 'dimensions', '14x7x5 inches'),
(10, 'color', 'Brown'),
(10, 'weight', '850g'),
(10, 'dimensions', '18x8x6 inches');


USE inventory;

--Category Table and Product Category Table

CREATE TABLE category (
  id BIGINT NOT NULL IDENTITY(1,1) PRIMARY KEY,
  parentId BIGINT NULL,
  title VARCHAR(75) NOT NULL,
  metaTitle VARCHAR(100) NULL,
  slug VARCHAR(100) NOT NULL,
  content TEXT NULL
);
CREATE INDEX idx_category_parent ON category (parentId);

INSERT INTO category (parentId, title, metaTitle, slug, content) VALUES 
	(NULL, 'Fashion', 'Fashion', 'fashion', 'All fashion items'),
	(NULL, 'Beauty', 'Beauty', 'beauty', 'All beauty products'),
	(NULL, 'Food', 'Food', 'food', 'All kinds of food items'),
	(1, 'Men''s Clothing', 'Men''s Fashion', 'mens-clothing', 'All kinds of men''s clothing'),
	(1, 'Women''s Clothing', 'Women''s Fashion', 'womens-clothing', 'All kinds of women''s clothing'),
	(1, 'Shoes', 'Shoes', 'shoes', 'All kinds of shoes'),
	(2, 'Hair Care', 'Hair Care', 'hair-care', 'All hair care products'),
	(2, 'Skin Care', 'Skin Care', 'skin-care', 'All skin care products'),
	(3, 'Rice', 'Rice', 'rice', 'All kinds of rice'),
	(3, 'Beans', 'Beans', 'beans', 'All kinds of beans'),
	(3, 'Garri', 'Garri', 'garri', 'All kinds of garri'),
	(3, 'Yam', 'Yam', 'yam', 'All kinds of yam');


ALTER TABLE category 
ADD CONSTRAINT fk_category_parent
  FOREIGN KEY (parentId)
  REFERENCES category (id)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

--Product Category Table
CREATE TABLE [inventory].[product_category] (
[productId] BIGINT NOT NULL,
[categoryId] BIGINT NOT NULL,
CONSTRAINT [pk_product_category] PRIMARY KEY ([productId], [categoryId]),
CONSTRAINT [fk_product_category_product]
FOREIGN KEY ([productId])
REFERENCES [inventory].[product] ([id])
ON DELETE NO ACTION
ON UPDATE NO ACTION,
CONSTRAINT [fk_product_category_category]
FOREIGN KEY ([categoryId])
REFERENCES [category] ([id])
ON DELETE NO ACTION
ON UPDATE NO ACTION);


INSERT INTO [inventory].[product_category] ([productId], [categoryId])
VALUES
    (1, 1),    
    (2, 2),    
    (3, 3),    
    (4, 1),    
    (5, 2),    
    (6, 3),    
    (7, 1),    
    (8, 2),    
    (9, 3),    
    (10, 1),   
    (11, 2),   
    (12, 3),   
    (13, 1),   
    (14, 2),   
    (15, 3),   
    (16, 1),   
    (17, 2),   
    (18, 3),   
    (19, 1),   
    (20, 2);   

CREATE INDEX [idx_product_category_category] ON [inventory].[product_category] ([categoryId] ASC);
CREATE INDEX [idx_product_category_product] ON [inventory].[product_category] ([productId] ASC);

--Brand Table
CREATE TABLE [inventory].[brand] (
  [id] BIGINT NOT NULL IDENTITY(1,1),
  [title] VARCHAR(75) NOT NULL,
  [summary] NVARCHAR(MAX) NULL,
  [createdAt] DATETIME NOT NULL,
  [updatedAt] DATETIME NULL,
  [content] NVARCHAR(MAX) NULL,
  PRIMARY KEY ([id])
);

INSERT INTO [inventory].[brand] (Title, Summary, createdAt, updatedAt, Content)
VALUES
    ('Hisence', 'Hisence specializes in electronics', '2023-05-14 12:34:00', NULL, 'Hisence is a renowned company known for its cutting-edge technology and innovative electronic devices.'),
    ('Dufil', 'Dufil produces instant noodles', '2023-05-14 12:34:00', NULL, 'Dufil is a well-known company famous for its delicious and convenient instant noodle products.'),
    ('Peak Milk', 'Peak Milk offers instant filled milk powder', '2023-05-14 12:34:00', NULL, 'Peak Milk is a reputable brand known for its high-quality instant filled milk powder made from cow milk.'),
    ('Naviforce', 'Naviforce manufactures Men''s wristwatch', '2023-05-14 12:34:00', NULL, 'Naviforce is a major manufacturer of men''s wristwatches, renowned for its top-notch products.'),
    ('Nestle', 'Nestle specializes in food and beverages', '2023-05-14 12:34:00', NULL, 'Nestle is a multinational company specializing in the production of a wide range of food and beverages.'),
    ('Calvin Klein', 'Calvin Klein specializes in clothings', '2023-05-14 12:34:00', NULL, 'Calvin Klein is a well-known designer in the industry, famous for its exceptional quality clothes.'),
    ('Samsung', 'Samsung excels in electronics', '2023-05-14 12:34:00', NULL, 'Samsung is a world-renowned multinational conglomerate, excelling in the production of electronics.'),
    ('LG', 'LG produces electronics', '2023-05-14 12:34:00', NULL, 'LG is a multinational electronics company known for its innovative and high-performance products.'),
    ('Oriflame', 'Oriflames produces beauty', '2022-01-07 16:00:00', NULL, 'Oriflame is a prominent producer of high-quality beauty products.'),
    ('Darling', 'Darling specializes in beauty products', '2022-01-08 17:00:00', NULL, 'Darling is Nigeria''s top margarine brand, providing a wide range of beauty and fashion products renowned for their quality.');




--Order Table Table
CREATE TABLE [inventory].[order] (
  [id] BIGINT NOT NULL IDENTITY(1,1),
  [userId] BIGINT NOT NULL,
  [type] SMALLINT NOT NULL DEFAULT 0,
  [status] SMALLINT NOT NULL DEFAULT 0,
  [subTotal] FLOAT NOT NULL DEFAULT 0,
  [itemDiscount] FLOAT NOT NULL DEFAULT 0,
  [tax] FLOAT NOT NULL DEFAULT 0,
  [shipping] FLOAT NOT NULL DEFAULT 0,
  [total] FLOAT NOT NULL DEFAULT 0,
  [promo] VARCHAR(50) NULL DEFAULT NULL,
  [discount] FLOAT NOT NULL DEFAULT 0,
  [grandTotal] FLOAT NOT NULL DEFAULT 0,
  [createdAt] DATETIME NOT NULL,
  [updatedAt] DATETIME NULL DEFAULT NULL,
  [content] TEXT NULL DEFAULT NULL,
  PRIMARY KEY ([id]),
  INDEX [idx_order_user] ([userId] ASC),
  CONSTRAINT [fk_order_user]
    FOREIGN KEY ([userId])
    REFERENCES [inventory].[user] ([id])
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

INSERT INTO [inventory].[order] ([userId], [type], [status], [subTotal], [itemDiscount], [tax], [shipping], [total], [promo], [discount], [grandTotal], [createdAt], [updatedAt], [content])
VALUES 
	(30, 0, 0, 5000.00, 200.00, 750.00, 1500.00, 6600.00, 'JUNE20OFF', 0.00, 6600.00, '2023-05-02 10:00:00', NULL, 'Ordered 2 packs of Indomie and 1 carton of noodles'),
    (27, 1, 0, 8000.00, 0.00, 1200.00, 2000.00, 10400.00, NULL, 0.00, 10400.00, '2023-05-02 11:00:00', NULL, 'Ordered a 50-inch TV'),
    (2, 0, 1, 2500.00, 100.00, 375.00, 750.00, 3375.00, NULL, 0.00, 3375.00, '2023-05-02 12:00:00', NULL, 'Ordered 3 packs of Milo and 1 pack of biscuits'),
    (3, 0, 2, 12000.00, 600.00, 1800.00, 3000.00, 14900.00, NULL, 0.00, 14900.00, '2023-05-02 13:00:00', NULL, 'Ordered a gas cooker and 1 cylinder'),
    (4, 1, 1, 60000.00, 0.00, 9000.00, 15000.00, 84000.00, NULL, 0.00, 84000.00, '2023-05-02 14:00:00', NULL, 'Ordered a refrigerator and a washing machine'),
    (5, 0, 0, 1500.00, 0.00, 225.00, 500.00, 1725.00, 'WELCOME10', 0.00, 1725.00, '2023-05-02 15:00:00', NULL, 'Ordered a pack of Dettol and 2 bars of soap'),
    (6, 0, 1, 8000.00, 0.00, 1200.00, 2000.00, 10400.00, NULL, 0.00, 10400.00, '2023-05-02 16:00:00', NULL, 'Ordered a microwave oven'),
    (7, 1, 2, 4000.00, 0.00, 600.00, 1000.00, 5400.00, NULL, 0.00, 5400.00, '2023-05-02 17:00:00', NULL, 'Ordered a sound system'),
    (8, 0, 0, 500.00, 0.00, 75.00, 200.00, 675.00, NULL, 0.00, 675.00, '2023-05-02 18:00:00', NULL, 'Ordered 2 packs of Peak Milk'),
	(9, 0, 0, 3000.00, 0.00, 450.00, 750.00, 3750.00, NULL, 0.00, 3750.00, '2023-05-02 19:00:00', NULL, 'Ordered 2 packs of toothpaste and 1 pack of toothbrushes'),
    (10, 1, 1, 15000.00, 0.00, 2250.00, 3750.00, 21000.00, NULL, 0.00, 21000.00, '2023-05-02 20:00:00', NULL, 'Ordered a 55-inch smart TV'),
    (11, 0, 0, 5000.00, 0.00, 750.00, 1500.00, 6250.00, NULL, 0.00, 6250.00, '2023-05-02 21:00:00', NULL, 'Ordered 2 packs of spaghetti and 1 pack of macaroni'),
    (12, 0, 2, 7000.00, 700.00, 1050.00, 1400.00, 7650.00, NULL, 0.00, 7650.00, '2023-05-02 22:00:00', NULL, 'Ordered a water dispenser and 1 bottle of water'),
    (13, 1, 0, 20000.00, 0.00, 3000.00, 5000.00, 28000.00, NULL, 0.00, 28000.00, '2023-05-02 23:00:00', NULL, 'Ordered a new laptop'),
    (14, 0, 1, 1000.00, 0.00, 150.00, 250.00, 1400.00, NULL, 0.00, 1400.00, '2023-05-03 00:00:00', NULL, 'Ordered a set of kitchen knives'),
    (15, 0, 2, 800.00, 0.00, 120.00, 200.00, 920.00, NULL, 0.00, 920.00, '2023-05-03 01:00:00', NULL, 'Ordered a pack of light bulbs'),
    (16, 1, 1, 30000.00, 0.00, 4500.00, 7500.00, 42000.00, NULL, 0.00, 42000.00, '2023-05-03 02:00:00', NULL, 'Ordered a new air conditioner'),
    (17, 0, 0, 1000.00, 0.00, 150.00, 250.00, 1400.00, NULL, 0.00, 1400.00, '2023-05-03 03:00:00', NULL, 'Ordered a pack of AA batteries'),
	(18, 0, 0, 2000.00, 0.00, 300.00, 500.00, 2800.00, NULL, 0.00, 2800.00, '2023-05-02 19:00:00', NULL, 'Ordered a pack of toilet paper and 2 bottles of hand sanitizer'),
	(19, 1, 1, 15000.00, 1000.00, 2250.00, 4500.00, 18000.00, NULL, 0.00, 18000.00, '2023-05-02 20:00:00', NULL, 'Ordered a laptop and a printer'),
	(20, 0, 2, 4000.00, 0.00, 600.00, 1000.00, 5400.00, NULL, 0.00, 5400.00, '2023-05-02 21:00:00', NULL, 'Ordered a set of kitchen knives'),
	(21, 0, 0, 800.00, 0.00, 120.00, 200.00, 920.00, NULL, 0.00, 920.00, '2023-05-02 22:00:00', NULL, 'Ordered 4 packs of tissues'),
	(22, 1, 1, 50000.00, 0.00, 7500.00, 12500.00, 70000.00, NULL, 0.00, 70000.00, '2023-05-02 23:00:00', NULL, 'Ordered a home theater system'),
	(23, 0, 2, 1000.00, 50.00, 150.00, 200.00, 1100.00, NULL, 0.00, 1100.00, '2023-05-03 00:00:00', NULL, 'Ordered a pack of spaghetti and 2 packs of tomato paste'),
	(24, 0, 0, 15000.00, 500.00, 2250.00, 4500.00, 18250.00, NULL, 0.00, 18250.00, '2023-05-03 01:00:00', NULL, 'Ordered a pair of shoes and a handbag'),
	(25, 1, 1, 200000.00, 0.00, 30000.00, 50000.00, 280000.00, 'MAYSALE50', 0.00, 140000.00, '2023-05-03 02:00:00', NULL, 'Ordered a brand new car'),
	(26, 0, 2, 5000.00, 0.00, 750.00, 1500.00, 6250.00, NULL, 0.00, 6250.00, '2023-05-03 03:00:00', NULL, 'Ordered a set of bed sheets and 2 pillows');
	


--Address Table
CREATE TABLE [inventory].[address] (
  [id] BIGINT NOT NULL IDENTITY(1,1),
  [userId] BIGINT NULL,
  [orderId] BIGINT NULL,
  [firstName] VARCHAR(50) NULL,
  [middleName] VARCHAR(50) NULL,
  [lastName] VARCHAR(50) NULL,
  [mobile] VARCHAR(15) NULL,
  [email] VARCHAR(50) NULL,
  [line1] VARCHAR(50) NULL,
  [line2] VARCHAR(50) NULL,
  [city] VARCHAR(50) NULL,
  [province] VARCHAR(50) NULL,
  [country] VARCHAR(50) NULL,
  [createdAt] DATETIME NOT NULL,
  [updatedAt] DATETIME NULL,
  PRIMARY KEY ([id]),
    CONSTRAINT [fk_address_userId]
    FOREIGN KEY ([userId])
    REFERENCES [inventory].[user] ([id])
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

INSERT INTO [inventory].[address] ([userId], [orderId], [firstName], [middleName], [lastName], [mobile], [email], [line1], [line2], [city], [province], [country], [createdAt])
VALUES 
	(2, 1, 'Chidi', 'Oluwaseyi', 'Adeoye', '08012345678', 'chidi.adeoye@example.com', '13 Adeola Odeku St', 'Victoria Island', 'Lagos', 'Lagos', 'Nigeria', '2023-05-09 12:00:00'),
	(3, 2, 'Esther', 'Olamide', 'Bello', '08087654321', 'esther.bello@example.com', '5 Bode Thomas St', 'Surulere', 'Lagos', 'Lagos', 'Nigeria', '2023-05-09 12:00:01'),
	(4, 3, 'Tope', 'Victor', 'Olaniyan', '08023456799', 'tope.olaniyan@example.com', '14 Ajose Adeogun St', 'Victoria Island', 'Lagos', 'Lagos', 'Nigeria', '2023-05-09 12:00:02'),
	(5, 4, 'Aisha', 'Sadiq', 'Muhammed', '08055555555', 'aisha.muhammed@example.com', '10 Alhaji Masha Rd', 'Surulere', 'Lagos', 'Lagos', 'Nigeria', '2023-05-09 12:00:03'),
	(6, 5, 'Emeka', 'Chinedu', 'Okafor', '08033333333', 'emeka.okafor@example.com', '23 Obafemi Awolowo Way', 'Ikeja', 'Lagos', 'Lagos', 'Nigeria', '2023-05-09 12:00:04'),
	(7, NULL, 'Bisi', 'Modupe', 'Oyedele', '08098765432', 'bisi.oyedele@example.com', '12 Kudirat Abiola Way', 'Oregun', 'Ikeja', 'Lagos', 'Nigeria', GETDATE()),
	(8, NULL, 'Uche', 'Ogochukwu', 'Okoro', '08011111111', 'uche.okoro@example.com', '15 Ahmadu Bello Way', NULL, 'Victoria Island', 'Lagos', 'Nigeria', GETDATE()),
	(9, NULL, 'Joy', 'Oluwakemi', 'Ogunbiyi', '08022222222', 'joy.ogunbiyi@example.com', '4 Herbert Macaulay Way', NULL, 'Yaba', 'Lagos', 'Nigeria', GETDATE()),
	(10, NULL, 'Ngozi', 'Nkechi', 'Okonkwo', '08012345677', 'ngoziokonkwo@gmail.com', '17 Allen Avenue', 'Ikeja', 'Ikeja', 'Lagos', 'Nigeria', GETDATE()),
	(11, NULL, 'Ibrahim', 'Sani', 'Abubakar', '08022345678', 'ibrahimsani@gmail.com', '23 Ahmadu Bello Way', NULL, 'Victoria Island', 'Lagos', 'Nigeria', GETDATE()),
	(13, NULL, 'Yusuf', 'Abubakar', 'Suleiman', '08042345678', 'yusufabubakar@gmail.com', '13, Ahmadu Bello Way', 'Victoria Island', 'Lagos', 'Lagos', 'Nigeria', CURRENT_TIMESTAMP),
	(14, NULL, 'Kemi', 'Oluwakemi', 'Oladipo', '08052345678', 'kemioladipo@gmail.com', '10, Ikorodu Road', 'Ikeja', 'Lagos', 'Lagos', 'Nigeria', CURRENT_TIMESTAMP),
	(15, NULL, 'Chuka', 'Olu', 'Adeyemi', '08062345678', 'chukaadeyemi@yahoo.com', '3, Edo Street', 'Wuse Zone 5', 'Abuja', 'Federal Capital Territory', 'Nigeria', CURRENT_TIMESTAMP),
	(16, NULL, 'Tolu', 'Moses', 'Ademola', '08072345678', 'toluademola@gmail.com', '5, Owerri Road', 'GRA', 'Port Harcourt', 'Rivers', 'Nigeria', CURRENT_TIMESTAMP),
	(17, NULL, 'Umar', 'Bashir', 'Abdullahi', '08082345678', 'umarbashir@yahoo.com', '22, Zaria Road', 'Kano Municipal', 'Kano', 'Kano', 'Nigeria', CURRENT_TIMESTAMP),
	(18, 10, 'Aisha', 'B.', 'Ahmed', '+2348021234567', 'aisha.ahmed@example.com', '22 Akinremi St.', 'Off Akinremi Rd.', 'Ikeja', 'Lagos', 'Nigeria', '2023-05-09 10:00:00'),
	(19, 9, 'Moses', 'O.', 'Adewale', '+2348032345678', 'moses.adewale@example.com', '15 Opebi Rd.', 'Opebi', 'Ikeja', 'Lagos', 'Nigeria', '2023-05-09 11:00:00'),
	(20, 8, 'Oluwakemi', 'A.', 'Adeyemi', '+2348053456789', 'kemi.adeyemi@example.com', '3 Masha Rd.', 'Surulere', 'Lagos', 'Lagos', 'Nigeria', '2023-05-09 12:00:00'),
	(21, 7, 'Chinonso', 'N.', 'Okoro', '+2348034567890', 'chinonso.okoro@example.com', '22 Nnebisi Rd.', 'Asaba', 'Delta', 'Delta', 'Nigeria', '2023-05-09 13:00:00'),
	(22, 6, 'Tunde', 'O.', 'Olawale', '+2348095678901', 'tunde.olawale@example.com', '25 Allen Ave.', 'Ikeja', 'Lagos', 'Lagos', 'Nigeria', '2023-05-09 14:00:00'),
	(12, 11, 'Aisha', 'Salisu', 'Mohammed', '08032345678', 'aishasalisu@yahoo.com', '12 Oladipo Diya Street', 'Off Okunola Omole Phase 1', 'Ikeja', 'Lagos', 'Nigeria', CURRENT_TIMESTAMP),
	(23, 12, 'Joy', 'N.', 'Ugwu', '+2348076789012', 'joy.ugwu@example.com', '23 Bankole Street', 'Isolo', 'Lagos', 'Lagos', 'Nigeria', CURRENT_TIMESTAMP),
	(24, 15, 'Chidinma', 'K.', 'Nwosu', '+2347037890123', 'chidinma.nwosu@example.com', '3 Oluwatoyin Street', 'Ketu', 'Lagos', 'Lagos', 'Nigeria', CURRENT_TIMESTAMP),
	(25, 13, 'Abdul', 'O.', 'Ibrahim', '+2347034567890', 'abdul.ibrahim@example.com', '6 Alhaji Street', 'Agege', 'Lagos', 'Lagos', 'Nigeria', CURRENT_TIMESTAMP),
	(26, 14, 'Blessing', 'O.', 'Ajayi', '+2348025678901', 'blessing.ajayi@example.com', '9 Ibrahim Adesanya Street', 'Magodo Phase 2', 'Ikeja', 'Lagos', 'Nigeria', CURRENT_TIMESTAMP),
	(27, NULL, 'Abdullahi', 'Adeleke', 'Muhammad', '08068402923', 'abdullahi.muhammad@example.com', '1 Aliu Olanrewaju Street', 'Ikotun', 'Alimosho', 'Lagos', 'Nigeria', CURRENT_TIMESTAMP),
	(28, 17, 'Tolu', 'Folayan', 'Ajayi', '08064479012', 'tolu.ajayi@example.com', '2 Ayilara Street', 'Ojuelegba', 'Surulere', 'Lagos', 'Nigeria', CURRENT_TIMESTAMP),
	(29, 18, 'Esther', 'Nwosu', 'Obi', '08027967890', 'esther.obi@example.com', '12 Adekunle St', 'Ikeja', 'Lagos', 'Lagos', 'Nigeria', CURRENT_TIMESTAMP),
	(30, 19, 'Olumide', 'Ogunleye', 'Oluwaseyi', '08139184265', 'olumide.olu@example.com', '17 Olatunji St', 'Yaba', 'Lagos', 'Lagos', 'Nigeria', CURRENT_TIMESTAMP),
	(31, 20, 'Chinwe', 'Nwosu', 'Amaechi', '08093754621', 'chinwe.amaechi@example.com', '5 Yakubu St', 'Wuse', 'Abuja', 'Federal Capital Territory', 'Nigeria', CURRENT_TIMESTAMP),
	(32, 22, 'Adebayo', 'Adeniyi', 'Ibrahim', '08078765902', 'adebola.ibrahim@example.com', '3 Obafemi Awolowo Way', 'Ikeja', 'Lagos', 'Lagos', 'Nigeria', CURRENT_TIMESTAMP),
	(33, 23, 'Ahmed', 'Jibril', 'Oluwadamilare', '08033558931', 'ahmedjibril@yahoo.com', '9 Ahmadu Bello Way', 'Victoria Island', 'Lagos', 'Lagos', 'Nigeria', CURRENT_TIMESTAMP),
	(34, 21, 'Tolu', 'Temitope', 'Oni', '08023456789', 'tolutemi@gmail.com', '20 Adeola Odeku St', 'Victoria Island', 'Lagos', 'Lagos', 'Nigeria', CURRENT_TIMESTAMP),
	(35, 25, 'Jumoke', 'Olufunke', 'Ogunsanya', '08034567890', 'jumokeo@gmail.com', '15 Isaac John St', 'Ikeja', 'Lagos', 'Lagos', 'Nigeria', CURRENT_TIMESTAMP),
	(1, 24, 'Abdullahi', 'Salami', 'Ibrahim', '08045456789', 'abdullahisalami@gmail.com', '25 Ahmadu Bello Way', 'Wuse', 'Abuja', 'Federal Capital Territory', 'Nigeria', CURRENT_TIMESTAMP);


CREATE INDEX [idx_address_user] ON [inventory].[address] ([userId]);
CREATE INDEX [idx_address_order] ON [inventory].[address] ([orderId]);

ALTER TABLE [inventory].[address] 
ADD CONSTRAINT [fk_address_user]
  FOREIGN KEY ([userId])
  REFERENCES [inventory].[user] ([id])
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE [inventory].[address] 
ADD CONSTRAINT [fk_address_order]
  FOREIGN KEY ([orderId])
  REFERENCES [inventory].[order] ([id])
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

--Item Table
  CREATE TABLE [inventory].[item] (
  [id] BIGINT NOT NULL IDENTITY(1,1),
  [productId] BIGINT NOT NULL,
  [brandId] BIGINT NOT NULL,
  [supplierId] BIGINT NOT NULL,
  [orderId] BIGINT NOT NULL,
  [sku] VARCHAR(100) NOT NULL,
  [mrp] FLOAT NOT NULL DEFAULT 0,
  [discount] FLOAT NOT NULL DEFAULT 0,
  [price] FLOAT NOT NULL DEFAULT 0,
  [quantity] SMALLINT NOT NULL DEFAULT 0,
  [sold] SMALLINT NOT NULL DEFAULT 0,
  [available] SMALLINT NOT NULL DEFAULT 0,
  [defective] SMALLINT NOT NULL DEFAULT 0,
  [createdBy] BIGINT NOT NULL,
  [updatedBy] BIGINT NULL,
  [createdAt] DATETIME NOT NULL,
  [updatedAt] DATETIME NULL,
  PRIMARY KEY ([id]),
  CONSTRAINT [fk_item_product]
    FOREIGN KEY ([productId])
    REFERENCES [inventory].[product] ([id])
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT [fk_item_brand]
    FOREIGN KEY ([brandId])
    REFERENCES [inventory].[brand] ([id])
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT [fk_item_user]
    FOREIGN KEY ([supplierId])
    REFERENCES [inventory].[user] ([id])
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT [fk_item_order]
    FOREIGN KEY ([orderId])
    REFERENCES [inventory].[order] ([id])
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);
	/*
	ALTER TABLE [inventory].[order_item]
	DROP CONSTRAINT [fk_order_item_item]
	DROP TABLE [inventory].[item]
	
	ALTER TABLE [inventory].[order_item]
	ADD CONSTRAINT [fk_order_item_item]
	FOREIGN KEY ([itemId])
	REFERENCES [inventory].[item]([id])
	ON DELETE CASCADE

	ALTER TABLE [inventory].[item]
	DROP CONSTRAINT [fk_item_brand]
	DROP TABLE [inventory].[brand]
	
	ALTER TABLE [inventory].[item]
	ADD CONSTRAINT [fk_item_brand]
	FOREIGN KEY ([brandId])
	REFERENCES [inventory].[brand]([id])
	ON DELETE CASCADE
	*/

INSERT INTO [inventory].[item] ([productId], [brandId], [supplierId], [orderId], [sku], [mrp], [discount], [price], [quantity], [sold], [available], [defective], [createdBy], [createdAt])
VALUES
	(1, 1, 1, 20, 'SKU001', 5500, 200, 5300, 26, 12, 14, 0, 1, '2023-05-02 10:00:00'),
	(2, 2, 2, 27, 'SKU002', 9000, 0, 9000, 23, 15, 8, 0, 1, '2023-05-02 11:00:00'),
	(3, 3, 3, 2, 'SKU003', 2750, 100, 2650, 20, 10, 10, 0, 1, '2023-05-02 12:00:00'),
	(4, 4, 4, 3, 'SKU004', 13200, 600, 12600, 28, 11, 15, 0, 1, '2023-05-02 13:00:00'),
	(5, 5, 5, 4, 'SKU005', 66000, 0, 66000, 21, 14, 7, 0, 1, '2023-05-02 14:00:00'),
	(6, 6, 1, 5, 'SKU006', 1650, 0, 1650, 19, 12, 7, 0, 2, '2023-05-02 15:00:00'),
	(7, 7, 2, 6, 'SKU007', 9000, 0, 9000, 22, 13, 9, 0, 1, '2023-05-02 16:00:00'),
	(8, 8, 3, 7, 'SKU008', 4500, 0, 4500, 20, 15, 3, 0, 2, '2023-05-02 17:00:00'),
	(9, 9, 4, 8, 'SKU009', 500, 0, 500, 18, 10, 8, 0, 3, '2023-05-02 18:00:00'),
	(10, 10, 5, 9, 'SKU010', 3000, 0, 3000, 26, 16, 10, 0, 2, '2023-05-02 19:00:00'),
	(11, 1, 1, 10, 'SKU011', 1150, 0, 1150, 24, 12, 12, 0, 2, '2023-05-02 20:00:00'),
	(12, 2, 2, 11, 'SKU012', 5500, 0, 5500, 25, 13, 12, 0, 1, '2023-05-02 21:00:00'),
	(13, 3, 3, 12, 'SKU013', 7700, 700, 7000, 22, 11, 9, 0, 3, '2023-05-02 22:00:00'),
	(14, 4, 4, 13, 'SKU014', 23000, 0, 23000, 26, 18, 6, 0, 3, '2023-05-02 23:00:00'),
	(15, 5, 1, 14, 'SKU015', 1150, 0, 1150, 27, 12, 13, 0, 2, '2023-05-03 00:00:00'),
	(16, 6, 2, 15, 'SKU016', 920, 0, 920, 21, 15, 6, 0, 2, '2023-05-03 01:00:00'),
	(17, 7, 3, 16, 'SKU017', 34500, 0, 34500, 23, 10, 11, 0, 2, '2023-05-03 02:00:00'),
	(18, 8, 1, 17, 'SKU018', 1150, 0, 1150, 24, 13, 11, 0, 2, '2023-05-03 03:00:00'),
	(19, 9, 2, 18, 'SKU019', 2300, 0, 2300, 20, 12, 8, 0, 2, '2023-05-02 19:00:00'),
	(20, 10, 3, 19, 'SKU020', 16500, 1000, 15500, 23, 15, 5, 0, 3, '2023-05-02 20:00:00');


	CREATE INDEX [idx_item_product] ON [inventory].[item]([productId] ASC);
	CREATE INDEX [idx_item_brand] ON [inventory].[item]([brandId] ASC);
	CREATE INDEX [idx_item_user] ON [inventory].[item]([supplierId] ASC);
	CREATE INDEX [idx_item_order] ON [inventory].[item]([orderId] ASC);

	--Delete From [inventory].[item] Where id >= 1;
	--DBCC CHECKIDENT ('[inventory].[item]', RESEED, 1);

--Order Item Table
CREATE TABLE [inventory].[order_item] (
[id] BIGINT NOT NULL IDENTITY(1,1),
[productId] BIGINT NOT NULL,
[itemId] BIGINT NOT NULL,
[orderId] BIGINT NOT NULL,
[sku] VARCHAR(100) NOT NULL,
[price] FLOAT NOT NULL DEFAULT 0,
[discount] FLOAT NOT NULL DEFAULT 0,
[quantity] SMALLINT NOT NULL DEFAULT 0,
[createdAt] DATETIME NOT NULL,
[updatedAt] DATETIME NULL DEFAULT NULL,
[content] TEXT NULL DEFAULT NULL,
PRIMARY KEY ([id]),
INDEX [idx_order_item_product] ([productId] ASC),
INDEX [idx_order_item_item] ([itemId] ASC),
INDEX [idx_order_item_order] ([orderId] ASC),
CONSTRAINT [fk_order_item_product]
FOREIGN KEY ([productId])
REFERENCES [inventory].[product] ([id])
ON DELETE NO ACTION
ON UPDATE NO ACTION,
CONSTRAINT [fk_order_item_item]
FOREIGN KEY ([itemId])
REFERENCES [inventory].[item] ([id])
ON DELETE NO ACTION
ON UPDATE NO ACTION,
CONSTRAINT [fk_order_item_order]
FOREIGN KEY ([orderId])
REFERENCES [inventory].[order] ([id])
ON DELETE NO ACTION
ON UPDATE NO ACTION
);

	/*
	ALTER TABLE [inventory].[order_item]
	DROP CONSTRAINT [fk_order_item_item]
	DROP TABLE [inventory].[item]
	
	ALTER TABLE [inventory].[order_item]
	ADD CONSTRAINT [fk_order_item_item]
	FOREIGN KEY ([itemId])
	REFERENCES [inventory].[item]([id])
	ON DELETE CASCADE
	*/

INSERT INTO [inventory].[order_item] ([productId], [itemId], [orderId], [sku], [price], [discount], [quantity], [createdAt])
VALUES
    (1, 2, 20, 'SKU001', 5300, 200, 26, '2023-05-02 10:00:00'),
    (2, 3, 27, 'SKU002', 9000, 0, 23, '2023-05-02 11:00:00'),
    (3, 4, 2, 'SKU003', 2650, 100, 20, '2023-05-02 12:00:00'),
    (4, 5, 3, 'SKU004', 12600, 600, 28, '2023-05-02 13:00:00'),
    (5, 6, 4, 'SKU005', 66000, 0, 21, '2023-05-02 14:00:00'),
    (6, 7, 5, 'SKU006', 1650, 0, 19, '2023-05-02 15:00:00'),
    (7, 8, 6, 'SKU007', 9000, 0, 22, '2023-05-02 16:00:00'),
    (8, 9, 7, 'SKU008', 4500, 0, 20, '2023-05-02 17:00:00'),
    (9, 10, 8, 'SKU009', 500, 0, 18, '2023-05-02 18:00:00'),
    (10, 11, 9, 'SKU010', 3000, 0, 26, '2023-05-02 19:00:00'),
    (11, 12, 10, 'SKU011', 1150, 0, 24, '2023-05-02 20:00:00'),
    (12, 13, 11, 'SKU012', 5500, 0, 25, '2023-05-02 21:00:00'),
    (13, 14, 12, 'SKU013', 7000, 700, 22, '2023-05-02 22:00:00'),
    (14, 15, 13, 'SKU014', 23000, 0, 26, '2023-05-02 23:00:00'),
    (15, 16, 14, 'SKU015', 1150, 0, 27, '2023-05-03 00:00:00'),
    (16, 17, 15, 'SKU016', 920, 0, 21, '2023-05-03 01:00:00'),
    (17, 18, 16, 'SKU017', 34500, 0, 23, '2023-05-03 02:00:00'),
    (18, 19, 17, 'SKU018', 1150, 0, 24, '2023-05-03 03:00:00'),
    (19, 20, 18, 'SKU019', 2300, 0, 20, '2023-05-02 19:00:00'),
    (20, 21, 19, 'SKU020', 15500, 1000, 23, '2023-05-02 20:00:00');


	--Delete From [inventory].[order_item] Where id >= 1;
	--DBCC CHECKIDENT ('[inventory].[order_item]', RESEED, 1); 

--Transaction Table
CREATE TABLE [inventory].[transaction] (
  [id] BIGINT NOT NULL IDENTITY(1,1),
  [userId] BIGINT NOT NULL,
  [orderId] BIGINT NOT NULL,
  [code] VARCHAR(100) NOT NULL,
  [type] SMALLINT NOT NULL DEFAULT 0,
  [mode] SMALLINT NOT NULL DEFAULT 0,
  [status] SMALLINT NOT NULL DEFAULT 0,
  [createdAt] DATETIME NOT NULL,
  [updatedAt] DATETIME NULL DEFAULT NULL,
  [content] TEXT NULL DEFAULT NULL,
  CONSTRAINT [PK_transaction_id] PRIMARY KEY ([id]),
  CONSTRAINT [FK_transaction_user] FOREIGN KEY ([userId])
    REFERENCES [inventory].[user] ([id])
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT [FK_transaction_order] FOREIGN KEY ([orderId])
    REFERENCES [inventory].[order] ([id])
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

CREATE INDEX [idx_transaction_user] ON [inventory].[transaction] ([userId] ASC);
CREATE INDEX [idx_transaction_order] ON [inventory].[transaction] ([orderId] ASC);

INSERT INTO [inventory].[transaction] ([userId], [orderId], [code], [type], [mode], [status], [createdAt], [updatedAt], [content])
VALUES
	(11, 11, 'TRX001', 0, 0, 0, '2023-05-05 10:00:00', NULL, 'Transaction for order 1 by user 1'),
	(2, 2, 'TRX002', 1, 1, 1, '2023-05-05 11:30:00', NULL, 'Transaction for order 2 by user 2'),
	(3, 3, 'TRX003', 0, 1, 2, '2023-05-05 12:15:00', NULL, 'Transaction for order 3 by user 3'),
	(10, 4, 'TRX004', 1, 0, 0, '2023-05-05 14:00:00', NULL, 'Transaction for order 4 by user 1'),
	(2, 5, 'TRX005', 0, 1, 1, '2023-05-05 15:45:00', NULL, 'Transaction for order 5 by user 2'),
	(3, 12, 'TRX345', 1, 0, 1, '2022-04-05 12:23:45', NULL, 'Payment received successfully.'),
	(4, 14, 'TRX678', 2, 1, 0, '2022-04-07 09:14:25', '2022-04-07 09:14:27', 'Refund initiated.'),
	(5, 18, 'TRX901', 1, 2, 1, '2022-04-12 16:38:12', NULL, 'Payment pending.'),
	(2, 19, 'TRX234', 0, 1, 2, '2022-04-14 08:45:19', NULL, 'Transaction failed due to insufficient funds.'),
	(12, 22, 'TRX567', 1, 0, 1, '2022-04-18 11:59:59', NULL, 'Payment received successfully.'),
	(6, 26, 'TRX890', 0, 1, 2, '2022-04-22 15:27:33', NULL, 'Transaction failed due to invalid card details.'),
	(3, 27, 'TRX123', 2, 0, 0, '2022-04-24 17:56:48', '2022-04-24 18:01:12', 'Refund processed.'),
	(4, 13, 'TRX456', 1, 2, 1, '2022-04-29 09:44:22', NULL, 'Payment pending.'),
	(5, 20, 'TRX789', 1, 0, 1, '2022-05-02 13:10:15', NULL, 'Payment received successfully.'),
	(11, 21, 'TRX012', 0, 2, 2, '2022-05-05 19:28:37', NULL, 'Transaction failed due to network error.');
