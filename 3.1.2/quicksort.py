#Função que gera as partições

def particao(array, inicio, fim):
    pivo = array[inicio]
    low = inicio + 1
    high = fim

    while True:
        while low <= high and array[high] >= pivo:
            high = high - 1
        while low <= high and array[low] <= pivo:
            low = low + 1
        if low <= high:
            array[low], array[high] = array[high], array[low]
        else:
            break

    array[inicio], array[high] = array[high], array[inicio]

    return high
#Algoritmo
def quick_sort(array, inicio, fim):
    if inicio >= fim:
        return

    p = particao(array, inicio, fim)
    quick_sort(array, inicio, p-1)
    quick_sort(array, p+1, fim)

#Exemplo
array = [9,2,3,4,11,13,8,5,1,14,6,10,15,7,12]
quick_sort(array, 0, len(array) - 1)
print(array)
