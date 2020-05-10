library(shiny)

shinyUI(
  navbarPage("mtcars Dataset",
             tabPanel("Main Analysis",
                      fluidPage(
                        titlePanel("Relation between miles per gallon (mpg) and the others variables from mtcars dataset"),
                        sidebarLayout(
                          sidebarPanel(
                            selectInput("variable", "Variable:",
                                        c("Number of cylinders" = "cyl",
                                          "Displacement" = "disp",
                                          "Gross horsepower" = "hp",
                                          "Rear axle ratio" = "drat",
                                          "Weight (lb)" = "wt",
                                          "1/4 mile time" = "qsec",
                                          "V/S" = "vs",
                                          "Transmission" = "am",
                                          "Number of forward gears" = "gear",
                                          "Number of carburetors" = "carb"
                                        )),
                            
                            checkboxInput("outliers", "Show BoxPlot's outliers", FALSE)
                          ),
                          
                          mainPanel(
                            h3(textOutput("caption")),
                            
                            tabsetPanel(type = "tabs", 
                                        tabPanel("BoxPlot", plotOutput("mpgBoxPlot")),
                                        tabPanel("Linear Regression Model", 
                                                 plotOutput("mpgPlot"),
                                                 verbatimTextOutput("fit")
                                        )
                            )
                          )
                        )
                      )
             ),
             tabPanel("About Week 4",
                      
                      h3("General instructions for week 4 assignment"),
                      helpText("1- I create a Shiny application and deploy it on Rstudio's servers.",
                               "2- I prepare a reproducible pitch presentation about the application.")
                      
             ),
             tabPanel("mtcars Dataset Details",
                      h2("Motor Trend Car Road Tests (mtcars)"),
                      hr(),
                      h3("Description"),
                      helpText("The dataset is from the 1974 Motor Trend US magazine,",
                               " and includes fuel consumption and 10 characteristics of automobile design and performance",
                               " for 32 automobiles (1973-1974)."),
                      h3("Dataset structure (variables)"),
                      p("32 x 11 - 32 rows or observations and 11 columns or variables"),
                      
                      p("  [1]   mpg         Miles/gallon"),
                      p("  [2]	 cyl	 Number of cylinders"),
                      p("  [3]	 disp	 Displacement"),
                      p("  [4]	 hp	 Gross horsepower"),
                      p("  [5]	 drat	 Rear axle ratio"),
                      p("  [6]	 wt	 Weight (lb)"),
                      p("  [7]	 qsec	 1/4 mile time"),
                      p("  [8]	 vs	 V/S"),
                      p("  [9]	 am	 Transmission (0 = automatic, 1 = manual)"),
                      p("  [10]	 gear	 Number of forward gears"),
                      p("  [11]	 carb	 Number of carburetors")
                      
             ),
             tabPanel("Files Storing",
                      a("https://github.com/gus079/week4.git"),
                      hr(),
                      h4("Gustavo Seifer")
             )
  )
)