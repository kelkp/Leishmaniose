from PyQt5 import uic, QtWidgets

app=QtWidgets.QApplication([ ])
formulario=uic.loadUi("GUI.ui")

formulario.comboBox.addItems([])

formulario.show()
app.exec()