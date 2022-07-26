# Predicto
A Shiny App for Text Prediction
## About

The value of text-based information continues to increase with the growth of social media. It is getting increasingly difficult to analyze large corpus of text to discover a structure within it. This project utilizes a corpus of text to build a predictive model that displays up to 3 predictions based on user input. The project is a shiny app named [Predicto](https://shreya2405.shinyapps.io/Predicto/).

Predicto is a Shiny app that uses a text prediction algorithm to predict the next words based on text entered by a user. The application suggests the next word in a sentence using an n-gram algorithm. An n-gram is a contiguous sequence of n items from a given sample of text or speech.

The prediction model was built by extracting N-grams from SwiftKey’s ‘Tweets Blogs News’ dataset available on Kaggle. Various NLP (natural language processing) and text-mining techniques were explored to build an accurate and optimized model. The prediction model was built from a sample of about 8,00,000 lines extracted from the corpus of blogs, news and twitter data.

The predicted word is considered using the longest, most frequent matching n-gram. The predicted word is shown when the app detects that you have finished typing one or more words. The app might take a few seconds to load the results. The slider tool can be used to select up to three predictions. The top prediction is shown first followed by the second and the third most likely prediction.
