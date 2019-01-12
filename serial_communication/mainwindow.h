// Windows implementation only

#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QSerialPort>

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

private slots:
    void WriteSerial(QString);
    void on_NumberOfModules_pressed();
    void on_InformationAll_pressed();
    void on_InformationSingle_pressed();
    void on_ModuleNumber_valueChanged(const QString &arg1);
    void on_PortNumber_valueChanged(const QString &arg1);
    void on_lineEdit_returnPressed();
    void WriteLabelString(QString s_LabelString);

protected:


private:
    Ui::MainWindow *ui;
    QSerialPort *serial;
    QString NumberForModule;
    QString SerialPort;
    QString WriteActualValueString;
};

#endif // MAINWINDOW_H
