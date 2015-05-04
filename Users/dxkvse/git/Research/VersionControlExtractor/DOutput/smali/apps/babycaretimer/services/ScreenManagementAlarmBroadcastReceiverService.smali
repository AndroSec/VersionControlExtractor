.class public Lapps/babycaretimer/services/ScreenManagementAlarmBroadcastReceiverService;
.super Lapps/babycaretimer/services/WakefulIntentService;
.source "ScreenManagementAlarmBroadcastReceiverService.java"


# instance fields
.field _debug:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "ScreenManagementAlarmBroadcastReceiverService"

    invoke-direct {p0, v0}, Lapps/babycaretimer/services/WakefulIntentService;-><init>(Ljava/lang/String;)V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lapps/babycaretimer/services/ScreenManagementAlarmBroadcastReceiverService;->_debug:Z

    .line 25
    invoke-static {}, Lapps/babycaretimer/log/Log;->getDebug()Z

    move-result v0

    iput-boolean v0, p0, Lapps/babycaretimer/services/ScreenManagementAlarmBroadcastReceiverService;->_debug:Z

    .line 26
    iget-boolean v0, p0, Lapps/babycaretimer/services/ScreenManagementAlarmBroadcastReceiverService;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "ScreenManagementAlarmBroadcastReceiverService.ScreenManagementAlarmBroadcastReceiverService()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 27
    :cond_0
    return-void
.end method


# virtual methods
.method protected doWakefulWork(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 40
    iget-boolean v1, p0, Lapps/babycaretimer/services/ScreenManagementAlarmBroadcastReceiverService;->_debug:Z

    if-eqz v1, :cond_0

    const-string v1, "ScreenManagementAlarmBroadcastReceiverService.doWakefulWork()"

    invoke-static {v1}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 43
    :cond_0
    :try_start_0
    invoke-static {}, Lapps/babycaretimer/common/Common;->clearKeyguardLock()V

    .line 44
    invoke-static {}, Lapps/babycaretimer/common/Common;->clearWakeLock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :cond_1
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, ex:Ljava/lang/Exception;
    iget-boolean v1, p0, Lapps/babycaretimer/services/ScreenManagementAlarmBroadcastReceiverService;->_debug:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScreenManagementAlarmBroadcastReceiverService.doWakefulWork() ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
