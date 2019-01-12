//  This file is used for Windows implementation only - see readme
//  The COMM Port hardcoded below may be different than yours

#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QSerialPort>
#include <QtWidgets>

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    serial = new QSerialPort(this);
    serial->setPortName("COM3");                    // Port name
    serial->setBaudRate(QSerialPort::Baud9600);     // Baudrate
    serial->setDataBits(QSerialPort::Data8);        // Data bits
    serial->setParity(QSerialPort::NoParity);       // No Parity
    serial->setStopBits(QSerialPort::OneStop);
    serial->setFlowControl(QSerialPort::NoFlowControl);
    serial->open(QIODevice::ReadWrite);
    NumberForModule = "1";
    SerialPort = "COM3";
    WriteActualValueString = "0";
}


MainWindow::~MainWindow()
{
    delete ui;
    if(serial->isOpen())
       serial->close();
}


void MainWindow::WriteSerial(QString command)
{
    if(serial->isWritable())
    {
        QThread::msleep(500);
        serial->write(command.toStdString().c_str());
        serial->waitForBytesWritten();
        QThread::msleep(500);
    }
    else
    {
        // qDebug() << "Could not write to serial!";
        QString WarningString = "Could not find the Cortex M3 device on " + SerialPort + "\nPlease start again and change port number";
        QMessageBox::warning(this, "Port error", WarningString);
    }
}


void MainWindow::on_NumberOfModules_pressed()
{
    MainWindow::WriteSerial("a#");
    serial->waitForReadyRead();
    QByteArray DataArray = serial->readAll();
    DataArray.append(1, 0);
    QString NumberOfModulesString = "Number of modules: " + DataArray;
    WriteLabelString(NumberOfModulesString);
}


void MainWindow::on_InformationAll_pressed()
{
    MainWindow::WriteSerial("b#");
    serial->waitForReadyRead();
    QByteArray DataArray = serial->readAll();
    DataArray.append(1, 0);
    QString InformationAllString = "Information of all modules: \n" + DataArray;
    WriteLabelString("Information in message box");
    QMessageBox::information(this, "Information all", InformationAllString);
}


void MainWindow::on_InformationSingle_pressed()
{
    MainWindow::WriteSerial("c" + NumberForModule + "#");
    serial->waitForReadyRead();
    QByteArray DataArray = serial->readAll();
    DataArray.append(1, 0);
    QString InformationSingleString = "Information of module number " + NumberForModule + ": \n" + DataArray;
    WriteLabelString(InformationSingleString);
}


void MainWindow::on_ModuleNumber_valueChanged(const QString &arg1)
{
    NumberForModule = arg1;
}

void MainWindow::on_PortNumber_valueChanged(const QString &arg1)
{
    SerialPort = "COM" + arg1;
    serial->close();
    serial->setPortName(SerialPort);
    serial->setBaudRate(QSerialPort::Baud9600);     // Baudrate
    serial->setDataBits(QSerialPort::Data8);        // Data bits
    serial->setParity(QSerialPort::NoParity);       // No Parity
    serial->setStopBits(QSerialPort::OneStop);
    serial->setFlowControl(QSerialPort::NoFlowControl);
    serial->open(QIODevice::ReadWrite);
}

void MainWindow::on_lineEdit_returnPressed()
{
    WriteActualValueString = this->ui->lineEdit->text();
    MainWindow::WriteSerial("d" + NumberForModule + "_" + WriteActualValueString + "#");
}

void MainWindow::WriteLabelString(QString s_LabelString)
{
    this->ui->anzeigeLabel->setText(s_LabelString);
}
