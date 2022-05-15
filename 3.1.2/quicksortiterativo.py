#Algoritmo de partição

def particao(array,inicio,final):
    i = ( inicio - 1 )
    x = array[final]
 
    for j in range(inicio , final):
        if   array[j] <= x:
 
            i = i+1
            array[i],array[j] = array[j],array[i]
 
    array[i+1],array[final] = array[final],array[i+1]
    
    return (i+1)

#QuickSort iterativo
def quicksort_iterativo(array,inicio,final):
 
    tam = final - inicio + 1
    pilha = [0] * (tam)
 
    top = -1
 
    top = top + 1
    pilha[top] = inicio
    top = top + 1
    pilha[top] = final
 
    while top >= 0:
 
        final = pilha[top]
        top = top - 1
        inicio = pilha[top]
        top = top - 1
 
        p = particao( array, inicio, final )

        if p-1 > inicio:
            top = top + 1
            pilha[top] = inicio
            top = top + 1
            pilha[top] = p - 1

        if p+1 < final:
            top = top + 1
            pilha[top] = p + 1
            top = top + 1
            pilha[top] = final
 
#Exemplo
array = [9,2,3,4,11,13,8,5,1,14,6,10,15,7,12]
quicksort_iterativo(array, 0, len(array)-1)
print(array)
