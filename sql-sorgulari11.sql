1. actor ve customer tablolarında bulunan first_name sütunları için tüm verileri sıralayalım:
SELECT first_name
FROM actor
UNION
SELECT first_name
FROM customer
ORDER BY first_name;
Açıklama: UNION operatörü, iki tablodaki tüm first_name değerlerini birleştirir ve tekrar eden (duplikat) verileri kaldırarak sıralar.

2. actor ve customer tablolarında bulunan first_name sütunları için kesişen verileri (ortak olanları) sıralayalım:
SELECT first_name
FROM actor
INTERSECT
SELECT first_name
FROM customer
ORDER BY first_name;
Açıklama: INTERSECT operatörü, iki tablodaki ortak olan first_name değerlerini döner.

3. actor tablosunda bulunan ancak customer tablosunda bulunmayan first_name verilerini sıralayalım:
SELECT first_name
FROM actor
EXCEPT
SELECT first_name
FROM customer
ORDER BY first_name;
Açıklama: EXCEPT operatörü, actor tablosundaki first_name değerlerini döner, ancak customer tablosundaki değerleri çıkarır (fark alır).

4. İlk 3 sorguyu tekrar eden veriler için yapalım (duplikatları da dahil edelim):
Tüm verileri tekrar edenlerle birlikte sıralama (UNION ALL):
SELECT first_name
FROM actor
UNION ALL
SELECT first_name
FROM customer
ORDER BY first_name;
Açıklama: UNION ALL, tüm verileri tekrar edenlerle birlikte döndürür.

5. Kesişen (ortak) verileri tekrar edenlerle birlikte sıralama (JOIN kullanarak):
SELECT a.first_name
FROM actor a
JOIN customer c ON a.first_name = c.first_name
ORDER BY a.first_name;
Açıklama: JOIN kullanarak iki tablodaki ortak (tekrar eden) first_name değerlerini getiriyoruz.

6. İlk tabloda bulunan ancak ikinci tabloda bulunmayan verileri tekrar edenlerle birlikte sıralama:
SELECT a.first_name
FROM actor a
LEFT JOIN customer c ON a.first_name = c.first_name
WHERE c.first_name IS NULL
ORDER BY a.first_name;
Açıklama: LEFT JOIN ve WHERE koşuluyla customer tablosunda bulunmayan actor tablosundaki first_name değerlerini alıyoruz.
