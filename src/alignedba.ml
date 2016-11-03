open Bigarray

type ba_float = (float, float32_elt, c_layout) Array1.t
type ba_int = (int, int8_unsigned_elt, c_layout) Array1.t

external create_float : int -> ba_float = "create_aligned_ba_float"
external create_int : int -> ba_int = "create_aligned_ba_int"
external ba_of_array : float array -> ba_float = "bigarray_of_array"
external array_of_ba : ba_float -> float array = "array_of_bigarray"

