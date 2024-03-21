import mysql.connector
from flask import Flask, render_template, request, redirect, session
import ratings as rat
import recommendation as rec
from Employee import Employee, Base
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker

app = Flask(__name__)

engine = create_engine("mysql+mysqlconnector://root:password@localhost/bookshop")
Session = sessionmaker(bind=engine)

# Configure db 
db = None
@app.before_request
def connect_db():
    global db
    db = mysql.connector.connect(
        host="localhost",
        user="root", 
        password="password",
        database="bookshop"
    )
    
@app.teardown_request 
def close_db(error=None):
    if db is not None:
        db.close()

@app.route("/")
def index():
    return render_template("landingpage.html")

@app.route('/placeOrder', methods=['GET', 'POST'])
def placeOrder():

    return render_template("finalPage.html")

@app.route('/orm', methods=['GET', 'POST'])
def orm_insert():

    eid= request.form["eid"]
    fname = request.form["fname"]
    lname = request.form["lname"]
    sal = request.form["sal"]
    phone = request.form["phone"]
    email = request.form["email"]
    dob = request.form["dob"]
    jd = request.form["jd"]
    jb = request.form["jb"]

    session = Session()
    employee_ = Employee(
    EmployeeID = eid,
    Fname = fname,
    Lname = lname,
    Salary = sal,
    PhoneNo = phone,
    Email = email,
    DOB =dob,
    JoiningDate =jd,
    JobRole = jb,
    )
    
    session.add(employee_)
    session.commit()

    return "Saved ORM Customer"

@app.route("/showEmployeeLandingPage", methods=["POST"])
def showEmployeeLandingPage():
    return render_template("EmployeeLandingPage.html")

@app.route("/showEmployeePage", methods=["POST"])
def showEmployeePage():
    return render_template("EmployeeInfo.html")

@app.route("/showCustomerPage", methods=["POST"])
def showCustomerPage():
    return render_template("CustomerLandingPage.html")

@app.route("/searchByAuthorName", methods=["POST"])
def searchByAuthorName():
    author = request.form["author"] 
    # Define cursor  
    cursor = db.cursor()
    cursor.execute(
        "SELECT title, authors FROM book WHERE Authors=%s", (author,)
    )
    
    search_results = cursor.fetchall()  
    print(search_results)
    app.config["SEARCH_RESULTS1"] = search_results
    
    return render_template("catalog.html", books=search_results)

@app.route("/searchByBookName", methods=["POST"])
def searchByBookName():
    bookname = request.form["bookname"] 
    
    # Define cursor  
    cursor = db.cursor()
    cursor.execute(
        "SELECT title, Authors FROM book WHERE title=%s", (bookname,)
    )
    
    search_results = cursor.fetchall()  

    app.config["SEARCH_RESULTS2"] = search_results
    
    return render_template("catalog.html", books=search_results)

@app.route("/showCatalog", methods=["POST"])
def showCatalog():
     
    # Define cursor  
    cursor = db.cursor()
    cursor.execute(
        "SELECT title, authors FROM book "
    )
    
    search_results = cursor.fetchall()  
    print(search_results)
    app.config["SEARCH_RESULTS3"] = search_results
    
    return render_template("catalog.html", books=search_results)

@app.route("/checkout", methods=["POST"])
def checkout():

    selected_books_ids = request.form.getlist('selected_books[]')
    
    if not selected_books_ids:
        return "Please select at least one book before proceeding to checkout."

    print('printing finally',selected_books_ids)
    
    cursor = db.cursor()

    
    selected_books_isbn = []
    total_price = 0
    for bookname in selected_books_ids:
        
        cursor.execute('SELECT ISBN FROM book WHERE Title =%s', (bookname,))
        book = cursor.fetchone()
        
        selected_books_isbn.append(str(int(book[0])))
    
    for isbn in selected_books_isbn:
        cursor.execute('Select UnitPrice from Stock where BookISBN =%s',(isbn,))
        price = cursor.fetchone()
        total_price=total_price+float(price[0])
    print('total', total_price)    
    # print('print2', selected_books_details)
    

    return render_template('checkout.html', total_price=total_price)
    

@app.route("/showRecommendations", methods=["POST","GET"])
def showRecommendations():

    bookname = request.form["namex"]
    
    data, flag= rec.get_recommendations(bookname)
    print('flag',flag)
    print(data)
    if data is not None and flag ==1:
        return render_template("CustomerLandingPage.html", box1=data[0], box2=data[1], box3=data[2], box4=data[3], box5=data[4])
    else:
        return render_template("CustomerLandingPage.html", box1 = "No Books Found")
    
@app.route("/showRating", methods=["POST","GET"])
def showRatinngs():

    cursor = db.cursor()
    cursor.execute(
        "Select BookISBN from Stock where NoInStock < 20 "
    )
    
    isbn = cursor.fetchall()  

    # app.config["SEARCH_RESULTS"] = isbn
    restock_books =[]
    for i in isbn:
        data = rat.rating_prediction(i)
        if round(data,2) > 3.85:
            restock_books.append(i)
    print('restock',restock_books)
    
    cursor = db.cursor()
    sql = "UPDATE stock SET NoInStock=NoInStock+10 WHERE BookISBN =%s"
    cursor.executemany(sql,restock_books )
    
    db.commit()
    list1 =[]
    for isbn in restock_books:
        isbn = str(int(isbn[0]))
        print('in fr', isbn)
        cursor.execute("Select Title, NoInStock from Book JOIN Stock ON Book.ISBN = Stock.BookISBN where Stock.BookISBN =%s" , (isbn,))
        book = cursor.fetchone()
        list1.append(book)
        
    print('list1',list1)
    
    

    
    if restock_books is not None:
        msg="books updated!"
        return render_template("RestockedBooks.html", books = list1)
    

if __name__ == "__main__":
    app.run(debug=True)