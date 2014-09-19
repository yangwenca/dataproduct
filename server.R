library(UsingR)
data(father.son)

shinyServer(
    function(input, output){
        y<-father.son$sheight
        x<-father.son$fheight
        beta1 <- cor(y,x)*sd(y)/sd(x)
        beta0 <- mean(y)-beta1*mean(x)
        outputheight <- function(myheight) myheight*as.numeric(beta1)+as.numeric(beta0)
        output$FHeight <- renderPrint({as.numeric(input$FatherHeight)})
        output$prediction <- renderPrint({outputheight(as.numeric(input$FatherHeight))})
        output$figure <- renderPlot({
            plot(y=y, x=x, xlab="Father's Height", ylab="Son's Height", main="Height from Data Set")
            abline(mean(y)-mean(x)*cor(y,x)*sd(y)/sd(x),
                   sd(y)/sd(x)*cor(y,x),
                   lwd=3,col="red")
            text(74,73,"Regression Line", col="red")
            inputheight <- as.numeric(input$FatherHeight)
            outputheight <- outputheight(as.numeric(input$FatherHeight))
            points(inputheight, outputheight, cex=2, pch=19, col="blue")
        })

    }
)