## Week 3 -  **Python and Cloud Function**

1. Learning about:
    - how computers work :)
    - CPU
    - RAM
    - serverless architecture
    - functions
    - Cloud Function
    - Vim
    - basiscs of Python
    - logging and log monitoring
   
2. Running first Python script.
 
## Goal of the task_3:

The goal of the task is to run our first Cloud Function

**How to:**
    1. Create Function in GCP.
    2. Choose the HTTP trigger for the Function.
    3. Chooose Python 3.7 and change the main.py code to:
 ```
 from datetime import datetime

def hello_world(request):
    """Responds to any HTTP request.
    Args:
        request (flask.Request): HTTP request object.
    Returns:
        The response text or any set of values that can be turned into a
        Response object using
        `make_response <[http://flask.pocoo.org/docs/1.0/api/#flask.Flask.make_response>`](http://flask.pocoo.org/docs/1.0/api/#flask.Flask.make_response%3E%60).
    """
    request_json = request.get_json()
    if request.args and 'message' in request.args:
        return request.args.get('message')
    elif request_json and 'message' in request_json:
        return request_json['message']
    else:
        now = [datetime.now](https://datetime.now/)()
        current_time = now.strftime("%H:%M:%S")
        return 'Let me tell you what time it is: ' + current_time
```
4. Paste the trigger url to **cloud_function** file

Optional task:
5. Create a **hello_function.py** file in Cloud Shell using vim with the following code:
```
def hello_function():
    print("Hello from the other siiiiiiiiiide!")

def my_function_with_args(name, surname):
    print("Hello, it's me, %s %s"%(name, surname))

def sum_two_numbers(a, b):
    return a + b

hello_function()

my_function_with_args("YOUR_NAME", "YOUR_SURNAME")

x = sum_two_numbers(1,2)
print(x)
```

**Result:**
The file **cloud_function** contains url to a HTTP triggered cloud function that tells the current time and the file **optional_funtion** contains the output from the **hello_funtion.py** file.