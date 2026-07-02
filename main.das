require maxheap public

struct BooleanItem {
    sort_by: int

    value: bool
}

typedef BoolMaxheap = $TMaxheap<BooleanItem>

[export]
def main() {
    let bool_item_arr = [BooleanItem(sort_by = 5, value = true),
        BooleanItem(sort_by = 3, value = true),
        BooleanItem(sort_by = 17, value = true),
        BooleanItem(sort_by = 10, value = true),
        BooleanItem(sort_by = 84, value = true),
        BooleanItem(sort_by = 19, value = true),
        BooleanItem(sort_by = 6, value = true),
        BooleanItem(sort_by = 22, value = true),
        BooleanItem(sort_by = 9, value = true)]

    // Initialization is as such, provided you have an array and a key to sort by (as long as your lambda returns an integer.) Preferable to the second option
    var bool_heap_test_1 = new default<BoolMaxheap>.build_from_arr(bool_item_arr, @(typevalue: BooleanItem) {
        return typevalue.sort_by
    })

    // Is the same as above (with inferior performance)
    var bool_heap_test_2 = new default<BoolMaxheap>
    bool_heap_test_2.define_provider(@(typevalue: BooleanItem) {
        return typevalue.sort_by
    })

    bool_heap_test_2.insert(BooleanItem(sort_by = 5, value = true))
    bool_heap_test_2.insert(BooleanItem(sort_by = 3, value = true))
    bool_heap_test_2.insert(BooleanItem(sort_by = 17, value = true))
    bool_heap_test_2.insert(BooleanItem(sort_by = 10, value = true))
    bool_heap_test_2.insert(BooleanItem(sort_by = 84, value = true))
    bool_heap_test_2.insert(BooleanItem(sort_by = 19, value = true))
    bool_heap_test_2.insert(BooleanItem(sort_by = 6, value = true))
    bool_heap_test_2.insert(BooleanItem(sort_by = 22, value = true))
    bool_heap_test_2.insert(BooleanItem(sort_by = 9, value = true))
    bool_heap_test_2.print()

}