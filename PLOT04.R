# plot4.png
chart1 <- ggplot(baltYrTypEmm, aes(factor(year), Emissions))
chart1 <- chart + geom_bar(stat="identity") +
        xlab("year") +  
        ylab(expression('Total Emissions')) +
        ggtitle('Total [2.5]* Coal Emissions From 1999 to 2008')
print(chart1)