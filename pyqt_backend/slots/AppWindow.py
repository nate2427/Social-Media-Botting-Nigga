from PyQt6.QtCore import QObject, pyqtSlot, pyqtSignal

class AppWindowHandler(QObject):
    def __init__ (self):
        QObject.__init__(self)

    def set_qml_app_engine(self, engine):
        engine.rootContext().setContextProperty("backend", self)

    # a signal that the name has been processed and ready to be recv'd by the frontend
    # make signals camelCased so it can be easily connected to by the frontend
    setQMLAppEngineTextSignal = pyqtSignal(str)

    # testing slot creation
    @pyqtSlot(str)
    def change_window_text(self, inputText):
        print("\n\nConnected to the slot from the frontend!\n\nText from the frontend reads: {text} \n\n".format(text=inputText))
        self.setQMLAppEngineTextSignal.emit("Changed from the pyqt backend!")
