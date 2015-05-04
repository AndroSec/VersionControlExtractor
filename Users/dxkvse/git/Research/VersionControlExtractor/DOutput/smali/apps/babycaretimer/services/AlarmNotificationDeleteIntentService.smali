.class public Lapps/babycaretimer/services/AlarmNotificationDeleteIntentService;
.super Landroid/app/Service;
.source "AlarmNotificationDeleteIntentService.java"


# instance fields
.field private _debug:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lapps/babycaretimer/services/AlarmNotificationDeleteIntentService;->_debug:Z

    .line 33
    invoke-static {}, Lapps/babycaretimer/log/Log;->getDebug()Z

    move-result v0

    iput-boolean v0, p0, Lapps/babycaretimer/services/AlarmNotificationDeleteIntentService;->_debug:Z

    .line 34
    iget-boolean v0, p0, Lapps/babycaretimer/services/AlarmNotificationDeleteIntentService;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "AlarmNotificationDeleteIntentService.AlarmNotificationDeleteIntentService()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 35
    :cond_0
    return-void
.end method

.method private handleNotificationIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 76
    iget-boolean v4, p0, Lapps/babycaretimer/services/AlarmNotificationDeleteIntentService;->_debug:Z

    if-eqz v4, :cond_0

    const-string v4, "AlarmNotificationDeleteIntentService.handleNotificationIntent()"

    invoke-static {v4}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 77
    :cond_0
    invoke-virtual {p0}, Lapps/babycaretimer/services/AlarmNotificationDeleteIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 78
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 79
    .local v3, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 80
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "alarm_notification_count"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 81
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 85
    invoke-static {}, Lapps/babycaretimer/services/AlarmReceiverService;->cancelVibrator()V

    .line 86
    invoke-static {}, Lapps/babycaretimer/services/AlarmReceiverService;->stopMediaPlayer()V

    .line 87
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lapps/babycaretimer/services/AlarmReceiverService;

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .local v0, alarmReceiverServiceIntent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 89
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 42
    iget-boolean v0, p0, Lapps/babycaretimer/services/AlarmNotificationDeleteIntentService;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "AlarmNotificationDeleteIntentService.onBind()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 43
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 52
    iget-boolean v0, p0, Lapps/babycaretimer/services/AlarmNotificationDeleteIntentService;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "AlarmNotificationDeleteIntentService.onCreate()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 53
    :cond_0
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 60
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 61
    iget-boolean v0, p0, Lapps/babycaretimer/services/AlarmNotificationDeleteIntentService;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "AlarmNotificationDeleteIntentService.onStart()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 62
    :cond_0
    invoke-direct {p0, p1}, Lapps/babycaretimer/services/AlarmNotificationDeleteIntentService;->handleNotificationIntent(Landroid/content/Intent;)V

    .line 63
    invoke-virtual {p0}, Lapps/babycaretimer/services/AlarmNotificationDeleteIntentService;->stopSelf()V

    .line 64
    return-void
.end method
