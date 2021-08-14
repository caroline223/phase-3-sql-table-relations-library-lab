def select_books_titles_and_years_in_first_series_order_by_year
  "Write your SQL query here"
  "SELECT title, year FROM books WHERE series_id = 1 ORDER BY year ASC;"
end

def select_name_and_motto_of_char_with_longest_motto
  "Write your SQL query here"
  "SELECT name, motto FROM characters ORDER BY LENGTH(motto) DESC LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "Write your SQL query here"
  "SELECT species, COUNT(species) AS species_count
  FROM characters
  GROUP BY species
  ORDER BY species_count DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "Write your SQL query here"
  "SELECT authors.name, subgenres.name
  FROM authors
  JOIN series
  ON series.author_id = authors.id
  JOIN subgenres
  ON series.subgenre_id = subgenres.id;"
end

def select_series_title_with_most_human_characters
  "Write your SQL query here"
  "SELECT series.title
  FROM series
  JOIN characters 
  ON series.author_id = characters.author_id
  WHERE characters.species = 'human'
  GROUP BY title
  ORDER BY COUNT(species) DESC LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "Write your SQL query here"
  "SELECT characters.name, COUNT(*) AS num_of_books
  FROM characters
  JOIN character_books
  ON character_books.character_id = characters.id
  GROUP BY characters.name
  ORDER BY num_of_books DESC, characters.name;"
end
