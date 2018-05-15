from random import randint

# bubble sort
def BubbleSort(nlist):
    # range (start, stop, step)
    for passnum in range(len(nlist)-1, 0, -1):
        print('passnum')
        print(passnum)
        for j in range(passnum):
            print('j')
            print(j)
            if nlist[j] > nlist[j+1]:
                print('switch')
                nlist[j], nlist[j+1] = nlist[j+1], nlist[j]
    return nlist

# selection sort
def SelectionSort(arr):
    for k in range(len(arr)):
        min_index = k # smallest element
        for j in range(k+1, len(arr)):
            if arr[min_index] > arr[j]:
                min_index = j
        arr[k], arr[min_index] = arr[min_index], arr[k]
    return arr

def InsertionSort(arr):
    for k in range(1, len(arr)):
        key = arr[k]
        j = k
        while j > 0 and arr[j-1] > arr[j]:
            arr[j], arr[j-1] = arr[j-1], arr[j]
            j = j - 1
        return arr

def QuickSort(arr):
    print('not implemented yet')

def GetList():

    arr = []
    for i in range(10):
        arr.append(randint(1, 100))
    return arr

if __name__ == '__main__':

    inp = input('Which sorting (bubble, selection, insertion, quick, merge) ? ')

    if inp == 'bubble':

        arr = GetList()

        print(arr)
        print(BubbleSort(arr))

    elif inp == 'selection':

        arr = GetList()

        print(arr)
        print(SelectionSort(arr))

    elif inp == 'insertion':

        arr = GetList()

        print(arr)
        print(InsertionSort(arr))

    elif inp == 'quick':

        arr = GetList()

        print(arr)
        print(QuickSort(arr))