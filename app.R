library(shiny)
library(ggplot2)
library(dplyr)
library(cowplot)
library(scales)
library(DT)

ui <- fluidPage( 
  
  titlePanel("Arrival Delays"),
  
  sidebarLayout(
    sidebarPanel(
      sliderInput("year",
                  "Pick a Year: ",
                  min = 1987,
                  max = 2008,
                  value = 1,
                  sep = "")
      
    ),
    
    mainPanel(
      h4("Here is a simple app allowing us to look at arrival delays in different years and then parseing them into different months. The mean delays and a few simple statistics are in the data table below. Enjoy! Data courtesy of http://stat-computing.org/dataexpo/2009/the-data.html", align = "center"),
      br(),
      br(),
      plotOutput("distPlot"),
      br(),
      br(),
      plotOutput("distPlot_month"),
      br(),
      br(),
      dataTableOutput("month_stats")
      )
  )
) 
server <- shinyServer(function(input, output) {
  
  output$distPlot <- renderPlot({
    if(input$year == 2008) {
      flights_year <- flights_2008
    }
    else if (input$year == 2007) {
      flights_year <- flights_2007
    }
    else if (input$year == 2006) {
      flights_year <- flights_2006
    }
    else if (input$year == 2005) {
      flights_year <- flights_2005
    }
    else if (input$year == 2004) {
      flights_year <- flights_2004
    }
    else if (input$year == 2003) {
      flights_year <- flights_2003
    }
    else if (input$year == 2002) {
      flights_year <- flights_2002
    }
    else if (input$year == 2001) {
      flights_year <- flights_2001
    }
    else if (input$year == 2000) {
      flights_year <- flights_2000
    }
    else if (input$year == 1999) {
      flights_year <- flights_1999
    }
    else if (input$year == 1998) {
      flights_year <- flights_1998
    }
    else if (input$year == 1997) {
      flights_year <- flights_1997
    }
    else if (input$year == 1996) {
      flights_year <- flights_1996
    }
    else if (input$year == 1995) {
      flights_year <- flights_1995
    }
    else if (input$year == 1994) {
      flights_year <- flights_1994
    }
    else if (input$year == 1993) {
      flights_year <- flights_1993
    }
    else if (input$year == 1992) {
      flights_year <- flights_1992
    }
    else if (input$year == 1991) {
      flights_year <- flights_1991
    }
    else if (input$year == 1990) {
      flights_year <- flights_1990
    }
    else if (input$year == 1989) {
      flights_year <- flights_1989
    }
    else if (input$year == 1988) {
      flights_year <- flights_1988
    }
    else if (input$year == 1987) {
      flights_year <- flights_1987
    }
    
    distPlot<- ggplot(flights_year, aes(x = ArrDelay)) + geom_histogram(aes(y=..count../sum(..count..)), binwidth = 15, alpha = 0.3, color = "blue", fill = "blue") + xlim(-50, 210) + scale_y_continuous(labels=percent) + labs(x = "Arrival Delay (minutes)", y = "Percent of Flights") + title("Arrival Delay by Year")
    
    print(distPlot)
    
  })
  
  output$distPlot_month <- renderPlot({
    if(input$year == 2008) {
      flights_year <- flights_2008
    }
    else if (input$year == 2007) {
      flights_year <- flights_2007
    }
    else if (input$year == 2006) {
      flights_year <- flights_2006
    }
    else if (input$year == 2005) {
      flights_year <- flights_2005
    }
    else if (input$year == 2004) {
      flights_year <- flights_2004
    }
    else if (input$year == 2003) {
      flights_year <- flights_2003
    }
    else if (input$year == 2002) {
      flights_year <- flights_2002
    }
    else if (input$year == 2001) {
      flights_year <- flights_2001
    }
    else if (input$year == 2000) {
      flights_year <- flights_2000
    }
    else if (input$year == 1999) {
      flights_year <- flights_1999
    }
    else if (input$year == 1998) {
      flights_year <- flights_1998
    }
    else if (input$year == 1997) {
      flights_year <- flights_1997
    }
    else if (input$year == 1996) {
      flights_year <- flights_1996
    }
    else if (input$year == 1995) {
      flights_year <- flights_1995
    }
    else if (input$year == 1994) {
      flights_year <- flights_1994
    }
    else if (input$year == 1993) {
      flights_year <- flights_1993
    }
    else if (input$year == 1992) {
      flights_year <- flights_1992
    }
    else if (input$year == 1991) {
      flights_year <- flights_1991
    }
    else if (input$year == 1990) {
      flights_year <- flights_1990
    }
    else if (input$year == 1989) {
      flights_year <- flights_1989
    }
    else if (input$year == 1988) {
      flights_year <- flights_1988
    }
    else if (input$year == 1987) {
      flights_year <- flights_1987
    }
    
    #fit <- fitdist(flights_year$ArrDelay, "norm")
    flights_year$Month <- factor(flights_year$Month, levels = c(1:12))
    distPlot_month <- ggplot(flights_year, aes(x=ArrDelay)) + geom_density(aes(group = Month, color = Month, fill = Month), alpha = 0.3, binwidth = 15) + xlim(-50, 50) + scale_y_continuous(labels=percent) + labs(x = "Arrival Delay (minutes)", y = "Density") + title("Arrival Delay by Month")
    print(distPlot_month)
    
  })
  
  
  by_month= reactive({
    
    if(input$year == 2008) {
      flights_year <- flights_2008
    }
    else if (input$year == 2007) {
      flights_year <- flights_2007
    }
    else if (input$year == 2006) {
      flights_year <- flights_2006
    }
    else if (input$year == 2005) {
      flights_year <- flights_2005
    }
    else if (input$year == 2004) {
      flights_year <- flights_2004
    }
    else if (input$year == 2003) {
      flights_year <- flights_2003
    }
    else if (input$year == 2002) {
      flights_year <- flights_2002
    }
    else if (input$year == 2001) {
      flights_year <- flights_2001
    }
    else if (input$year == 2000) {
      flights_year <- flights_2000
    }
    else if (input$year == 1999) {
      flights_year <- flights_1999
    }
    else if (input$year == 1998) {
      flights_year <- flights_1998
    }
    else if (input$year == 1997) {
      flights_year <- flights_1997
    }
    else if (input$year == 1996) {
      flights_year <- flights_1996
    }
    else if (input$year == 1995) {
      flights_year <- flights_1995
    }
    else if (input$year == 1994) {
      flights_year <- flights_1994
    }
    else if (input$year == 1993) {
      flights_year <- flights_1993
    }
    else if (input$year == 1992) {
      flights_year <- flights_1992
    }
    else if (input$year == 1991) {
      flights_year <- flights_1991
    }
    else if (input$year == 1990) {
      flights_year <- flights_1990
    }
    else if (input$year == 1989) {
      flights_year <- flights_1989
    }
    else if (input$year == 1988) {
      flights_year <- flights_1988
    }
    else if (input$year == 1987) {
      flights_year <- flights_1987
    }
    
  group_month <- group_by(flights_year, Month)
  month_summarise <-  summarise(group_month, count=n(), arr_mean=mean(ArrDelay, na.rm = TRUE), arr_sd = sd(ArrDelay, na.rm = TRUE), arr_sem = sd(ArrDelay, na.rm = TRUE)/sqrt(count))
  
  })
  
  output$month_stats = DT::renderDataTable({ 
    by_month()}, options = list(searching=FALSE, paging = FALSE), colnames = c("Month", "Count", "Mean Delay", "SD", "SEM"))
  
})

# Run the application 
shinyApp(ui = ui, server = server)

