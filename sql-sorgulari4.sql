1- Film tablosunda bulunan replacement_cost sütunundaki birbirinden farklı değerleri sıralayınız:
SELECT DISTINCT replacement_cost FROM film ORDER BY replacement_cost;

2- Film tablosunda bulunan replacement_cost sütununda birbirinden farklı kaç tane veri vardır?
SELECT COUNT(DISTINCT replacement_cost) AS unique_replacement_cost_count FROM film;

3- Film tablosunda bulunan film isimlerinde (title) kaç tanesi 'T' karakteri ile başlar ve aynı zamanda rating 'G' ye eşittir?
SELECT COUNT(*) AS count_T_starts_with_G_rating FROM film WHERE title LIKE 'T%'
  AND rating = 'G';

4- Country tablosunda bulunan ülke isimlerinden (country) kaç tanesi 5 karakterden oluşmaktadır?
SELECT COUNT(*) AS count_five_character_countries FROM country WHERE LENGTH(country) = 5;

5- City tablosundaki şehir isimlerinin kaç tanesi 'R' veya 'r' karakteri ile biter?
SELECT COUNT(*) AS count_R_r_ends_with FROM city WHERE city LIKE '%R' OR city LIKE '%r';
