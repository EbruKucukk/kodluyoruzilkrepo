1- City tablosu ile Country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz LEFT JOIN sorgusu:
SELECT city.city, country.country
FROM city
LEFT JOIN country ON city.country_id = country.country_id;
Açıklama: Bu sorgu, tüm şehirleri (city) ve varsa onların ilgili ülkelerini (country) gösterecektir. Eğer bir şehre karşılık gelen ülke yoksa, NULL olarak dönecektir.

2- Customer tablosu ile Payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz RIGHT JOIN sorgusu:
SELECT payment.payment_id, customer.first_name, customer.last_name
FROM payment
RIGHT JOIN customer ON payment.customer_id = customer.customer_id;

Açıklama: Bu sorgu, tüm müşteri bilgilerini gösterecek ve varsa onlarla ilişkilendirilmiş ödeme bilgilerini gösterecektir. Eğer bir müşteriye ait ödeme bilgisi yoksa, ödeme verisi NULL olarak dönecektir.

3- Customer tablosu ile Rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz FULL JOIN sorgusu:
SELECT rental.rental_id, customer.first_name, customer.last_name
FROM rental
FULL JOIN customer ON rental.customer_id = customer.customer_id;
