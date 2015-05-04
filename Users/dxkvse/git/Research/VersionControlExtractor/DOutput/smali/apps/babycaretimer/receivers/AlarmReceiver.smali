.class public Lapps/babycaretimer/receivers/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmReceiver.java"


# instance fields
.field private _debug:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lapps/babycaretimer/receivers/AlarmReceiver;->_debug:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 35
    invoke-static {}, Lapps/babycaretimer/log/Log;->getDebug()Z

    move-result v2

    iput-boolean v2, p0, Lapps/babycaretimer/receivers/AlarmReceiver;->_debug:Z

    .line 36
    iget-boolean v2, p0, Lapps/babycaretimer/receivers/AlarmReceiver;->_debug:Z

    if-eqz v2, :cond_0

    const-string v2, "AlarmReceiver.onReceive()"

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 38
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lapps/babycaretimer/services/AlarmBroadcastReceiverService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    .local v0, alarmBroadcastReceiverServiceIntent:Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 40
    invoke-static {p1, v0}, Lapps/babycaretimer/services/WakefulIntentService;->sendWakefulWork(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .end local v0           #alarmBroadcastReceiverServiceIntent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v1

    .line 42
    .local v1, ex:Ljava/lang/Exception;
    iget-boolean v2, p0, Lapps/babycaretimer/receivers/AlarmReceiver;->_debug:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AlarmReceiver.onReceive() ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
