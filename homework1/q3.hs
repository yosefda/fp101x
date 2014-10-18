init_a xs = tail (reverse xs)
init_b xs = reverse (head (reverse xs))
init_c xs = reverse (tail xs)
init_d xs = take (length xs) xs
init_e xs = reverse (tail (reverse xs))
init_f xs = take (length xs - 1) (tail xs)
init_g xs = drop (length xs - 1) xs
