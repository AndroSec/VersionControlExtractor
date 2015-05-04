.class public Lapps/babycaretimer/services/AlarmBroadcastReceiverService;
.super Lapps/babycaretimer/services/WakefulIntentService;
.source "AlarmBroadcastReceiverService.java"


# instance fields
.field _context:Landroid/content/Context;

.field _debug:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "AlarmBroadcastReceiverService"

    invoke-direct {p0, v0}, Lapps/babycaretimer/services/WakefulIntentService;-><init>(Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lapps/babycaretimer/services/AlarmBroadcastReceiverService;->_debug:Z

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lapps/babycaretimer/services/AlarmBroadcastReceiverService;->_context:Landroid/content/Context;

    .line 39
    invoke-static {}, Lapps/babycaretimer/log/Log;->getDebug()Z

    move-result v0

    iput-boolean v0, p0, Lapps/babycaretimer/services/AlarmBroadcastReceiverService;->_debug:Z

    .line 40
    iget-boolean v0, p0, Lapps/babycaretimer/services/AlarmBroadcastReceiverService;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "AlarmBroadcastReceiverService.AlarmBroadcastReceiverService()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 41
    :cond_0
    return-void
.end method

.method private elapsedTimeReached(I)Z
    .locals 12
    .parameter "alarmType"

    .prologue
    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    .line 93
    iget-boolean v0, p0, Lapps/babycaretimer/services/AlarmBroadcastReceiverService;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "AlarmReceiver.elapsedTimeReached()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 94
    :cond_0
    iget-object v0, p0, Lapps/babycaretimer/services/AlarmBroadcastReceiverService;->_context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 95
    .local v6, preferences:Landroid/content/SharedPreferences;
    const-wide/16 v2, 0x0

    .line 96
    .local v2, alarmTime:J
    const-wide/16 v7, 0x0

    .line 97
    .local v7, timerStartTime:J
    const-wide/16 v4, 0x0

    .line 98
    .local v4, currentElapsedTime:J
    packed-switch p1, :pswitch_data_0

    .line 136
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v7

    const-wide/16 v10, 0x2710

    add-long v4, v0, v10

    .line 137
    cmp-long v0, v4, v2

    if-ltz v0, :cond_6

    .line 138
    const/4 v0, 0x1

    .line 141
    :goto_0
    return v0

    .line 100
    :pswitch_0
    const-string v0, "diaper_alarm_time"

    invoke-interface {v6, v0, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 101
    const-string v0, "diaper_start_time"

    invoke-interface {v6, v0, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 102
    cmp-long v0, v2, v10

    if-nez v0, :cond_1

    .line 103
    iget-boolean v0, p0, Lapps/babycaretimer/services/AlarmBroadcastReceiverService;->_debug:Z

    if-eqz v0, :cond_2

    const-string v0, "AlarmReceiver.elapsedTimeReached() Alarm time is null."

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    :cond_2
    move v0, v9

    .line 104
    goto :goto_0

    .line 109
    :pswitch_1
    const-string v0, "bottle_alarm_time"

    invoke-interface {v6, v0, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 110
    const-string v0, "bottle_start_time"

    invoke-interface {v6, v0, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 111
    cmp-long v0, v2, v10

    if-nez v0, :cond_1

    .line 112
    iget-boolean v0, p0, Lapps/babycaretimer/services/AlarmBroadcastReceiverService;->_debug:Z

    if-eqz v0, :cond_3

    const-string v0, "AlarmReceiver.elapsedTimeReached() Alarm time is null."

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    :cond_3
    move v0, v9

    .line 113
    goto :goto_0

    .line 118
    :pswitch_2
    const-string v0, "sleep_alarm_time"

    invoke-interface {v6, v0, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 119
    const-string v0, "sleep_start_time"

    invoke-interface {v6, v0, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 120
    cmp-long v0, v2, v10

    if-nez v0, :cond_1

    .line 121
    iget-boolean v0, p0, Lapps/babycaretimer/services/AlarmBroadcastReceiverService;->_debug:Z

    if-eqz v0, :cond_4

    const-string v0, "AlarmReceiver.elapsedTimeReached() Alarm time is null."

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    :cond_4
    move v0, v9

    .line 122
    goto :goto_0

    .line 127
    :pswitch_3
    const-string v0, "custom_alarm_time"

    invoke-interface {v6, v0, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 128
    const-string v0, "custom_start_time"

    invoke-interface {v6, v0, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 129
    cmp-long v0, v2, v10

    if-nez v0, :cond_1

    .line 130
    iget-boolean v0, p0, Lapps/babycaretimer/services/AlarmBroadcastReceiverService;->_debug:Z

    if-eqz v0, :cond_5

    const-string v0, "AlarmReceiver.elapsedTimeReached() Alarm time is null."

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    :cond_5
    move v0, v9

    .line 131
    goto :goto_0

    :cond_6
    move-object v0, p0

    move v1, p1

    .line 140
    invoke-direct/range {v0 .. v5}, Lapps/babycaretimer/services/AlarmBroadcastReceiverService;->setAlarm(IJJ)V

    move v0, v9

    .line 141
    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setAlarm(IJJ)V
    .locals 9
    .parameter "alarmType"
    .parameter "alarmTime"
    .parameter "elapsedTime"

    .prologue
    const/4 v8, 0x0

    .line 154
    iget-boolean v6, p0, Lapps/babycaretimer/services/AlarmBroadcastReceiverService;->_debug:Z

    if-eqz v6, :cond_0

    const-string v6, "AlarmReceiver.setAlarm()"

    invoke-static {v6}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 155
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, p2

    sub-long v0, v6, p4

    .line 156
    .local v0, alarmAlertTime:J
    iget-boolean v6, p0, Lapps/babycaretimer/services/AlarmBroadcastReceiverService;->_debug:Z

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AlarmReceiver.setAlarm() AlarmTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ElapsedTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AlarmAlertTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 157
    :cond_1
    iget-object v6, p0, Lapps/babycaretimer/services/AlarmBroadcastReceiverService;->_context:Landroid/content/Context;

    const-string v7, "alarm"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 158
    .local v3, alarmManager:Landroid/app/AlarmManager;
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lapps/babycaretimer/services/AlarmBroadcastReceiverService;->_context:Landroid/content/Context;

    const-class v7, Lapps/babycaretimer/receivers/AlarmReceiver;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    .local v2, alarmIntent:Landroid/content/Intent;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 160
    .local v4, bundle:Landroid/os/Bundle;
    const-string v6, "alarm_type"

    invoke-virtual {v4, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 161
    const-string v6, "alarm_time"

    invoke-virtual {v4, v6, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 162
    const-string v6, "alarm_snooze"

    invoke-virtual {v4, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 163
    invoke-virtual {v2, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 164
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const/high16 v6, 0x1080

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 166
    iget-object v6, p0, Lapps/babycaretimer/services/AlarmBroadcastReceiverService;->_context:Landroid/content/Context;

    invoke-static {v6, v8, v2, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 167
    .local v5, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {v3, v8, v0, v1, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 168
    return-void
.end method


# virtual methods
.method protected doWakefulWork(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 54
    invoke-static {}, Lapps/babycaretimer/log/Log;->getDebug()Z

    move-result v4

    iput-boolean v4, p0, Lapps/babycaretimer/services/AlarmBroadcastReceiverService;->_debug:Z

    .line 55
    iget-boolean v4, p0, Lapps/babycaretimer/services/AlarmBroadcastReceiverService;->_debug:Z

    if-eqz v4, :cond_0

    const-string v4, "AlarmBroadcastReceiverService.doWakefulWork()"

    invoke-static {v4}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 56
    :cond_0
    invoke-virtual {p0}, Lapps/babycaretimer/services/AlarmBroadcastReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lapps/babycaretimer/services/AlarmBroadcastReceiverService;->_context:Landroid/content/Context;

    .line 57
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 58
    .local v3, bundle:Landroid/os/Bundle;
    const-string v4, "alarm_type"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 59
    .local v2, alarmType:I
    const-string v4, "alarm_snooze"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 60
    .local v1, alarmSnooze:Z
    iget-object v4, p0, Lapps/babycaretimer/services/AlarmBroadcastReceiverService;->_context:Landroid/content/Context;

    invoke-static {v4, v2}, Lapps/babycaretimer/common/Common;->isAlarmActive(Landroid/content/Context;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 61
    iget-boolean v4, p0, Lapps/babycaretimer/services/AlarmBroadcastReceiverService;->_debug:Z

    if-eqz v4, :cond_1

    const-string v4, "AlarmReceiver.onReceive() Alarm is not active..."

    invoke-static {v4}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 82
    :cond_1
    :goto_0
    return-void

    .line 64
    :cond_2
    iget-object v4, p0, Lapps/babycaretimer/services/AlarmBroadcastReceiverService;->_context:Landroid/content/Context;

    invoke-static {v4, v2}, Lapps/babycaretimer/common/Common;->isTimerActive(Landroid/content/Context;I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 65
    iget-boolean v4, p0, Lapps/babycaretimer/services/AlarmBroadcastReceiverService;->_debug:Z

    if-eqz v4, :cond_1

    const-string v4, "AlarmReceiver.onReceive() Timer is not active..."

    invoke-static {v4}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_3
    if-eqz v1, :cond_4

    .line 69
    iget-object v4, p0, Lapps/babycaretimer/services/AlarmBroadcastReceiverService;->_context:Landroid/content/Context;

    invoke-static {v4, v2}, Lapps/babycaretimer/common/Common;->isAlarmSnoozed(Landroid/content/Context;I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 70
    iget-boolean v4, p0, Lapps/babycaretimer/services/AlarmBroadcastReceiverService;->_debug:Z

    if-eqz v4, :cond_1

    const-string v4, "AlarmReceiver.onReceive() Alarm is a snooze alarm but the snooze has been cancelled..."

    invoke-static {v4}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_4
    invoke-direct {p0, v2}, Lapps/babycaretimer/services/AlarmBroadcastReceiverService;->elapsedTimeReached(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 75
    iget-boolean v4, p0, Lapps/babycaretimer/services/AlarmBroadcastReceiverService;->_debug:Z

    if-eqz v4, :cond_1

    const-string v4, "AlarmReceiver.onReceive() Elapsed time has not been reached yet..."

    invoke-static {v4}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_5
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lapps/babycaretimer/services/AlarmBroadcastReceiverService;->_context:Landroid/content/Context;

    const-class v5, Lapps/babycaretimer/services/AlarmReceiverService;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    .local v0, alarmReceiverServiceIntent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 81
    iget-object v4, p0, Lapps/babycaretimer/services/AlarmBroadcastReceiverService;->_context:Landroid/content/Context;

    invoke-static {v4, v0}, Lapps/babycaretimer/services/WakefulIntentService;->sendWakefulWork(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
