from flask import Flask
from app import app

if __name__ == "__main__":
        app.run(debug=True, port=80)

#GCP cloud run
#if __name__ == "__main__":
#    app.run(debug=True, host="0.0.0.0", port=int(os.environ.get("PORT", 8080)))        
