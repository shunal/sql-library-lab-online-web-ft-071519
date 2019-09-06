def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year FROM books WHERE series_id = 1;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM characters GROUP BY motto HAVING MAX(LENGTH(motto)) LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(characters.species) FROM characters GROUP BY characters.species ORDER BY COUNT(characters.species) DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM authors JOIN subgenres ON authors.id = subgenres.id;"
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series JOIN characters ON characters.author_id = series.id WHERE characters.species = 'human' LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(character_books.id) FROM characters JOIN character_books ON character_books.character_id = characters.id GROUP BY characters.name ORDER BY(COUNT(character_books.id)) DESC;"
end
