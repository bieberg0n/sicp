function sort(a, b) {
    if (a >= b) {
        return [a, b];
    } else {
        return [b, a];
    }
}


function returnSum(a, b, c) {
    arr1 = sort(a, b);
    arr2 = sort(c, arr1[1]);
    return arr1[0] + arr2[0];
}


function test() {
    test_data = [
        [2, 3, 4, 7],
        [2, 2, 3, 5],
        [3, 3, 3, 6]
    ];
    test_data.forEach((arr) => {
        result = returnSum(arr[0], arr[1], arr[2]);
        if (result !== arr[3]) {
            console.log('Error', arr);
        }
    });
}


test();

