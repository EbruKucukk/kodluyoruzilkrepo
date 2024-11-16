import math

#demetler içeren liste oluşturma
points = [(1, 2), (4, 6), (7, 8), (2, 3)]

#Öklid fonksiyonunun tanımlanması
def euclideanDistance(point1, point2):
    # İki noktanın alınması
    x1, y1 = point1
    x2, y2 = point2
    # Bu iki nokta arasındaki mesafenin döndürülmesi
    distance = math.sqrt((x2 - x1)**2 + (y2 - y1)**2)
    return distance

#Mesafenin hesaplanması
distances = []
for i in range(len(points)):
    for j in range(i + 1, len(points)):
        dist = euclideanDistance(points[i], points[j])
        distances.append(dist)

# Minimum mesafenin bulunması
min_distance = min(distances)
print("Minimum mesafe:", min_distance)
