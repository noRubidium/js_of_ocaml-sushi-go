open! Core_kernel

type t = {deck: Deck.t; players: Player.t Uid.Map.t} [@@deriving sexp_of]
