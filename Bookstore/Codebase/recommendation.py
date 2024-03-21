import pandas as pd
import joblib as jl




def get_index_from_name(df,name):
    try:
        return df[df["title"] == name].index.tolist()[0]
    except IndexError:
        return -1  # Or raise an exception



def get_name_from_partial_name(partial,all_books_names):
    for name in all_books_names:
        if partial in name:
            return name

def print_similar_books(df,indices,query=None,id=None):
  booknames = []
  
  if query:
        found_id = get_index_from_name(df,query)
        if found_id == -1:
            print("Book not found.")
            return 0
        id = found_id

  if id is not None and id < len(indices):
        for idx in indices[id][1:]:
            if idx < len(df):
                booknames.append(df.iloc[idx]["title"])
                
            else:
                print("Index out of bounds for DataFrame.")
        return booknames
  else:
        msg = "Book not found!"
        return msg

def get_recommendations(name):
    df = pd.read_csv('Models/books.csv', on_bad_lines='skip')
    df.index = df['bookID']
    df.replace(to_replace='J.K. Rowling-Mary GrandPré', value = 'J.K. Rowling', inplace=True)
    all_books_names = list(df.title.values)
    indices = jl.load('Models/book_recommending_enging_indices.joblib')
    if name not in all_books_names:
        name = get_name_from_partial_name(name,all_books_names)
        
    data = print_similar_books(df,indices,name)
    flag = 1
    
    if isinstance(data, str):
        flag=0
    

    return data,flag

#if __name__ == "__main__":
#   print(print_similar_books("Agile Web Development with Rails: A Pragmatic Guide"))
