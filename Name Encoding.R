# Create vector of employee names -- in this example, it's created manually from strings with the base c() or Combine function.
employees <- c("John", "Beth", "Sally", "Mark")

# Paste allows concatenation for printing/writing.
# You can also use paste to collapse a vector into a single comma separated string.
paste("Random IDS required for employees:",
      paste(employees, collapse = ", "))

# This assignment randomly generates 4 [length(employees)] integers between 1:1000.  Replace ensures no duplicates.
rng <- sample(1:1000, length(employees), replace = F)

# Combine the two vectors into one lookup table (dataframe).  We can ensure lookup table is not made public by using the .gitignore file.
employee_lut <- data.frame(Employee = employees, Id = rng, stringsAsFactors = F)

# Save the lookup table using write.csv.
write.csv(employee_lut, "data/Employee Lookup Table.csv", row.names = F)