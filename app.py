import sys
from PyQt6.QtGui import QGuiApplication
from PyQt6.QtQml import QQmlApplicationEngine




def start_app():
    # create an Application object with the args passed on the cmdline
    app = QGuiApplication(sys.argv)   
    # create the QML engine that will run the QML code
    qml_engine = QQmlApplicationEngine()
    # connect the QML app engine quit to the Qt app engine quit
    qml_engine.quit.connect(app.quit)
    # load the entry point to the qml frontend app
    qml_engine.load('./qml-frontend/appEntry.qml')
    # start the app and connect it to the system exit call so we know what the exit code was
    sys.exit(app.exec())



if __name__ == '__main__':
    start_app()
