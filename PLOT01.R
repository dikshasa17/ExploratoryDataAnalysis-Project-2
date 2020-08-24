knitr::opts_chunk$set(echo = TRUE)
setwd("C:\Users\Neetu Saini\Desktop\data science\course4")
getwd()
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip", destfile = "FNEI_data.csv")
# Call Packages dplyr, bindrcpp & ggplot2
library(dplyr)
library(bindrcpp)
library(ggplot2)
# reading and exploring NEI data - National Emmissions Data
NEI_data <- readRDS("C:\\Users\\Neetu Saini\\Desktop\\data science\\course4\\summarySCC_PM25.rds")
head(NEI_data)
str(NEI_data)
dim(NEI_data)
# reading and exploring SCC data - Source Classification Code Data
SCC_data <- readRDS("C:\\Users\\Neetu Saini\\Desktop\\data science\\course4\\Source_Classification_Code.rds")
head(SCC_data) 
str(SCC_data)
dim(SCC_data)
# aggregating NEI emmissions by year
yearly_emmissions <- aggregate(Emissions ~ year, NEI_data, sum)
# plot1.ng
cols <- c("red", "orange", "yellow", "blue")
barplot(height=yearly_emmissions$Emissions/1000, names.arg=yearly_emmissions$year, xlab="Year", ylab=expression('Aggregated Emission'),main=expression('Aggregated PM'[2.5]*' Emmissions by Year'), col = cols)
