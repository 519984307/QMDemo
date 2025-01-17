#ifndef WIDGET_H
#define WIDGET_H

#include <QWidget>
#include <qtimer.h>
#include "readthread.h"

QT_BEGIN_NAMESPACE
namespace Ui { class Widget; }
QT_END_NAMESPACE

class Widget : public QWidget
{
    Q_OBJECT

public:
    Widget(QWidget *parent = nullptr);
    ~Widget();

private slots:
    void on_but_open_clicked();
    void on_playState(ReadThread::PlayState state);

    void setSavePath();
    void on_timeout();

private:
    Ui::Widget *ui;
    ReadThread* m_readThread = nullptr;
    QTimer m_timer;
};
#endif // WIDGET_H
