open! Core_kernel

type t [@@deriving sexp_of]

val create : int -> t
