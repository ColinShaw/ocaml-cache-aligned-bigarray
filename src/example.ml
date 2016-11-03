open Printf
open Array
open Alignedba

let () =
    let ba = create_float 100
    in
    let a = array_of_ba ba
    in
    let _ = iter (printf "%f\n") a
    in
    ()
