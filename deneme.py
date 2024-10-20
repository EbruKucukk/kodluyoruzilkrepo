def flatten(lst):
    flat_list = []
    for item in lst:
        if isinstance(item, list):
            flat_list.extend(flatten(item))  # Liste ise, yine aynı fonksiyon ile düzleştir
        else:
            flat_list.append(item)  # Liste değilse düz listeye ekle
    return flat_list

# Örnek kullanım
input_list = [[1, 'a', ['cat'], 2], [[[3]], 'dog'], 4, 5]
output_list = flatten(input_list)
print(output_list)
