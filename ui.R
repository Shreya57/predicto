library(shiny)
library(markdown)
library(dplyr)
library(tm)

shinyUI(
    navbarPage("Predicto",
               tabPanel("Home",
                        fluidPage(
                            titlePanel("Home"),
                            sidebarLayout(
                                sidebarPanel(
                                    textInput("userInput",
                                              "Please enter a word or a phrase:",
                                              value =  ""),
                                    br(),
                                    sliderInput("numPredictions", "Select the number of predictions:",
                                                value = 1.0, min = 1.0, max = 3.0, step = 1.0)
                                ),
                                mainPanel(
                                    h4("Entered text:"),
                                    verbatimTextOutput("userSentence"),
                                    br(),
                                    h4("Prediction:"),
                                    verbatimTextOutput("prediction1"),
                                    verbatimTextOutput("prediction2"),
                                    verbatimTextOutput("prediction3")
                                )
                            )
                        )
               ),
               tabPanel("About",
                        h3("About Predicto"),
                        br(),
                        div("Predicto is a Shiny app that uses a text prediction 
                        algorithm to predict the next words based on text entered 
                        by a user. The application suggests the next word in a 
                        sentence using an n-gram algorithm. An n-gram is a contiguous
                        sequence of n items from a given sample of text or speech.",
                        br(), br(),
                        "The prediction model was built by extracting N-grams from
                        Swiftkey's 'Tweets Blogs News' corpus. Various NLP (natural
                        language processing) and text-mining techniques were 
                        explored to build an accurate and optimized model. The 
                        prediction model was built from a sample of about 8,00,000
                        lines extracted from the corpus of blogs, news and twitter 
                        data. First, the data from the three files was stripped 
                        of all non-ASCII characters, URLs, email addresses, Twitter
                        handles, hash tags, ordinal numbers, profanity, punctuation
                        marks and whitespaces. This was done using the tm package
                        and the gsub function. The data was then converted to 
                        lowercase. Then, the data was tokenized, i.e., split into
                        tokens (n-grams) and the n-gram frequencies were counted.
                        As the user enters the text, the algorithm iterates from
                        longest n-gram (4-gram) to shortest (2-gram) to detect a
                        match.",
                        br(), br(),
                        "The predicted word is considered using the longest, most
                        frequent matching n-gram. The predicted word is shown when
                        the app detects that you have finished typing one or more
                        words. The app might take a few seconds to load the results.
                        The slider tool can be used to select up to three predictions.
                        The top prediction is shown first followed by the second
                        and the third most likely prediction."
               )
    )
)
)
