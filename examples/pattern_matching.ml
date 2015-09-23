let rec eval e =
  match e with
    | Plus (l, r) -> eval(l) + eval(r)
    | Minus (l, r) -> eval(l) - eval(r)
    | Times (l, r) -> eval(l) * eval(r)
    | Divide (l, r) -> eval(l) / eval(r)
    | Value v -> v;;
