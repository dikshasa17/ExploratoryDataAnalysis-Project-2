# Baltimore yearly emmisisons data
baltYrTypEmm <- aggregate(Emissions ~ year+ type, baltdata, sum)
# plot3.png
chart <- ggplot(baltYrTypEmm, aes(year, Emissions, color = type))
chart <- chart + geom_line() +
        xlab("year") +
        ylab(expression('Total Emissions')) +
        ggtitle('Total Baltimore Emissions [2.5]* From 1999 to 2008')
print(chart)
