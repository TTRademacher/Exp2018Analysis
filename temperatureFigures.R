#========================================================================================
# Script to plot the temperature data from the project chill shed and the phloem of all 
# trees at 1.0 and 2.0 m of the 2018 chilling experiment on white pine at Harvard Forest.
#----------------------------------------------------------------------------------------

# source temperature data
#----------------------------------------------------------------------------------------
source ('./readTemperatureData.R')
source ('./plotingFunctions.R')

# plot temperature of chilled and control trees at 1 and 2m 
#----------------------------------------------------------------------------------------
layout (matrix (1:3), heights = c (1, 1, 1.2))
par (mar = c (1, 8, 1, 1))
plot (x = tempData [['datetime']], 
      y = tempData [['t.01.2p0m']], 
      typ = 'l', las = 1,
      xlim = c (as_datetime ('2018-04-17'), as_datetime ('2018-12-20')),
      ylim = c (-5, 38),
      xaxt = 'n', xlab = '', ylab = '2.0 m',
      col = tColours [['colour']] [5])

# add desired chilling zone
rect (xleft = as_datetime ('2018-06-26'), xright = as_datetime ('2018-09-03'),
      ybottom = 0, ytop = 5, col = addOpacity ('#666666', 0.3), lty = 0)

# add critical dates
res <- criticalDates (group = 5, asDate = FALSE)

# add more chilled trees
lines (x = tempData [['datetime']], 
       y = tempData [['t.02.2p0m']],
       col = tColours [['colour']] [5])
lines (x = tempData [['datetime']], 
       y = tempData [['t.03.2p0m']],
       col = tColours [['colour']] [5])
lines (x = tempData [['datetime']], 
       y = tempData [['t.04.2p0m']],
       col = tColours [['colour']] [5])
lines (x = tempData [['datetime']], 
       y = tempData [['t.05.2p0m']],
       col = tColours [['colour']] [5])

# add air temperature
lines (x = tempData [['datetime']], 
       y = tempData [['t.air.2p0m']],
       col = tColours [['colour']] [2])

# add temperatures at 1.5 m
par (mar = c (1, 8, 1, 1))
plot (x = tempData [['datetime']], 
      y = tempData [['t.01.1p5m']], 
      typ = 'l', las = 1,
      xlim = c (as_datetime ('2018-04-17'), as_datetime ('2018-12-20')),
      ylim = c (-5, 38),
      xaxt = 'n', xlab = '', ylab = '1.5 m',
      col = tColours [['colour']] [5])
mtext (text = expression (paste ('phloem temperature (',degree,'C)', sep = '')), 
       side = 2, line = 5, cex = 1.8)

# add desired chilling zone
rect (xleft = as_datetime ('2018-06-26'), xright = as_datetime ('2018-09-03'),
      ybottom = 0, ytop = 5, col = addOpacity ('#666666', 0.3), lty = 0)

# add critical dates
res <- criticalDates (group = 5, asDate = FALSE)

# add more chilled trees
lines (x = tempData [['datetime']], 
       y = tempData [['t.02.1p5m']],
       col = tColours [['colour']] [5])
lines (x = tempData [['datetime']], 
       y = tempData [['t.03.1p5m']],
       col = tColours [['colour']] [5])
lines (x = tempData [['datetime']], 
       y = tempData [['t.04.1p5m']],
       col = tColours [['colour']] [5])
lines (x = tempData [['datetime']], 
       y = tempData [['t.05.1p5m']],
       col = tColours [['colour']] [5])

# add existing measurements from compressed and control trees
lines (x = tempData [['datetime']], 
       y = tempData [['t.06.1p5m']],
       col = tColours [['colour']] [4])
lines (x = tempData [['datetime']], 
       y = tempData [['t.07.1p5m']],
       col = tColours [['colour']] [4])
lines (x = tempData [['datetime']], 
       y = tempData [['t.08.1p5m']],
       col = tColours [['colour']] [4])
lines (x = tempData [['datetime']], 
       y = tempData [['t.10.1p5m']],
       col = tColours [['colour']] [1])

# add air temperature
lines (x = tempData [['datetime']], 
       y = tempData [['t.air.2p0m']],
       col = tColours [['colour']] [2])


# add temperatures at 1.0 m
par (mar = c (3, 8, 1, 1))
plot (x = tempData [['datetime']], 
      y = tempData [['t.01.1p0m']], 
      typ = 'l', las = 1,
      xlim = c (as_datetime ('2018-04-17'), as_datetime ('2018-12-20')),
      ylim = c (-5, 38),
      xaxt = 'n', xlab = '', ylab = '1.0 m',
      col = tColours [['colour']] [5])

# add x axis
axis (side = 1, at = seq (as_datetime ('2018-06-01'), as_datetime ('2018-11-01'), 
                          length.out = 6), label = c ('June','July','August',
                                                      'September','October','November'))

# add desired chilling zone
rect (xleft = as_datetime ('2018-06-26'), xright = as_datetime ('2018-09-03'),
      ybottom = 0, ytop = 5, col = addOpacity ('#666666', 0.3), lty = 0)

# add critical dates
res <- criticalDates (group = 5, asDate = FALSE)

# add more chilled trees
lines (x = tempData [['datetime']], 
       y = tempData [['t.02.1p0m']],
       col = tColours [['colour']] [5])
lines (x = tempData [['datetime']], 
       y = tempData [['t.03.1p0m']],
       col = tColours [['colour']] [5])
lines (x = tempData [['datetime']], 
       y = tempData [['t.04.1p0m']],
       col = tColours [['colour']] [5])
lines (x = tempData [['datetime']], 
       y = tempData [['t.05.1p0m']],
       col = tColours [['colour']] [5])

# add air temperature
lines (x = tempData [['datetime']], 
       y = tempData [['t.air.2p0m']],
       col = tColours [['colour']] [2])

# add legend 
legend (x = as_datetime ('2018-06-07'), y = 38, box.lty = 0, 
        col = tColours [['colour']] [c (2, 1, 4, 5)], 
        legend = c ('air temperature','control trees','compressed trees','chilled trees'),
        lwd = 1, cex = 0.6, bg = 'transparent')
