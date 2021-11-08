=begin
  Classes:
    --- Players ---
    Variables (state): 
      - how many total players created (instance variables)
      
      Methods (behaviors):
      
      --- Match ---
      Variables (state): 
      - current match (instance variable)
      - updated score (update object)
      - current players turn (boolean)
      - winner (based on other player hittin count 0) - needs access to losing score
      - current score for given player (update object)
      
      - needs reading access to Players class, but cannot write to it
      - I/O (input/output) to questions
      
      Methods (behaviors):
      - update score/lives
      - new turn / addition questions
      - display message for if correct
      - display message for incorrect
      - how to determine winner/game over 

    **Module: for randomized math questions and call in match questions logic
=end