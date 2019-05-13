# Paper clip model

# Model 1
In = 2     # make 2 paperclips 
Out = 1    # buy 1 paperclip
Stock = 0  # Start the paperclip store inventory at 0 paperclips

for(i in 1:10){  # do this 10 times
  Stock = Stock + In - Out   # Update the store inventory: add the In, remove the Out
  
  # make a graph
  if(i == 1){
    plot(i, Stock, ylim=c(0,10), xlim=c(1,10), xlab = "Time")
  }else{
    points(i, Stock)
  }
}


# Model 2
In = 2     # make 2 paperclips
Out = 2    # buy 2 papercips
Stock = 0  # Start the paperclip store inventory at 0 paperclips

for(i in 1:10){
  Stock = Stock + In - Out   # Update the store inventory: add the In, remove the Out
  
  # make a graph
  if(i == 1){
    plot(i, Stock, ylim=c(0,10), xlim=c(1,10), xlab = "Time")
  }else{
    points(i, Stock)
  }
}


# Model 3
In = 2     # make 2 paperclips
Stock = 0  # Start the paperclip store inventory at 0 paperclips

for(i in 1:10){
  
  # Make a rule for how many paperclips to buy
  if(Stock < 5){  # If the inventory is less than 5, then:  
    Out = 1       # buy 1 paperclip
  }else{          # Otherwise,
    Out = 2       # buy 2 paperclips
  }
  
  Stock = Stock + In - Out   # Update the store inventory: add the In, remove the Out
  
  # make a plot
  if(i == 1){
    plot(Stock, ylim=c(0,10), xlim=c(1,10), xlab = "Time")
  }else{
    points(i, Stock)
  }
}


# Model 4
Stock = 0  # paperclip store inventory  
Stock_line = mat.or.vec(nr=10, nc=1)  # plotting a line

for(i in 1:10){
  
  # Make rules for making and buying paperclips
  if(Stock < 8){  # If the inventory is < 8, then:
    In = 5        # make 5 paperclips, and
    Out = 1       # buy 1 paperclip
  }else{          # Otherwise,
    In = 1        # make 1 papercip, and
    Out = 5       # buy 5 paperclips
  }
  
  Stock = Stock + In - Out  # Update the store inventory: add the In, remove the Out
  
  # Make a plot
  Stock_line[i] = Stock
  if(i == 1){
    plot(Stock, ylim=c(0,10), xlim=c(1,10), xlab = "Time")
  }else{
    points(i, Stock)
  }
}
lines(Stock_line)


# A model with 2 stocks!

# Stock # 1
In_S1 = 2     # make 2 paperclips 
Out_S1 = 1    # buy 1 paperclip
Stock_S1 = 0  # Start the paperclip store inventory at 0 paperclips

# Stock # 2
Out_S2   = 2  # Buy 2 paperclips
Stock_S2 = 0  # paperclip store inventory # 2

for(i in 1:10){  # do this 10 times
  Stock_S1 = Stock_S1 + In_S1 - Out_S1   # The store inventory: add the In, remove the Out
  
  if(Stock_S1 < 7){
    In_S2 = Out_S1 
  }else{
    In_S2 = Out_S1 + 2
  }
  
  Stock_S2 = Stock_S2 + In_S2 - Out_S2   # The store inventory: add the In, remove the Out
  
  # make a graph
  if(i == 1){
    plot(i, Stock_S1, ylim=c(-10,10), xlim=c(1,10), xlab = "Time")
    points(i, Stock_S2, col='red') # plot the second stock in red
  }else{
    points(i, Stock_S1)
    points(i, Stock_S2, col='red') # plot the second stock in red
  }
}