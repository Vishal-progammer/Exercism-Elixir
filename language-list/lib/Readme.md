Language list

List  
  1. denoted by square brackets.
  2. can hold empty, any number, any type
    ```elixir
    empty_list = []
    one_item_list = [1]
    two_item_list = [1, 2]
    multiple_type_list = [1, :pi, 3.14, "four"]
    ```

  3. Elixir implements lists as a linked list, where each node stores two values.
      3.1 First item  = head
      3.2 Remaining list of items = tails 
      3.2  Head | Tail notation
        ```elixir
        # [1] represented in [head | tail] notation
        [1 | []]

        # [1, 2, 3] represented in [head | tail] notation
        [1 | [2 | [3 | []]]]
        ```
      3.3 Head | Tail notation to prepend elements to a list:
          ```elixir
          # Suppose
          list = [2, 1]

          [3, 2, 1] == [3 | list]
          # => true
          ```

  4.  In function from kernal module
      ```elixir
      # Check if 1 is a member of the list
      1 in [1, 2, 3, 4]
      # => true
      ```

Instructions:

  1. need to implement some functions to manipulate a list of programming languages.

## Task 1: Define a function to return an empty language list:

  1. Implement the function as `new/0` function

  2. takes no arguments and returns an empty list.
      ```elixir
      LanguageList.new()
      # => []
      ```

## Task 2: Define a function to add a language to the list

  1. Implement the function as `add/2`

  2. Takes 2 arguments (a _language list_ and a string literal of a _language_)

  3. Return the resulting list with the new language prepended to the given list.
      ```elixir
      language_list = LanguageList.new()
      # => []
      language_list = LanguageList.add(language_list, "Clojure")
      # => ["Clojure"]
      language_list = LanguageList.add(language_list, "Haskell")
      # => ["Haskell", "Clojure"]
      ```

## Task 3. Define a function to remove a language from the list

  1.  Implement the function as `remove/1` 

  2.  takes 1 argument (a _language list_)

  3. return the list without the first item. 
     ```elixir
      language_list = LanguageList.new()
      # => []
      language_list = LanguageList.add(language_list, "Clojure")
      # => ["Clojure"]
      language_list = LanguageList.add(language_list, "Haskell")
      # => ["Haskell", "Clojure"]
      language_list = LanguageList.remove(language_list)
      # => ["Clojure"]
      ```
     
## Task 4. Define a function to return the first item in the list

  1.  Implement the function as `first/1` 

  2. takes 1 argument (a _language list_)

  3. return the first language in the list
     ```elixir
      language_list = LanguageList.new()
      # => []
      language_list = LanguageList.add(language_list, "Elm")
      # => ["Elm"]
      language_list = LanguageList.add(language_list, "Prolog")
      # => ["Prolog", "Elm"]
      LanguageList.first(language_list)
      # => "Prolog"
      ```
  
## Task 5. Define a function to return how many languages are in the list

  1. Implement the function as `count/1`

  2. takes 1 argument (a _language list_)

  3. return the number of languages in the list.
     ```elixir
      language_list = LanguageList.new()
      # => []
      language_list = LanguageList.add(language_list, "Elm")
      # => ["Elm"]
      language_list = LanguageList.add(language_list, "Prolog")
      # => ["Prolog", "Elm"]
      LanguageList.count(language_list)
      # => 2
      ```    

## Task 6. Define a function to determine if the list includes a functional language

  1. Implement the function as `functional_list?/1`

  2. takes 1 argument (a _language list_)

  3. return a boolean value.

  4. It should return true if _"Elixir"_ is one of the languages in the list.
     ```elixir
      language_list = LanguageList.new()
      # => []
      language_list = LanguageList.add(language_list, "Elixir")
      # => ["Elixir"]
      LanguageList.functional_list?(language_list)
      # => true
      ``` 







