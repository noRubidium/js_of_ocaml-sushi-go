open! Core

let%expect_test _ =
  let game = Sushi_go_base.Game.create 5 in
  print_s [%message (game : Sushi_go_base.Game.t)] ;
  [%expect {| (game ((deck ()) (players ()))) |}]
