require minmaxheap public

[export]
def main() {
    var thing = new default<$TMinMaxheap<int>>.build_from_arr([5,
        65,
        80,
        25,
        37,
        8,
        15,
        57,
        36,
        45,
        59,
        20,
        14,
        32,
        18],
        @(typevalue: int) {
        return typevalue
    })
    
    thing.display()
    print("AFter removing min and max:\n")
    thing.remove_min()
    thing.remove_max()
    thing.display()
}