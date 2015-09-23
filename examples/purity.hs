main :: IO ()
main = do
  user <- createUser
  process user
  display user
  main

process :: User -> IO ()
process user = do
  -- mutate user
