import Data.Char

let2int :: Char -> Int
--let2int c = if isLower c then ord c - ord 'a' else ord c - ord 'A'
let2int c 
    | isLower c = ord c - ord 'a'
    | isUpper c = ord c - ord 'A'
    | otherwise = ord c

int2letLower :: Int -> Char
int2letLower n = chr (ord 'a' + n)

int2letUpper :: Int -> Char
int2letUpper n = chr (ord 'A' + n)

shift :: Int -> Char -> Char
shift n c
    | isLower c = int2letLower ((let2int c + n) `mod` 26)
    | isUpper c = int2letUpper ((let2int c + n) `mod` 26)
    | otherwise = c

encode :: Int -> String -> String
encode n xs = [shift n x | x <- xs] 
