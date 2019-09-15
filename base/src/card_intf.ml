module type S = sig
  type t [@@deriving sexp_of]

  type player_ctx

  type game_ctx

  type end_of_game_ctx

  val get_new_sorted_deck : unit -> t list

  val score : game_ctx:game_ctx -> player_ctx:player_ctx -> t -> int

  val update_game_context : t -> game_ctx -> game_ctx

  val update_player_context : t -> player_ctx -> player_ctx

  val get_tally_ctx : t -> player_ctx -> end_of_game_ctx -> end_of_game_ctx

  val tally : player_ctx -> end_of_game_ctx -> int

  val get_image : t -> string

  val to_string : t -> string
end
