README
================
Bonnie
January 15, 2017

### Motivation

So I'm exploring the idea of becoming a data scientist and playing with different ways of presenting data. I hear about the awesome possibilities of Shiny and I just want to check it out. So here I am making my first Shiny App. I'm just simply looking at the arrival time during different months and years. I also have a table inset that calculates the average, sd, etc. for each month. Simple stuff but this is more of practice for myself to see if I can do it. I think the hardest part is to publish this... Please enjoy!

### A few notes on the code

So after downloading .bz2 files from <http://stat-computing.org/dataexpo/2009/the-data.html>, I selected the columns Year, Month and arrdelays, and then resaved them to RDS files. Within the code itself, I could just select for a specific year depending on the input form the slider, but I found it would run so much slower. SO I did this seemingly longer way of doing it. It just runs faster that way.

I also found some quirks working with ggplot within shiny. I haven't fully figured out what's the most efficient way to do this, but I found a way that will work and run anyways. The issue was that ggplot didn't know what to do with a reactive element. I was hoping that based on the slider input, it would choose a specific dataframe and just do that once. But it was then a reactive element? And so ggplot didn't know how to work with it. The way I dealt with is by redefining which dataframe to use within each ggplot command. If anyone has any suggestions, please please please let me know!

### Latest

Unfortunately, I can't get it to be publically available. I am currently using shinyapps.io 
(url = https://bonnieq71.shinyapps.io/plane_arrival_delays/)
Either it's disconnected from the server or the object isn't found. I really apologize for the inconvenience but... honestly mentally done banging my head on the keyboard to fix the simplest thing. Will have to come back to this another time because I have so many things I want to try out! Nonetheless, the code used to build the app is available. I believe the issue is connecting the data to the actual app. The data is on the server, but not sure what else to try. Googled a lot but alas, to no avail. Any ideas? Please let me know! 
