#Read in the data
gapminder = read.csv(file = "data/gapminder_data.csv")

#ggplot(data = gapminder, mapping = aes(x = gdpPercap, y=lifeExp))+geom_point()

#ggplot(data = gapminder, mapping = aes(x = year, y=lifeExp))+geom_point()
#ggplot(data = gapminder, mapping = aes(x = year, y=lifeExp, color = continent))+geom_point()
#ggplot(data = gapminder, mapping = aes(x = year, y=lifeExp,group = country)) + geom_point() +geom_line(mapping=aes(color=continent))
americas <- gapminder[gapminder$continent == "Americas",]

lifePlot <- ggplot(data=americas, mapping=aes(x=year, y=lifeExp))+geom_line()+
  facet_wrap(~country)+
  labs(
    x="Year",
    y="Life Expectancy",
    title = "Figure 1",
    color = "Continent"
  )+
  theme(axis.text.x = element_text(angle = 45))
ggsave(filename = "results/AmericaPlot.png", plot = lifePlot, width = 12, height = 10, dpi = 300, units = "cm")
#Cool this makes a plot