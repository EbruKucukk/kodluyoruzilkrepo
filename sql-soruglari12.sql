1. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?
SELECT COUNT(*) AS FilmSayisi
FROM film
WHERE length > (SELECT AVG(length) FROM film);

Açıklama:
COUNT(*): Bu, ortalama uzunluktan daha uzun olan filmlerin sayısını döndürür.
SELECT AVG(length) FROM film: Bu alt sorgu, film tablosundaki ortalama film uzunluğunu hesaplar.

2. Film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
SELECT COUNT(*) AS EnYuksekRentalRateFilmSayisi
FROM film
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);

Açıklama:
MAX(rental_rate): Bu, film tablosundaki en yüksek rental_rate değerini döndürür.
COUNT(*): En yüksek rental_rate değerine sahip film sayısını döndürür.

3. Film tablosunda en düşük rental_rate ve en düşük replacement_cost değerlerine sahip filmleri sıralayınız.
SELECT *
FROM film
WHERE rental_rate = (SELECT MIN(rental_rate) FROM film)
  AND replacement_cost = (SELECT MIN(replacement_cost) FROM film);

Açıklama:
MIN(rental_rate) ve MIN(replacement_cost): Bu alt sorgular, film tablosundaki en düşük rental_rate ve en düşük replacement_cost değerlerini döndürür.
Bu sorgu, her iki değere de eşit olan filmleri listeleyecektir.

4. Payment tablosunda en fazla sayıda alışveriş yapan müşterileri sıralayınız.
SELECT customer_id, COUNT(*) AS AlisverisSayisi
FROM payment
GROUP BY customer_id
ORDER BY AlisverisSayisi DESC;

Açıklama:
COUNT(*): Bu, her bir müşteri için toplam alışveriş sayısını hesaplar.
GROUP BY customer_id: Bu, her müşteri kimliğine göre gruplama yapar.
ORDER BY AlisverisSayisi DESC: Bu, sonuçları alışveriş sayısına göre azalan sırayla sıralar.
