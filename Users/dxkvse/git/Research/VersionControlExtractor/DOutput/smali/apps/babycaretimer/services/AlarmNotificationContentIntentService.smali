.class public Lapps/babycaretimer/services/AlarmNotificationContentIntentService;
.super Landroid/app/Service;
.source "AlarmNotificationContentIntentService.java"


# instance fields
.field private _debug:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lapps/babycaretimer/services/AlarmNotificationContentIntentService;->_debug:Z

    .line 36
    invoke-static {}, Lapps/babycaretimer/log/Log;->getDebug()Z

    move-result v0

    iput-boolean v0, p0, Lapps/babycaretimer/services/AlarmNotificationContentIntentService;->_debug:Z

    .line 37
    iget-boolean v0, p0, Lapps/babycaretimer/services/AlarmNotificationContentIntentService;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "AlarmNotificationContentIntentService.AlarmNotificationContentIntentService()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 38
    :cond_0
    return-void
.end method

.method private handleNotificationIntent(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    .line 79
    iget-boolean v5, p0, Lapps/babycaretimer/services/AlarmNotificationContentIntentService;->_debug:Z

    if-eqz v5, :cond_0

    const-string v5, "AlarmNotificationContentIntentService.handleNotificationIntent()"

    invoke-static {v5}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 80
    :cond_0
    invoke-virtual {p0}, Lapps/babycaretimer/services/AlarmNotificationContentIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 81
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 82
    .local v3, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 83
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "alarm_notification_count"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 84
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 86
    invoke-static {}, Lapps/babycaretimer/services/AlarmReceiverService;->cancelVibrator()V

    .line 87
    invoke-static {}, Lapps/babycaretimer/services/AlarmReceiverService;->stopMediaPlayer()V

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lapps/babycaretimer/services/AlarmReceiverService;

    invoke-direct {v0, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .local v0, alarmReceiverServiceIntent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 91
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lapps/babycaretimer/TimerActivity;

    invoke-direct {v4, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .local v4, timerActivityIntent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 93
    invoke-static {v1}, Lapps/babycaretimer/common/Common;->acquireWakeLock(Landroid/content/Context;)V

    .line 94
    invoke-virtual {v1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 95
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 45
    iget-boolean v0, p0, Lapps/babycaretimer/services/AlarmNotificationContentIntentService;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "AlarmNotificationContentIntentService.onBind()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 46
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 55
    iget-boolean v0, p0, Lapps/babycaretimer/services/AlarmNotificationContentIntentService;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "AlarmNotificationContentIntentService.onCreate()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 56
    :cond_0
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 64
    iget-boolean v0, p0, Lapps/babycaretimer/services/AlarmNotificationContentIntentService;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "AlarmNotificationContentIntentService.onStart()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 65
    :cond_0
    invoke-direct {p0, p1}, Lapps/babycaretimer/services/AlarmNotificationContentIntentService;->handleNotificationIntent(Landroid/content/Intent;)V

    .line 66
    invoke-virtual {p0}, Lapps/babycaretimer/services/AlarmNotificationContentIntentService;->stopSelf()V

    .line 67
    return-void
.end method
