/********************************************************************************
** Form generated from reading UI file 'ui_mainwindow.ui'
**
** Created by: Qt User Interface Compiler version 5.15.16
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_UI_MAINWINDOW_H
#define UI_UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QTextEdit>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QAction *actionExit;
    QWidget *centralwidget;
    QVBoxLayout *verticalLayout;
    QPushButton *viewEmailsButton;
    QLineEdit *emailLineEdit;
    QTextEdit *contentTextEdit;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName(QString::fromUtf8("MainWindow"));
        MainWindow->resize(400, 300);
        actionExit = new QAction(MainWindow);
        actionExit->setObjectName(QString::fromUtf8("actionExit"));
        centralwidget = new QWidget(MainWindow);
        centralwidget->setObjectName(QString::fromUtf8("centralwidget"));
        verticalLayout = new QVBoxLayout(centralwidget);
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        viewEmailsButton = new QPushButton(centralwidget);
        viewEmailsButton->setObjectName(QString::fromUtf8("viewEmailsButton"));

        verticalLayout->addWidget(viewEmailsButton);

        emailLineEdit = new QLineEdit(centralwidget);
        emailLineEdit->setObjectName(QString::fromUtf8("emailLineEdit"));

        verticalLayout->addWidget(emailLineEdit);

        contentTextEdit = new QTextEdit(centralwidget);
        contentTextEdit->setObjectName(QString::fromUtf8("contentTextEdit"));

        verticalLayout->addWidget(contentTextEdit);

        MainWindow->setCentralWidget(centralwidget);

        retranslateUi(MainWindow);

        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        actionExit->setText(QCoreApplication::translate("MainWindow", "Exit", nullptr));
        viewEmailsButton->setText(QCoreApplication::translate("MainWindow", "View Emails", nullptr));
        emailLineEdit->setPlaceholderText(QCoreApplication::translate("MainWindow", "Enter email", nullptr));
        contentTextEdit->setPlaceholderText(QCoreApplication::translate("MainWindow", "Enter email content", nullptr));
        (void)MainWindow;
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_UI_MAINWINDOW_H
