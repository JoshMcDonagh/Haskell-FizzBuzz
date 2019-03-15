-- Checks if is a fizz
isFizz :: Int -> Bool
isFizz n = mod n 3 == 0

-- Checks if is a buzz
isBuzz :: Int -> Bool
isBuzz n = mod n 5 == 0

-- Checks if is a fizzbuzz
isFizzBuzz :: Int -> Bool
isFizzBuzz n = isFizz n && isBuzz n

-- Prints out the line for an integer
putFBLine :: Int -> IO ()
putFBLine n = if (isFizzBuzz n) then putStr "FizzBuzz\n"
              else if (isFizz n) then putStr "Fizz\n"
              else if (isBuzz n) then putStr "Buzz\n"
              else putStr ((show n) ++ "\n")

-- Prints out the FizzBuzz lines
printFB :: [Int] -> IO ()
printFB [] = return ()
printFB (x:xs) = do putFBLine x
                    printFB xs

-- Root function of the FizzBuzz Process
fizzBuzz :: IO ()
fizzBuzz = printFB [x | x <- [1..100]]