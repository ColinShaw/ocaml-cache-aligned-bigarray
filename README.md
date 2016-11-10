# __OCaml Cache-Aligned Bigarray__

The stock OCaml Bigarray, presumably for portability reasons, does not cache-align.  That 
is to say, it uses malloc().  At the expense of a little memory, we can 
eek out a little more performance for numerical operations by cache-aligning
the Bigarray.

This is an example replacement for Bigarray using cache-aligned allocation.  It 
is not intended to fully support Bigarray for all types, both C and FORTRAN
layouts, or for multiple dimensions.  My application was pretty specific on
types; you will get the idea quickly reading through the code and can expand it 
easily to suit.  You will have to know your hardware and set the cache line 
size accordingly.
