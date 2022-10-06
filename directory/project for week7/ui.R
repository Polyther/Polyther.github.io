suppressWarnings(library(shiny))
suppressWarnings(library(markdown))
shinyUI(navbarPage("Project for the Course of Capstone ",
                   tabPanel("The Next Word Prediction",
                            HTML("<strong>Author: HU TANG </strong>"),
                            br(),
                            HTML("<strong>Date: 10/03/2022</strong>"),
                            br(),
                           
                            # Sidebar
                            sidebarLayout(
                                sidebarPanel(
                                    helpText("Please enter a partially  sentence or phrase without the last word."),
                                    textInput("inputString", "Enter the sentence or phrase here",value = ""),
                                    br(),
                                    br(),
                                    br(),
                                    br()
                                ),
                                mainPanel(
                                    h2("The Outcome of the Predicted Words"),
                                    verbatimTextOutput("prediction"),
                                    strong("Sentence Input:"),
                                    tags$style(type='text/css', '#text1 {background-color: rgba(255,255,0,0.40); color: blue;}'), 
                                    textOutput('text1'),
                                    br(),
                                    strong("Note:"),
                                    tags$style(type='text/css', '#text2 {background-color: rgba(255,255,0,0.40); color: red;}'),
                                    textOutput('text2')
                                )
                            )
                            
                   ),
                   tabPanel("About",
                            mainPanel(
                                
                                includeMarkdown("about.md")
                            )
                   )
)
)