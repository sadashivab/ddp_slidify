library(UsingR)

output$predictedValue <- renderText({ 

		am <- as.numeric(if (input$transType == "Automatic") (0) else (1))
        wt <- input$weight/1000
        qsec <- input$qsec
        # inData <- as.data.frame(cbind( am, wt, qsec ))
        # names(inData) <- c("am", "wt", "qsec")
        # modelA <- readRDS("modelA.Rds")
        # mpg <- predict(modelA, newdata=as.data.frame(inData)) 
		mpg <-  9.6178 + am*2.9358 -3.9165*wt + 1.2259*qsec
        mpg <- round(mpg,2)
#		mpg <- 256
		mpg
})
