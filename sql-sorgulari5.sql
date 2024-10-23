1- Film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en uzun (length) 5 filmi sıralayınız:
SELECT title, length FROM film WHERE title LIKE '%n' 
ORDER BY length DESC
LIMIT 5;

2- Film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en kısa (length) ikinci (6, 7, 8, 9, 10) 5 filmi sıralayınız:
SELECT title, length FROM film WHERE title LIKE '%n'
ORDER BY length ASC
LIMIT 5 OFFSET 5;

Açıklama: LIMIT 5 OFFSET 5 ile ilk 5 filmi atlayarak (en kısa olanlar) 6. ile 10. filmler arasındaki verileri alıyoruz.

3- Customer tablosunda bulunan last_name sütununa göre azalan sıralamada store_id 1 olmak koşuluyla ilk 4 veriyi sıralayınız:
SELECT first_name, last_name, store_id FROM customer WHERE store_id = 1
ORDER BY last_name DESC
LIMIT 4;
