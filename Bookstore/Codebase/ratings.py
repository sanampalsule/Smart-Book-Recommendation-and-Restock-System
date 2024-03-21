import pandas as pd
import joblib as jl
from sklearn.preprocessing import OrdinalEncoder


def rating_prediction(isbn):
    # print(len(isbn[0]))

    isbn = int(isbn[0])
    df= pd.read_csv('Models/books.csv', on_bad_lines='skip')
    print(type(df['isbn13'][0]))
    grad_rf = jl.load('Models/book_ratings_predictions_model.joblib')
    encoding = {'language_code':{'en-US': 'eng', 'en-GB': 'eng', 'en-CA': 'eng'}} # Unify the langauge codes
    df.replace(encoding, inplace=True)
    

    df=df[df['isbn13']== isbn]

    
   
    enc = OrdinalEncoder()
    enc.fit(df[['language_code']])
    df[['language_code']] = enc.fit_transform(df[['language_code']])
    df['publication_date'] = pd.to_datetime(df['publication_date'], format='%m/%d/%Y', errors='coerce') # Convert data type of publication_date from object into date type
    df[df['publication_date'].isnull()]
    df.loc[df.bookID == 31373, 'publication_date'] = '1999-10-01 00:00:00'
    df.loc[df.bookID == 45531, 'publication_date'] = '1975-10-01 00:00:00'
    df['year'] = pd.DatetimeIndex(df['publication_date']).year # Extract year of publication in a separate column

    df.rename(columns = {'  num_pages': 'num_pages'}, inplace=True)
    df['num_occ'] = df.groupby('title')['title'].transform('count') # Add a new feature which has the number of occurences of each book
    df['rate_occ'] = df['average_rating'] * df['num_occ']
    df['rate_weight'] = df['average_rating'] * df['text_reviews_count']
    df['rate_weight_2'] = df['average_rating'] * df['ratings_count']
    df['rate_per_pages'] = df['average_rating'] * df['num_pages']
    label = df['average_rating'].values
    df.drop(['bookID', 'title', 'authors', 'isbn', 'isbn13', 'publication_date', 'publisher', 'average_rating'], axis=1, inplace=True)

    prediction = grad_rf.predict(df)

    # print(prediction)

    return prediction[0]

# if __name__ == "__main__":
#     print(rating_prediction(9780439785969))
