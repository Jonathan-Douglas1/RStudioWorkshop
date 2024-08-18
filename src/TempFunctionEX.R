fahr_to_kelvin <- function(temp){
  if(!is.numeric(temp)){
    stop("temp must be a numeric character")
  }
  
  
  kelvin <-  ((temp-32)*(5/9))+273.15
  return(kelvin)
}

mean(gapminder$gdpPercap[gapminder$continent == "Africa"])

year_country_gdp <- select(gapminder, year, country, gdpPercap)
str(year_country_gdp)

year_country_gdp <- gapminder %>% select(year, country, gdpPercap)
#HELLO