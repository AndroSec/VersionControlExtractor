.class public Lapps/babycaretimer/services/OnBootBroadcastReceiverService;
.super Lapps/babycaretimer/services/WakefulIntentService;
.source "OnBootBroadcastReceiverService.java"


# instance fields
.field _context:Landroid/content/Context;

.field _debug:Z

.field _preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    const-string v0, "OnBootBroadcastReceiverService"

    invoke-direct {p0, v0}, Lapps/babycaretimer/services/WakefulIntentService;-><init>(Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lapps/babycaretimer/services/OnBootBroadcastReceiverService;->_debug:Z

    .line 28
    iput-object v1, p0, Lapps/babycaretimer/services/OnBootBroadcastReceiverService;->_context:Landroid/content/Context;

    .line 29
    iput-object v1, p0, Lapps/babycaretimer/services/OnBootBroadcastReceiverService;->_preferences:Landroid/content/SharedPreferences;

    .line 40
    invoke-static {}, Lapps/babycaretimer/log/Log;->getDebug()Z

    move-result v0

    iput-boolean v0, p0, Lapps/babycaretimer/services/OnBootBroadcastReceiverService;->_debug:Z

    .line 41
    iget-boolean v0, p0, Lapps/babycaretimer/services/OnBootBroadcastReceiverService;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "OnBootBroadcastReceiverService.OnBootBroadcastReceiverService()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 42
    :cond_0
    return-void
.end method

.method private manageAppTimers()V
    .locals 46

    .prologue
    .line 71
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lapps/babycaretimer/services/OnBootBroadcastReceiverService;->_debug:Z

    if-eqz v3, :cond_0

    const-string v3, "OnBootBroadcastReceiverService.manageAppTimers()"

    invoke-static {v3}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 72
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    .line 74
    .local v31, currentTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lapps/babycaretimer/services/OnBootBroadcastReceiverService;->_context:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lapps/babycaretimer/common/Common;->isTimerActive(Landroid/content/Context;I)Z

    move-result v38

    .line 75
    .local v38, diaperTimerActive:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lapps/babycaretimer/services/OnBootBroadcastReceiverService;->_context:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lapps/babycaretimer/common/Common;->isTimerActive(Landroid/content/Context;I)Z

    move-result v28

    .line 76
    .local v28, bottleTimerActive:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lapps/babycaretimer/services/OnBootBroadcastReceiverService;->_context:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lapps/babycaretimer/common/Common;->isTimerActive(Landroid/content/Context;I)Z

    move-result v43

    .line 77
    .local v43, sleepTimerActive:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lapps/babycaretimer/services/OnBootBroadcastReceiverService;->_context:Landroid/content/Context;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lapps/babycaretimer/common/Common;->isTimerActive(Landroid/content/Context;I)Z

    move-result v34

    .line 78
    .local v34, customTimerActive:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lapps/babycaretimer/services/OnBootBroadcastReceiverService;->_context:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lapps/babycaretimer/common/Common;->getTimerStartTime(Landroid/content/Context;I)J

    move-result-wide v39

    .line 79
    .local v39, diaperTimerStartTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lapps/babycaretimer/services/OnBootBroadcastReceiverService;->_context:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lapps/babycaretimer/common/Common;->getTimerStartTime(Landroid/content/Context;I)J

    move-result-wide v29

    .line 80
    .local v29, bottleTimerStartTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lapps/babycaretimer/services/OnBootBroadcastReceiverService;->_context:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lapps/babycaretimer/common/Common;->getTimerStartTime(Landroid/content/Context;I)J

    move-result-wide v44

    .line 81
    .local v44, sleepTimerStartTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lapps/babycaretimer/services/OnBootBroadcastReceiverService;->_context:Landroid/content/Context;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lapps/babycaretimer/common/Common;->getTimerStartTime(Landroid/content/Context;I)J

    move-result-wide v35

    .line 82
    .local v35, customTimerStartTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lapps/babycaretimer/services/OnBootBroadcastReceiverService;->_context:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lapps/babycaretimer/common/Common;->getTimerOffset(Landroid/content/Context;I)J

    move-result-wide v7

    .line 83
    .local v7, diaperTimerOffset:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lapps/babycaretimer/services/OnBootBroadcastReceiverService;->_context:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lapps/babycaretimer/common/Common;->getTimerOffset(Landroid/content/Context;I)J

    move-result-wide v13

    .line 84
    .local v13, bottleTimerOffset:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lapps/babycaretimer/services/OnBootBroadcastReceiverService;->_context:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lapps/babycaretimer/common/Common;->getTimerOffset(Landroid/content/Context;I)J

    move-result-wide v19

    .line 85
    .local v19, sleepTimerOffset:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lapps/babycaretimer/services/OnBootBroadcastReceiverService;->_context:Landroid/content/Context;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lapps/babycaretimer/common/Common;->getTimerOffset(Landroid/content/Context;I)J

    move-result-wide v25

    .line 86
    .local v25, customTimerOffset:J
    if-eqz v38, :cond_5

    sub-long v7, v31, v39

    .line 87
    :goto_0
    if-eqz v28, :cond_6

    sub-long v13, v31, v29

    .line 88
    :goto_1
    if-eqz v43, :cond_7

    sub-long v19, v31, v44

    .line 89
    :goto_2
    if-eqz v34, :cond_8

    sub-long v25, v31, v35

    .line 90
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lapps/babycaretimer/services/OnBootBroadcastReceiverService;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v41

    .line 91
    .local v41, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "diaper_base_time"

    const-wide/16 v9, 0x0

    move-object/from16 v0, v41

    invoke-interface {v0, v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 92
    const-string v3, "diaper_timer_offset"

    move-object/from16 v0, v41

    invoke-interface {v0, v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 93
    const-string v3, "bottle_base_time"

    const-wide/16 v9, 0x0

    move-object/from16 v0, v41

    invoke-interface {v0, v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 94
    const-string v3, "bottle_timer_offset"

    move-object/from16 v0, v41

    invoke-interface {v0, v3, v13, v14}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 95
    const-string v3, "sleep_base_time"

    const-wide/16 v9, 0x0

    move-object/from16 v0, v41

    invoke-interface {v0, v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 96
    const-string v3, "sleep_timer_offset"

    move-object/from16 v0, v41

    move-wide/from16 v1, v19

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 97
    const-string v3, "custom_base_time"

    const-wide/16 v9, 0x0

    move-object/from16 v0, v41

    invoke-interface {v0, v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 98
    const-string v3, "custom_timer_offset"

    move-object/from16 v0, v41

    move-wide/from16 v1, v25

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 99
    invoke-interface/range {v41 .. v41}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 101
    move-object/from16 v0, p0

    iget-object v3, v0, Lapps/babycaretimer/services/OnBootBroadcastReceiverService;->_context:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lapps/babycaretimer/common/Common;->isAlarmActive(Landroid/content/Context;I)Z

    move-result v37

    .line 102
    .local v37, diaperAlarmActive:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lapps/babycaretimer/services/OnBootBroadcastReceiverService;->_context:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lapps/babycaretimer/common/Common;->isAlarmActive(Landroid/content/Context;I)Z

    move-result v27

    .line 103
    .local v27, bottleAlarmActive:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lapps/babycaretimer/services/OnBootBroadcastReceiverService;->_context:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lapps/babycaretimer/common/Common;->isAlarmActive(Landroid/content/Context;I)Z

    move-result v42

    .line 104
    .local v42, sleepAlarmActive:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lapps/babycaretimer/services/OnBootBroadcastReceiverService;->_context:Landroid/content/Context;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lapps/babycaretimer/common/Common;->isAlarmActive(Landroid/content/Context;I)Z

    move-result v33

    .line 105
    .local v33, customAlarmActive:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lapps/babycaretimer/services/OnBootBroadcastReceiverService;->_context:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lapps/babycaretimer/common/Common;->getAlarmTime(Landroid/content/Context;I)J

    move-result-wide v5

    .line 106
    .local v5, diaperAlarmTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lapps/babycaretimer/services/OnBootBroadcastReceiverService;->_context:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lapps/babycaretimer/common/Common;->getAlarmTime(Landroid/content/Context;I)J

    move-result-wide v11

    .line 107
    .local v11, bottleAlarmTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lapps/babycaretimer/services/OnBootBroadcastReceiverService;->_context:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lapps/babycaretimer/common/Common;->getAlarmTime(Landroid/content/Context;I)J

    move-result-wide v17

    .line 108
    .local v17, sleepAlarmTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lapps/babycaretimer/services/OnBootBroadcastReceiverService;->_context:Landroid/content/Context;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lapps/babycaretimer/common/Common;->getAlarmTime(Landroid/content/Context;I)J

    move-result-wide v23

    .line 109
    .local v23, customAlarmTime:J
    if-eqz v37, :cond_1

    .line 110
    const/4 v4, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lapps/babycaretimer/services/OnBootBroadcastReceiverService;->setAlarm(IJJ)V

    .line 112
    :cond_1
    if-eqz v27, :cond_2

    .line 113
    const/4 v10, 0x1

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v14}, Lapps/babycaretimer/services/OnBootBroadcastReceiverService;->setAlarm(IJJ)V

    .line 115
    :cond_2
    if-eqz v42, :cond_3

    .line 116
    const/16 v16, 0x2

    move-object/from16 v15, p0

    invoke-direct/range {v15 .. v20}, Lapps/babycaretimer/services/OnBootBroadcastReceiverService;->setAlarm(IJJ)V

    .line 118
    :cond_3
    if-eqz v33, :cond_4

    .line 119
    const/16 v22, 0x3

    move-object/from16 v21, p0

    invoke-direct/range {v21 .. v26}, Lapps/babycaretimer/services/OnBootBroadcastReceiverService;->setAlarm(IJJ)V

    .line 121
    :cond_4
    return-void

    .line 86
    .end local v5           #diaperAlarmTime:J
    .end local v11           #bottleAlarmTime:J
    .end local v17           #sleepAlarmTime:J
    .end local v23           #customAlarmTime:J
    .end local v27           #bottleAlarmActive:Z
    .end local v33           #customAlarmActive:Z
    .end local v37           #diaperAlarmActive:Z
    .end local v41           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v42           #sleepAlarmActive:Z
    :cond_5
    const-wide/16 v7, 0x0

    goto/16 :goto_0

    .line 87
    :cond_6
    const-wide/16 v13, 0x0

    goto/16 :goto_1

    .line 88
    :cond_7
    const-wide/16 v19, 0x0

    goto/16 :goto_2

    .line 89
    :cond_8
    const-wide/16 v25, 0x0

    goto/16 :goto_3
.end method

.method private setAlarm(IJJ)V
    .locals 12
    .parameter "alarmType"
    .parameter "alarmTime"
    .parameter "timerOffset"

    .prologue
    .line 131
    iget-boolean v9, p0, Lapps/babycaretimer/services/OnBootBroadcastReceiverService;->_debug:Z

    if-eqz v9, :cond_0

    const-string v9, "OnBootBroadcastReceiverService.setAlarm()"

    invoke-static {v9}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 134
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    add-long v5, v9, p4

    .line 135
    .local v5, elapsedTime:J
    iget-boolean v9, p0, Lapps/babycaretimer/services/OnBootBroadcastReceiverService;->_debug:Z

    if-eqz v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OnBootBroadcastReceiverService.setAlarm() elapsedTime: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 136
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    add-long/2addr v9, p2

    sub-long v0, v9, v5

    .line 137
    .local v0, alarmAlertTime:J
    iget-boolean v9, p0, Lapps/babycaretimer/services/OnBootBroadcastReceiverService;->_debug:Z

    if-eqz v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OnBootBroadcastReceiverService.setAlarm() AlarmTime: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ElapsedTime:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " AlarmAlertTime: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 138
    :cond_2
    iget-object v9, p0, Lapps/babycaretimer/services/OnBootBroadcastReceiverService;->_context:Landroid/content/Context;

    const-string v10, "alarm"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 139
    .local v3, alarmManager:Landroid/app/AlarmManager;
    new-instance v2, Landroid/content/Intent;

    iget-object v9, p0, Lapps/babycaretimer/services/OnBootBroadcastReceiverService;->_context:Landroid/content/Context;

    const-class v10, Lapps/babycaretimer/receivers/AlarmReceiver;

    invoke-direct {v2, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    .local v2, alarmIntent:Landroid/content/Intent;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 141
    .local v4, bundle:Landroid/os/Bundle;
    const-string v9, "alarm_type"

    invoke-virtual {v4, v9, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 142
    const-string v9, "alarm_snooze"

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 143
    invoke-virtual {v2, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 144
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "apps.babycaretimer.action."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const/high16 v9, 0x1080

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 146
    iget-object v9, p0, Lapps/babycaretimer/services/OnBootBroadcastReceiverService;->_context:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v2, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 147
    .local v8, pendingIntent:Landroid/app/PendingIntent;
    const/4 v9, 0x0

    invoke-virtual {v3, v9, v0, v1, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v0           #alarmAlertTime:J
    .end local v2           #alarmIntent:Landroid/content/Intent;
    .end local v3           #alarmManager:Landroid/app/AlarmManager;
    .end local v4           #bundle:Landroid/os/Bundle;
    .end local v5           #elapsedTime:J
    .end local v8           #pendingIntent:Landroid/app/PendingIntent;
    :cond_3
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v7

    .line 149
    .local v7, ex:Ljava/lang/Exception;
    iget-boolean v9, p0, Lapps/babycaretimer/services/OnBootBroadcastReceiverService;->_debug:Z

    if-eqz v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OnBootBroadcastReceiverService.setAlarm() ERROR: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected doWakefulWork(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 55
    invoke-static {}, Lapps/babycaretimer/log/Log;->getDebug()Z

    move-result v0

    iput-boolean v0, p0, Lapps/babycaretimer/services/OnBootBroadcastReceiverService;->_debug:Z

    .line 56
    iget-boolean v0, p0, Lapps/babycaretimer/services/OnBootBroadcastReceiverService;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "OnBootBroadcastReceiverService.doWakefulWork()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 57
    :cond_0
    invoke-virtual {p0}, Lapps/babycaretimer/services/OnBootBroadcastReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lapps/babycaretimer/services/OnBootBroadcastReceiverService;->_context:Landroid/content/Context;

    .line 58
    iget-object v0, p0, Lapps/babycaretimer/services/OnBootBroadcastReceiverService;->_context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lapps/babycaretimer/services/OnBootBroadcastReceiverService;->_preferences:Landroid/content/SharedPreferences;

    .line 59
    invoke-direct {p0}, Lapps/babycaretimer/services/OnBootBroadcastReceiverService;->manageAppTimers()V

    .line 60
    return-void
.end method
