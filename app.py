from flask import Flask

app = Flask(__name__)


@app.get("/")
def home():
    return """
    <h1>Harbour Books</h1>
    <p>Welcome to our bookstore!</p>
    <ul>
        <li>The Great Gatsby — $15</li>
        <li>Pride and Prejudice — $18</li>
        <li>Little Women — $20</li>
    </ul>
    """


@app.get("/health")
def health():
    return {"status": "ok"}, 200