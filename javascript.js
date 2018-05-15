console.log('Hello')

function print(val) {
    console.log(val);
}

// begin BubbleSort(list)

//    for all elements of list
//       if list[i] > list[i+1]
//          swap(list[i], list[i+1])
//       end if
//    end for
   
//    return list
   
// end BubbleSort

function BubbleSort(nlist) {

    print('bubble sort');

    let _not_sorted = true;

    while (_not_sorted) {

        _not_sorted = false;
     
        for (let index = 0; index < nlist.length; index++) {
            const element = nlist[index];
            
            if (element > nlist[index+1]) {
                
                nlist[index] = nlist[index+1];
                nlist[index+1] = element;

                _not_sorted = true;
    
            }
    
        }

    }

}

function SelectionSort(nlist) {

    print('selection sort');
    
    for (let k = 0; k < nlist.length; k++) {
        const element = nlist[k];
        
        let min_index = k;

        for (let j = k+1; j < nlist.length; j++) {
            
            if (nlist[j] < nlist[min_index]) {
                min_index = j;
            }

        }

        nlist[k] = nlist[min_index];
        nlist[min_index] = element;

    }

}

function InsertionSort(arr) {

    print('insertion sort');
    
    for (let k = 0; k < arr.length; k++) {
        const element = arr[k];
        
        let j = k;

        while (j > 0 && arr[j - 1] > arr[j]) {
            
            arr[j] = arr[j - 1];
            arr[j - 1] = element;
            j = j - 1;

        }

    }

}

function QuickSort(arr, left, right) {

    print('quick sort');

    let l = left; print(`left : ${l}`);
    let r = right - 1; print(`right : ${r}`);
    let size = right - left; print(`size : ${size}`);
    
    print('-------')

    if (size > 1) {
        
        

    }

}

let a = [4,6,5,7,3,10,32,1,23];
print(a);
QuickSort(a, 0, a.length)
print(a);