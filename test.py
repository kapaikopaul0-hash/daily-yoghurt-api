# flask
from flask import *




# creating flask application
app=Flask(__name__)

@app.route('/api/home',methods=['GET'])
def home():
    return jsonify({"message":"welcome to the home api"})



@app.route('/api/services')
def services():
    return jsonify({"message":"welcome to the services api"})



@app.route('/api/products')
def products():
    return jsonify({"message":"welcome to the products api"})


@app.route('/api/calc',methods=['POST'])
def calc():
    if request.method =='POST':
        num1=request.form['num1']
        num2=request.form['num2']
        answer=int(num1)+int(num2)
        return jsonify({"answer":answer})


if __name__ =='__main__':
    app.run(debug=True)