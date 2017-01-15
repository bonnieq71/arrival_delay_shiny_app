README
================
Bonnie
January 15, 2017

### Motivation

So I'm exploring the idea of becoming a data scientist and playing with different ways of presenting data. I hear about the awesome possibilities of Shiny and I just want to check it out. So here I am making my first Shiny App. I'm just simply looking at the arrival time during different months and years. I also have a table inset that calculates the average, sd, etc. for each month. Simple stuff but this is more of practice for myself to see if I can do it. I think the hardest part is to publish this... Please enjoy!

### A few notes on the code

So after downloading .bz2 files from <http://stat-computing.org/dataexpo/2009/the-data.html>, I selected the columns Year, Month and arrdelays, and then resaved them to RDS files. Within the code itself, I could just select for a specific year depending on the input form the slider, but I found it would run so much slower. SO I did this seemingly longer way of doing it. It just runs faster that way.

I also found some quirks working with ggplot within shiny. I haven't fully figured out what's the most efficient way to do this, but I found a way that will work and run anyways. The issue was that ggplot didn't know what to do with a reactive element. I was hoping that based on the slider input, it would choose a specific dataframe and just do that once. But it was then a reactive element? And so ggplot didn't know how to work with it. The way I dealt with is by redefining which dataframe to use within each ggplot command. If anyone has any suggestions, please please please let me know!
