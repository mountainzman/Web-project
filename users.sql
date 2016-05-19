-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Май 19 2016 г., 20:48
-- Версия сервера: 10.1.10-MariaDB
-- Версия PHP: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `users`
--

-- --------------------------------------------------------

--
-- Структура таблицы `basket`
--

CREATE TABLE `basket` (
  `id` int(11) NOT NULL,
  `product_id` text COLLATE utf8_croatian_ci NOT NULL,
  `login` text COLLATE utf8_croatian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `ProductName` text COLLATE utf8_croatian_ci NOT NULL,
  `ProductPrice` int(11) NOT NULL,
  `ProductDescription` text COLLATE utf8_croatian_ci NOT NULL,
  `ProductImage` text COLLATE utf8_croatian_ci NOT NULL,
  `ProductClass` text COLLATE utf8_croatian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `ProductName`, `ProductPrice`, `ProductDescription`, `ProductImage`, `ProductClass`) VALUES
(1, 'MEN''S MILLERTON JACKET', 110, 'A streamlined rain jacket that delivers year-round technical performance on the trails, this waterproof, windproof two-layer shell provides the reliable protection you need during outdoor excursions in wet weather.', 'Jacket.png', 'Man'),
(2, 'MEN''S DRYZZLE JACKET', 199, 'Head into the depths of the wilderness and remain dry during springtime storms with this lightweight Gore-Tex PacLite hooded shell that''s constructed with fully sealed seams to create an impenetrable barrier against wind and water.', 'Jacket2.png', 'Man'),
(5, 'MEN''S VENTURE JACKET', 99, 'Ready for backcountry storms or everday excursions, this waterproof, windproof hooded men''s jacket is designed to protect you from rain, year round. The breathable Dryvent 2.5L soft-shell exterior is finished with a dry-touch coating.  ', 'Jacket3.png', 'Man'),
(6, 'MEN''S VENTURE FASTPACK JACKET', 129, 'For exceptional protection that''s also incredibly lightweight (8.36 oz), this rain shell features our streamlined Active Fit and delivers breathable, waterproof protection during fastpacking adventures. ', 'Jacket4.png', 'Man'),
(7, 'MEN''S GRAYS HARBOR INSULATED PARKA', 199, 'Designed for complete coverage in spring conditions, this waterproof shell parka is crafted with light insulation for a boost of warmth and features commute-specific pockets for your Metro pass and media player.', 'Jacket5.png', 'Man'),
(8, 'MEN''S NSR SHORTS 7"', 40, 'Ready to go the distance, these 7 inseam woven running shorts feature mesh panels at the sides for improved breathability and a quick-drying liner for extra coverage on the trails.', 'Short.png', 'Man'),
(9, 'MEN''S NSR DUAL SHORTS 7', 55, 'Train for a half marathon or run your first 10K in these all-around stretch-woven running shorts that feature a 7 inseam and a compressive boxer lining for extra support and coverage.', 'Short2.png', 'Man'),
(10, 'MEN''S BETTER THAN NAKED LONG HAUL SHORT', 65, 'When you''re fifteen miles into your run, you''ll have everything you need to push through the next ten with 7 inseam woven shorts that are designed to maximize storage capacity at the wide waistband.', 'Short3.png', 'Man'),
(11, 'MEN''S BETTER THAN NAKED SPLIT SHORTS 3.5', 55, 'Maximize your mobility on long runs with lightweight split shorts that feature a 3.5 inseam, breathable stretch mesh panels and a quick-drying knit liner with wicking FlashDry fibers.', 'Short4.png', 'Man'),
(12, 'MEN''S KILOWATT PRO SHORTS', 75, 'A minimal design that offers maximum abrasion-resistance while remaining lightweight, these men''s training shorts are crafted with stretch and feature Flash-Dry-XD fibers for extreme durability and breathability.', 'Short5.png', 'Man'),
(13, 'ACCESS PACK', 235, 'Our most innovative backpack was created with the modern day commuter in mind. With three patents pending, the Access Pack is engineered with a revolutionary design that allows you to effortlessly spring open the main compartment with a custom made quick release latch.', 'Bag.png', 'Man'),
(14, 'ROUTER BACKPACK', 149, 'Carry everything you need for an action-packed day in our largest backpack, the redesigned 35-liter Router that''s constructed of hyper-durable ballistics nylon and crafted with a padded haul handle on the exterior.', 'Bag2.png', 'Man'),
(15, 'SURGE BACKPACK\r\n', 129, 'Completely redesigned to organize your electronics and simplify your life on-the-go, the 33-liter Surge backpack is constructed of hyper-durable ballistics nylon and crafted with a padded haul handle on the exterior.', 'Bag3.png', 'Man'),
(16, 'RECON BACKPACK', 99, 'Stay organized while navigating from point A to B with the 31-liter Recon daypack that features a redesigned suspension system for all-day comfort, a 15" laptop sleeve in the main compartment and a tablet sleeve in the front compartment. ', 'Bag4.png', 'Man'),
(17, 'VAULT BACKPACK', 55, 'Keep your gear safely stashed away in the completely redesigned 28-liter Vault. The iron-clad design features a large main zip compartment with a floating, padded 15" laptop sleeve and the front compartment features an internal organization panel to stash smaller items.', 'Bag5.png', 'Man'),
(18, 'MEN''S STRAIGHT PARAMOUNT 3.0 CONVERTIBLE PANTS', 90, 'Now crafted with a slender, straight-fitting silhouette, these convertible stretch-woven hiking pants feature legs that can be zipped off at the knees to create shorts without slowing down on the trails.', 'Trou.png', 'Man'),
(19, 'MEN''S BLAZER PANTS\r\n', 70, 'Be a trailblazer in lightweight, water-repellent hiking pants that are crafted with extra stretch and ventilation at the waistband for freedom of movement plus breathability.\r\n', 'Trou2.png', 'Man'),
(20, 'MEN''S THE NARROWS PANTS', 70, 'Sport a classic on the local trails with these midweight pants that won''t restrict your movement and are crafted with durable Sorona yarns for stretch-performance that''s also environmentally friendly.\r\n', 'Trou3.png', 'Man'),
(23, 'WOMEN''S TOMALES BAY JACKET\r\n', 180, 'Layer up for waterproof protection in rainy conditions with this 34.5 long jacket that features commute-specific pockets for your Metro pass and media player.\r\n', 'WoJacket.png', 'Woman'),
(24, 'WOMEN''S RESOLVE PLUS JACKET\r\n', 99, 'Keep the adventure going with this breathable, mesh-lined rain jacket that''s crafted with fully sealed seams to keep out moisture and provide reliable waterproof protection.\r\n', 'WoJacket2.png', 'Woman'),
(25, 'WOMEN''S RYDELL BOMBER\r\n', 139, 'This versatile, bomber-inspired jacket is lightly insulated and features internal quilting to keep you warmer in cool conditions.\r\n', 'WoJacket3.jpeg', 'Woman'),
(26, 'WOMEN''S RESOLVE PLUS JACKET\r\n', 99, 'Keep the adventure going with this breathable, mesh-lined rain jacket that''s crafted with fully sealed seams to keep out moisture and provide reliable waterproof protection.\r\n', 'WoJacket4.jpeg', 'Woman'),
(27, 'WOMEN''S RESOLVE JACKET\r\n', 90, 'Just because it''s raining outside doesn''t mean you have to take a rain check on your plans. Arm yourself with this waterproof, windproof seam sealed jacket and rain dates will be a thing of the past.\r\n', 'WoJacket5.jpeg', 'Woman'),
(28, 'WOMEN''S SHORT-SLEEVE GETTING LOST SCOOP-NECK TEE\r\n', 25, 'Get lost outdoors in this comfortable V-neck tee that''s crafted of breathable cotton.\r\n', 'Tshirt.png', 'Woman'),
(29, 'WOMEN''S SHORT-SLEEVE NATIONAL PARKS SCOOP-NECK TEE\r\n', 25, 'Show off the beauty of Yellowstone National Park in this scoop-neck tee that''s crafted with a flattering, slim fit.\r\n', 'Tshirt2.png', 'Woman'),
(30, 'WOMEN''S SHORT-SLEEVE NATIONAL PARKS TEE\r\n', 25, 'Show your love for our national parks with this slim-fitting scoop-neck tee that''s crafted of breathable cotton. Graphics vary by color selection.\r\n', 'Tshirt3.png', 'Woman'),
(31, 'WOMEN''S SHORT-SLEEVE HALF DOME V-NECK TEE - NEW FIT\r\n', 25, 'Stock up on this low-maintenance basic tee that''s crafted of breathable cotton/organic cotton and pops with our multicolor logo.\r\n', 'Tshirt4.png', 'Woman'),
(32, 'WOMEN''S SHARE YOUR ADVENTURE TEE\r\n', 30, 'Roam where you want to in this soft T-shirt that''s screen-printed with Never Stop Exploring across the upper back. Then share your adventures with us on Instagram by tagging your photos with ', 'Tshirt5.png', 'Woman'),
(33, 'NOT YOUR BOYFRIEND''S TRUCKER\r\n', 25, 'No matter which graphic she picks, this mesh-backed trucker hat has a women-specific fit for all-day comfort outdoors.\r\n', 'Hat.png', 'Woman'),
(34, 'MARKET SUN BRIMMER\r\n', 40, 'Perfect for getaways by the coast, this crushable raffia straw hat is easy to stash in a backpack or weekender bag for stylish sun protection.\r\n', 'Hat2.jpg', 'Woman'),
(35, 'WOMEN''S CANVAS MARKET BRIMMER\r\n', 35, 'For convenient full-coverage protection from the midday sun, this cotton canvas sun hat is crafted with a longer front brim and a slightly shorter back brim.\r\n', 'Hat4.png', 'Woman'),
(36, 'WOMEN''S HORIZON BRIMMER HAT\r\n', 35, 'Keep your cool while shielding your head from the sun in this women''s full-brim hat that''s crafted of nylon ripstop and features air vents.\r\n', 'Hat3.jpg', 'Woman'),
(37, 'SUN STASH HAT\r\n', 28, 'Prevent exposure to the full force of the sun''s rays wearing a reversible, packable ripstop bucket hat with UPF 50 protection and a crushable brim. Fold this versatile hat into its low-profile pocket and tote it with you for emergency use.\r\n', 'Hat5.jpg', 'Woman'),
(38, 'WOMEN''S RAPIDA MODA JACKET\r\n', 110, 'Stay visible, protected and warm during long runs with this weather-resistant woven running jacket that''s crafted with 360 degrees of reflectivity. A narrow mesh vent down the center back allows this jacket to remain breathable when layered.\r\n', 'Act.png', 'Woman'),
(39, 'WOMEN''S INITIATIVE SHORT-SLEEVE\r\n', 45, 'Tackle tough trail runs under the hot midday sun in this lightweight, UPF 30 running T-shirt that''s crafted with wicking FlashDry fibers throughout to speed drying and side mesh panels for improved breathability.\r\n', 'Act2.png', 'Woman'),
(40, 'WOMEN''S MOTUS TIGHT\r\n', 90, 'Stay warm without overheating on cold-weather runs with the support of these stretch tights that are crafted with strategically placed quick-drying FlashDry panels.\r\n', 'Act3.png', 'Woman'),
(41, 'WOMEN''S LITEWAVE TR\r\n', 100, 'Built for trail running, this lightweight, yet durable shoe features a neutral platform and delivers a fast feel for a fun, smooth ride.\r\n', 'Act4.png', 'Woman'),
(42, 'WOMEN''S INITIATIVE LONG-SLEEVE\r\n', 50, 'Cool down between endurance race aid stations in this soft, breathable long-sleeve running shirt that features wicking FlashDry fibers to speed drying and is crafted with mesh panels for improved ventilation.\r\n', 'Act5.png', 'Woman'),
(43, 'WOMEN''S WARM LONG-SLEEVE CREW NECK\r\n', 50, 'An essential baselayer for breathable warmth during low- to medium-intensity activities in cold conditions, this versatile midweight crew-neck top has a slim, next-to-skin fit. ', 'Ski.png', 'Woman'),
(44, 'WOMEN''S FREEDOM LRBC INSULATED PANTS\r\n', 160, 'Take one last run to perfect your technique on the moguls, even on colder days, with 60 g Heatseeker warming your lower half. These relaxed, waterproof ski pants are constructed with fully sealed seams.\r\n', 'Ski2.png', 'Woman'),
(45, 'HIMALAYAN MITT\r\n', 165, 'Built to endure 8,000-meter ascents, the Himalayan Mitt is the ultimate mountaineering mitt with top-quality, 600-fill goose down at palm and insulation throughout for extreme warmth in extreme conditions. ', 'Ski3.png', 'Woman'),
(46, 'SHADOW 30+10', 149, 'Designed without compromise, the Shadow 30 + 10 is a fully functioning multi-day pack with a minimalist soul that''s designed to handle the approach and then be stripped down for the summit bid.\r\n', 'Ski4.png', 'Woman'),
(48, 'BOYS'' INSULATED ALLABOUT JACKET\r\n', 90, 'If he''s all about outdoor adventures in wet, chilly conditions, this waterproof rain jacket offers adequate coverage with more insulation placed in the torso (80g) and slightly less in the sleeves (60 g) for dialed protection.\r\n', 'Kid.png', 'Kids'),
(49, 'BOYS'' RESOLVE REFLECTIVE JACKET\r\n', 65, 'Help him transition into rainy springtime weather with a mesh-lined waterproof rain jacket that''s finished with reflective logos keep him visible in low light.\r\n', 'Kid2.png', 'Kids'),
(50, 'BOYS'' REVERSIBLE BREEZEWAY WIND JACKET\r\n', 85, 'This boys'' reversible hooded wind jacket features a water repellent finish and is lined with a soft fleece lining that can also be worn facing the exterior for additional versatility.\r\n', 'Kid3.png', 'Kids'),
(51, 'TODDLER TAILOUT RAIN JACKET\r\n', 50, 'Keep toddler boys'' drier in wet weather with this seam-sealed rain jacket that offers complete waterproof coverage.\r\n', 'Kid4.png', 'Kids'),
(59, 'GIRLS'' NOVELTY RESOLVE JACKET\r\n', 75, 'Brighten up any rainy day with this mesh-lined waterproof rain jacket that features reflective logos to keep her visible in low light.\r\n', 'Wkid.png', 'Kids'),
(60, 'GIRLS'' OSO HOODIE\r\n', 99, 'Ready to layer during springtime adventures, this durable midweight pullover hoodie for girls is finished with comfortable ribbed cuffs and hem.\r\n', 'Wkid2.png', 'Kids'),
(61, 'GIRLS'' THERMOBALL FULL-ZIP JACKET\r\n', 120, 'Girls can stay outside longer in wet, cool-to-cold conditions with this versatile jacket that''s insulated with quick-drying ThermoBall powered by PrimaLoft insulation and stows in its own hand pocket for packable outdoor protection.\r\n', 'Wkid3.png', 'Kids'),
(62, 'JR BASE CAMP COAST RIDGE\r\n', 50, 'A quick-drying water-friendly kids'' sandal with a fully adjustable, secure three-strap closure and a rubber sole that grips wet and dry surfaces.\r\n', 'Wkid4.png', 'Kids'),
(63, 'JR HEDGEHOG HIKER WATERPROOF\r\n', 60, 'Kids can take on any trail with this comfortable hiking shoe that''s durable, supportive and stable.\r\n', 'Wkid5.png', 'Kids'),
(64, 'MINI CREVASSE BACKPACK\r\n', 50, 'A classic The North Face backpack redesigned in 15-liter size for kids, and even adults.\r\n', 'Wkid6.png', 'Kids'),
(65, 'YOUTH SPROUT BACKPACK\r\n', 35, 'Designed for kids age two to four, this toddler-sized, 10-liter daypack allows young explorers to carry their own juice box, snacks and souvenirs from the trail.\r\n', 'Wkid7.png', 'Kids'),
(66, 'YOUTH PARTY IN THE BACK HAT\r\n', 22, 'A lightweight, UPF 50 hat with an attached sun cape protects sensitive skin and keeps sunburns from ruining their summertime fun.\r\n', 'Wkid8.png', 'Kids'),
(68, 'TODDLER BOYS'' GLACIER FULL ZIP HOODIE\r\n\r\n', 40, 'Ultra-comfortable fleece full zip hoodie for young explorers to sport while playing at the campsite or the backyard. Made with extremely durable, pill-resistant, lightweight fleece.', 'Bag7.png', 'Kids'),
(69, 'TODDLER GIRLS'' SEASHORE FLEECE HOODIE\r\n', 60, 'A mix of prints and solids adds a fun touch to this warm, midweight fleece toddler girls'' hoodie.\r\n', 'Bag8.png', 'Kids'),
(70, 'TODDLER HIKE/WATER SHORT\r\n', 30, 'These quick-drying woven pull-on shorts allow your toddler to transition in and out of the water with ease and feature UPF 50 for additional sun protection.\r\n', 'Bag9.png', 'Kids');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` text COLLATE utf8_croatian_ci NOT NULL,
  `password` text COLLATE utf8_croatian_ci NOT NULL,
  `name` text COLLATE utf8_croatian_ci NOT NULL,
  `email` text COLLATE utf8_croatian_ci NOT NULL,
  `surname` text COLLATE utf8_croatian_ci NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `name`, `email`, `surname`, `type`) VALUES
(4, 'admin', 'admin', 'admin', 'admin@admin', 'admin', 1),
(7, 'chico_90', 'qwerty', 'Francisco', 'chico_lachowsci@gmail.com', 'Lachowsci', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `basket`
--
ALTER TABLE `basket`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `basket`
--
ALTER TABLE `basket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
