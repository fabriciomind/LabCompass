#ifndef PLANNERWINDOW_H
#define PLANNERWINDOW_H

#include "stdafx.h"
#include "window/window.h"

class PlannerWindow : public Window
{
  Q_OBJECT

signals:
  void moved(int x, int y);
  void importFile(QString fileName);
  void setRoomIsTarget(QString id, bool target);
  void setCurrentRoom(QString id);

public:
  PlannerWindow(QQmlEngine* engine);

private slots:
  void onWindowOpenChanged();
  void onImportLabNotesFileClicked();
  void onOpenUrl(const QString& url);
  void onDrag(int dx, int dy);
};

#endif // PLANNERWINDOW_H
