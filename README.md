# API Docs

- Get messages:
    - route: GET /messages/{id}
    - will return an array of messages whose id is larger than the id passed throught the url
    - to get all messages run a GET request on /messages/0
    - example response:
    ```json
    [
        {
            "author": "person 1",
            "id": 1,
            "message": "message 1",
            "sentTime": "2019-04-01T05:09:38Z"
        },
        {
            "author": "person 2",
            "id": 2,
            "message": "message 2",
            "sentTime": "2019-04-01T05:09:44Z"
        },
        {
            "author": "person 3",
            "id": 3,
            "message": "message 3",
            "sentTime": "2019-04-01T05:09:49Z"
        }
    ]   
    ```
- Send message:
    - route: POST /messages
    - Add json to payload in the following structure:
    ```json
    {
        "author": "author name",
        "message": "message name"
    }
    ```
    - If message added succesfully then a 200 response will be send with the payload containing the message that
    was added
    - if the message failed to be added than a 400 response code will be returned with an appropriate error message
    in the payload

# How to run the server

- Ensure you have swift installed
- To edit the project install the vapor cli and run ```vapor xcode```
    - This will take a while to run
    - It will generate an xcode project than can be opened in xcode
- Enter project directory and run ```swift build```
- To start the server run ```swift run```
