.class public Lapps/babycaretimer/AlarmActivity;
.super Landroid/app/Activity;
.source "AlarmActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapps/babycaretimer/AlarmActivity$AcquireKeyguardHandler;
    }
.end annotation


# instance fields
.field private _acquireKeyguardHandler:Lapps/babycaretimer/AlarmActivity$AcquireKeyguardHandler;

.field private _alarmHeaderTextView:Landroid/widget/TextView;

.field private _alarmMainLinearLayout:Landroid/widget/LinearLayout;

.field private _alarmTime:J

.field private _alarmType:I

.field private _appTheme:Ljava/lang/String;

.field private _baseTime:J

.field private _blinkEnabled:Z

.field private _blurScreen:Z

.field private _context:Landroid/content/Context;

.field private _debug:Z

.field private _dimScreen:Z

.field private _dimScreenAmount:Ljava/lang/String;

.field private _dismissButton:Landroid/widget/Button;

.field private _dismissNotificationFlag:Z

.field private _displayAlarmInfoTextView:Landroid/widget/TextView;

.field private _displayTimerInfoTextView:Landroid/widget/TextView;

.field private _hapticFeedbackEnabled:Z

.field private _hours:J

.field private _keyguardEnabled:Z

.field private _keyguardManager:Landroid/app/KeyguardManager;

.field private _landscapeScreenEnabled:Z

.field private _masterBlink:Z

.field private _masterChronometer:Landroid/widget/Chronometer;

.field private _minutes:J

.field private _preferences:Landroid/content/SharedPreferences;

.field private _recurringAlarm:Z

.field private _screenEnabled:Z

.field private _screenTimeoutPendingIntent:Landroid/app/PendingIntent;

.field private _secondsEnabled:Z

.field private _snoozeAmount:Ljava/lang/String;

.field private _snoozeButton:Landroid/widget/Button;

.field private _timerOffset:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    iput-boolean v2, p0, Lapps/babycaretimer/AlarmActivity;->_debug:Z

    .line 48
    iput-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_context:Landroid/content/Context;

    .line 49
    iput-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_preferences:Landroid/content/SharedPreferences;

    .line 50
    iput-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_keyguardManager:Landroid/app/KeyguardManager;

    .line 51
    iput v2, p0, Lapps/babycaretimer/AlarmActivity;->_alarmType:I

    .line 52
    iput-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_alarmMainLinearLayout:Landroid/widget/LinearLayout;

    .line 53
    iput-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_alarmHeaderTextView:Landroid/widget/TextView;

    .line 54
    iput-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_displayAlarmInfoTextView:Landroid/widget/TextView;

    .line 55
    iput-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_displayTimerInfoTextView:Landroid/widget/TextView;

    .line 56
    iput-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_snoozeButton:Landroid/widget/Button;

    .line 57
    iput-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_dismissButton:Landroid/widget/Button;

    .line 58
    iput-wide v4, p0, Lapps/babycaretimer/AlarmActivity;->_baseTime:J

    .line 59
    iput-wide v4, p0, Lapps/babycaretimer/AlarmActivity;->_alarmTime:J

    .line 60
    iput-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_masterChronometer:Landroid/widget/Chronometer;

    .line 61
    iput-wide v4, p0, Lapps/babycaretimer/AlarmActivity;->_hours:J

    .line 62
    iput-wide v4, p0, Lapps/babycaretimer/AlarmActivity;->_minutes:J

    .line 63
    iput-boolean v2, p0, Lapps/babycaretimer/AlarmActivity;->_masterBlink:Z

    .line 64
    iput-wide v4, p0, Lapps/babycaretimer/AlarmActivity;->_timerOffset:J

    .line 65
    iput-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_screenTimeoutPendingIntent:Landroid/app/PendingIntent;

    .line 68
    iput-boolean v2, p0, Lapps/babycaretimer/AlarmActivity;->_landscapeScreenEnabled:Z

    .line 69
    iput-boolean v3, p0, Lapps/babycaretimer/AlarmActivity;->_hapticFeedbackEnabled:Z

    .line 70
    const-string v0, "0"

    iput-object v0, p0, Lapps/babycaretimer/AlarmActivity;->_appTheme:Ljava/lang/String;

    .line 71
    iput-boolean v3, p0, Lapps/babycaretimer/AlarmActivity;->_secondsEnabled:Z

    .line 72
    iput-boolean v2, p0, Lapps/babycaretimer/AlarmActivity;->_blinkEnabled:Z

    .line 73
    iput-boolean v2, p0, Lapps/babycaretimer/AlarmActivity;->_blurScreen:Z

    .line 74
    iput-boolean v3, p0, Lapps/babycaretimer/AlarmActivity;->_dimScreen:Z

    .line 75
    iput-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_dimScreenAmount:Ljava/lang/String;

    .line 76
    iput-boolean v3, p0, Lapps/babycaretimer/AlarmActivity;->_screenEnabled:Z

    .line 77
    iput-boolean v3, p0, Lapps/babycaretimer/AlarmActivity;->_keyguardEnabled:Z

    .line 78
    iput-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_snoozeAmount:Ljava/lang/String;

    .line 79
    iput-boolean v2, p0, Lapps/babycaretimer/AlarmActivity;->_recurringAlarm:Z

    .line 80
    iput-boolean v2, p0, Lapps/babycaretimer/AlarmActivity;->_dismissNotificationFlag:Z

    .line 81
    iput-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_acquireKeyguardHandler:Lapps/babycaretimer/AlarmActivity$AcquireKeyguardHandler;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lapps/babycaretimer/AlarmActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lapps/babycaretimer/AlarmActivity;->_debug:Z

    return v0
.end method

.method static synthetic access$100(Lapps/babycaretimer/AlarmActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lapps/babycaretimer/AlarmActivity;->customPerformHapticFeedback(I)V

    return-void
.end method

.method static synthetic access$200(Lapps/babycaretimer/AlarmActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lapps/babycaretimer/AlarmActivity;->snoozeAlarm()V

    return-void
.end method

.method static synthetic access$300(Lapps/babycaretimer/AlarmActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lapps/babycaretimer/AlarmActivity;->dismissAlarm()V

    return-void
.end method

.method static synthetic access$400(Lapps/babycaretimer/AlarmActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lapps/babycaretimer/AlarmActivity;->_masterBlink:Z

    return v0
.end method

.method static synthetic access$402(Lapps/babycaretimer/AlarmActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lapps/babycaretimer/AlarmActivity;->_masterBlink:Z

    return p1
.end method

.method static synthetic access$500(Lapps/babycaretimer/AlarmActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lapps/babycaretimer/AlarmActivity;->updateDisplayInfoTextView()V

    return-void
.end method

.method static synthetic access$600(Lapps/babycaretimer/AlarmActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lapps/babycaretimer/AlarmActivity;->_context:Landroid/content/Context;

    return-object v0
.end method

.method private cancelScreenTimeout()V
    .locals 3

    .prologue
    .line 696
    iget-boolean v1, p0, Lapps/babycaretimer/AlarmActivity;->_debug:Z

    if-eqz v1, :cond_0

    const-string v1, "AlarmActivity.cancelScreenTimeout()"

    invoke-static {v1}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 697
    :cond_0
    iget-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_screenTimeoutPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    .line 698
    iget-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_context:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 699
    .local v0, alarmManager:Landroid/app/AlarmManager;
    iget-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_screenTimeoutPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 700
    iget-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_screenTimeoutPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 701
    const/4 v1, 0x0

    iput-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_screenTimeoutPendingIntent:Landroid/app/PendingIntent;

    .line 703
    .end local v0           #alarmManager:Landroid/app/AlarmManager;
    :cond_1
    return-void
.end method

.method private customPerformHapticFeedback(I)V
    .locals 3
    .parameter "hapticFeedbackConstant"

    .prologue
    .line 225
    iget-boolean v1, p0, Lapps/babycaretimer/AlarmActivity;->_debug:Z

    if-eqz v1, :cond_0

    const-string v1, "AlarmActivity.customPerformHapticFeedback()"

    invoke-static {v1}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 226
    :cond_0
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lapps/babycaretimer/AlarmActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 228
    .local v0, vibrator:Landroid/os/Vibrator;
    iget-boolean v1, p0, Lapps/babycaretimer/AlarmActivity;->_hapticFeedbackEnabled:Z

    if-eqz v1, :cond_2

    .line 229
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 231
    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 233
    :cond_1
    if-nez p1, :cond_2

    .line 235
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 238
    :cond_2
    return-void
.end method

.method private dismissAlarm()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 413
    iget-boolean v1, p0, Lapps/babycaretimer/AlarmActivity;->_debug:Z

    if-eqz v1, :cond_0

    const-string v1, "AlarmActivity.dismissAlarm()"

    invoke-static {v1}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 414
    :cond_0
    invoke-static {}, Lapps/babycaretimer/common/Common;->clearKeyguardLock()V

    .line 415
    iget-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 416
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget v1, p0, Lapps/babycaretimer/AlarmActivity;->_alarmType:I

    packed-switch v1, :pswitch_data_0

    .line 446
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 447
    invoke-direct {p0}, Lapps/babycaretimer/AlarmActivity;->removeNotification()V

    .line 448
    return-void

    .line 418
    :pswitch_0
    iget-boolean v1, p0, Lapps/babycaretimer/AlarmActivity;->_recurringAlarm:Z

    if-nez v1, :cond_1

    .line 419
    const-string v1, "diaper_alarm_active"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 421
    :cond_1
    const-string v1, "diaper_alarm_snooze"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 425
    :pswitch_1
    iget-boolean v1, p0, Lapps/babycaretimer/AlarmActivity;->_recurringAlarm:Z

    if-nez v1, :cond_2

    .line 426
    const-string v1, "bottle_alarm_active"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 428
    :cond_2
    const-string v1, "bottle_alarm_snooze"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 432
    :pswitch_2
    iget-boolean v1, p0, Lapps/babycaretimer/AlarmActivity;->_recurringAlarm:Z

    if-nez v1, :cond_3

    .line 433
    const-string v1, "sleep_alarm_active"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 435
    :cond_3
    const-string v1, "sleep_alarm_snooze"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 439
    :pswitch_3
    iget-boolean v1, p0, Lapps/babycaretimer/AlarmActivity;->_recurringAlarm:Z

    if-nez v1, :cond_4

    .line 440
    const-string v1, "custom_alarm_active"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 442
    :cond_4
    const-string v1, "custom_alarm_snooze"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 416
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private finishActivity()V
    .locals 1

    .prologue
    .line 710
    iget-boolean v0, p0, Lapps/babycaretimer/AlarmActivity;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "AlarmActivity.finishActivity()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 711
    :cond_0
    invoke-static {}, Lapps/babycaretimer/common/Common;->clearKeyguardLock()V

    .line 712
    invoke-static {}, Lapps/babycaretimer/common/Common;->clearWakeLock()V

    .line 713
    invoke-direct {p0}, Lapps/babycaretimer/AlarmActivity;->cancelScreenTimeout()V

    .line 715
    invoke-virtual {p0}, Lapps/babycaretimer/AlarmActivity;->finish()V

    .line 716
    return-void
.end method

.method private formatNumber(J)Ljava/lang/String;
    .locals 2
    .parameter "number"

    .prologue
    .line 459
    const-wide/16 v0, 0xa

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 462
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initTimer()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 471
    iget-boolean v8, p0, Lapps/babycaretimer/AlarmActivity;->_debug:Z

    if-eqz v8, :cond_0

    const-string v8, "AlarmActivity.initTimers()"

    invoke-static {v8}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 473
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 474
    .local v0, currentElapsedTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 475
    .local v2, currentTime:J
    iget-object v8, p0, Lapps/babycaretimer/AlarmActivity;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 476
    .local v4, editor:Landroid/content/SharedPreferences$Editor;
    iget v8, p0, Lapps/babycaretimer/AlarmActivity;->_alarmType:I

    packed-switch v8, :pswitch_data_0

    .line 585
    .end local v0           #currentElapsedTime:J
    .end local v2           #currentTime:J
    .end local v4           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    :goto_0
    return-void

    .line 478
    .restart local v0       #currentElapsedTime:J
    .restart local v2       #currentTime:J
    .restart local v4       #editor:Landroid/content/SharedPreferences$Editor;
    :pswitch_0
    iget-object v8, p0, Lapps/babycaretimer/AlarmActivity;->_context:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lapps/babycaretimer/common/Common;->isTimerActive(Landroid/content/Context;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 479
    iget-wide v8, p0, Lapps/babycaretimer/AlarmActivity;->_baseTime:J

    cmp-long v8, v0, v8

    if-gez v8, :cond_1

    .line 480
    iget-boolean v8, p0, Lapps/babycaretimer/AlarmActivity;->_debug:Z

    if-eqz v8, :cond_2

    const-string v8, "AlarmActivity.initTimers() Phone was restarted..."

    invoke-static {v8}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 481
    :cond_2
    iget-object v8, p0, Lapps/babycaretimer/AlarmActivity;->_context:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lapps/babycaretimer/common/Common;->getTimerStartTime(Landroid/content/Context;I)J

    move-result-wide v6

    .line 482
    .local v6, timerStartTime:J
    cmp-long v8, v6, v10

    if-nez v8, :cond_3

    .line 483
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lapps/babycaretimer/AlarmActivity;->_baseTime:J

    .line 484
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lapps/babycaretimer/AlarmActivity;->_timerOffset:J

    .line 485
    const-string v8, "diaper_base_time"

    iget-wide v9, p0, Lapps/babycaretimer/AlarmActivity;->_baseTime:J

    invoke-interface {v4, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 486
    const-string v8, "diaper_timer_offset"

    iget-wide v9, p0, Lapps/babycaretimer/AlarmActivity;->_timerOffset:J

    invoke-interface {v4, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 487
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 582
    .end local v0           #currentElapsedTime:J
    .end local v2           #currentTime:J
    .end local v4           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v6           #timerStartTime:J
    :catch_0
    move-exception v5

    .line 583
    .local v5, ex:Ljava/lang/Exception;
    iget-boolean v8, p0, Lapps/babycaretimer/AlarmActivity;->_debug:Z

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AlarmActivity.initTimer() ERROR: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 490
    .end local v5           #ex:Ljava/lang/Exception;
    .restart local v0       #currentElapsedTime:J
    .restart local v2       #currentTime:J
    .restart local v4       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v6       #timerStartTime:J
    :cond_3
    const-wide/16 v8, 0x0

    :try_start_1
    iput-wide v8, p0, Lapps/babycaretimer/AlarmActivity;->_baseTime:J

    .line 491
    sub-long v8, v2, v6

    iput-wide v8, p0, Lapps/babycaretimer/AlarmActivity;->_timerOffset:J

    .line 492
    const-string v8, "diaper_base_time"

    iget-wide v9, p0, Lapps/babycaretimer/AlarmActivity;->_baseTime:J

    invoke-interface {v4, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 493
    const-string v8, "diaper_timer_offset"

    iget-wide v9, p0, Lapps/babycaretimer/AlarmActivity;->_timerOffset:J

    invoke-interface {v4, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 494
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 497
    .end local v6           #timerStartTime:J
    :cond_4
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lapps/babycaretimer/AlarmActivity;->_timerOffset:J

    .line 498
    const-string v8, "diaper_timer_offset"

    iget-wide v9, p0, Lapps/babycaretimer/AlarmActivity;->_timerOffset:J

    invoke-interface {v4, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 499
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 504
    :pswitch_1
    iget-object v8, p0, Lapps/babycaretimer/AlarmActivity;->_context:Landroid/content/Context;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lapps/babycaretimer/common/Common;->isTimerActive(Landroid/content/Context;I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 505
    iget-wide v8, p0, Lapps/babycaretimer/AlarmActivity;->_baseTime:J

    cmp-long v8, v0, v8

    if-gez v8, :cond_7

    .line 506
    iget-boolean v8, p0, Lapps/babycaretimer/AlarmActivity;->_debug:Z

    if-eqz v8, :cond_5

    const-string v8, "AlarmActivity.initTimers() Phone was restarted..."

    invoke-static {v8}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 507
    :cond_5
    iget-object v8, p0, Lapps/babycaretimer/AlarmActivity;->_context:Landroid/content/Context;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lapps/babycaretimer/common/Common;->getTimerStartTime(Landroid/content/Context;I)J

    move-result-wide v6

    .line 508
    .restart local v6       #timerStartTime:J
    cmp-long v8, v6, v10

    if-nez v8, :cond_6

    .line 509
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lapps/babycaretimer/AlarmActivity;->_baseTime:J

    .line 510
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lapps/babycaretimer/AlarmActivity;->_timerOffset:J

    .line 511
    const-string v8, "bottle_base_time"

    iget-wide v9, p0, Lapps/babycaretimer/AlarmActivity;->_baseTime:J

    invoke-interface {v4, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 512
    const-string v8, "bottle_timer_offset"

    iget-wide v9, p0, Lapps/babycaretimer/AlarmActivity;->_timerOffset:J

    invoke-interface {v4, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 513
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 516
    :cond_6
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lapps/babycaretimer/AlarmActivity;->_baseTime:J

    .line 517
    sub-long v8, v2, v6

    iput-wide v8, p0, Lapps/babycaretimer/AlarmActivity;->_timerOffset:J

    .line 518
    const-string v8, "bottle_base_time"

    iget-wide v9, p0, Lapps/babycaretimer/AlarmActivity;->_baseTime:J

    invoke-interface {v4, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 519
    const-string v8, "bottle_timer_offset"

    iget-wide v9, p0, Lapps/babycaretimer/AlarmActivity;->_timerOffset:J

    invoke-interface {v4, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 520
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 522
    .end local v6           #timerStartTime:J
    :cond_7
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lapps/babycaretimer/AlarmActivity;->_timerOffset:J

    .line 523
    const-string v8, "bottle_timer_offset"

    iget-wide v9, p0, Lapps/babycaretimer/AlarmActivity;->_timerOffset:J

    invoke-interface {v4, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 524
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 530
    :pswitch_2
    iget-object v8, p0, Lapps/babycaretimer/AlarmActivity;->_context:Landroid/content/Context;

    const/4 v9, 0x2

    invoke-static {v8, v9}, Lapps/babycaretimer/common/Common;->isTimerActive(Landroid/content/Context;I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 531
    iget-wide v8, p0, Lapps/babycaretimer/AlarmActivity;->_baseTime:J

    cmp-long v8, v0, v8

    if-gez v8, :cond_a

    .line 532
    iget-boolean v8, p0, Lapps/babycaretimer/AlarmActivity;->_debug:Z

    if-eqz v8, :cond_8

    const-string v8, "AlarmActivity.initTimers() Phone was restarted..."

    invoke-static {v8}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 533
    :cond_8
    iget-object v8, p0, Lapps/babycaretimer/AlarmActivity;->_context:Landroid/content/Context;

    const/4 v9, 0x2

    invoke-static {v8, v9}, Lapps/babycaretimer/common/Common;->getTimerStartTime(Landroid/content/Context;I)J

    move-result-wide v6

    .line 534
    .restart local v6       #timerStartTime:J
    cmp-long v8, v6, v10

    if-nez v8, :cond_9

    .line 535
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lapps/babycaretimer/AlarmActivity;->_baseTime:J

    .line 536
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lapps/babycaretimer/AlarmActivity;->_timerOffset:J

    .line 537
    const-string v8, "sleep_base_time"

    iget-wide v9, p0, Lapps/babycaretimer/AlarmActivity;->_baseTime:J

    invoke-interface {v4, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 538
    const-string v8, "sleep_timer_offset"

    iget-wide v9, p0, Lapps/babycaretimer/AlarmActivity;->_timerOffset:J

    invoke-interface {v4, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 539
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 542
    :cond_9
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lapps/babycaretimer/AlarmActivity;->_baseTime:J

    .line 543
    sub-long v8, v2, v6

    iput-wide v8, p0, Lapps/babycaretimer/AlarmActivity;->_timerOffset:J

    .line 544
    const-string v8, "sleep_base_time"

    iget-wide v9, p0, Lapps/babycaretimer/AlarmActivity;->_baseTime:J

    invoke-interface {v4, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 545
    const-string v8, "sleep_timer_offset"

    iget-wide v9, p0, Lapps/babycaretimer/AlarmActivity;->_timerOffset:J

    invoke-interface {v4, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 546
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 548
    .end local v6           #timerStartTime:J
    :cond_a
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lapps/babycaretimer/AlarmActivity;->_timerOffset:J

    .line 549
    const-string v8, "bottle_timer_offset"

    iget-wide v9, p0, Lapps/babycaretimer/AlarmActivity;->_timerOffset:J

    invoke-interface {v4, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 550
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 556
    :pswitch_3
    iget-object v8, p0, Lapps/babycaretimer/AlarmActivity;->_context:Landroid/content/Context;

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lapps/babycaretimer/common/Common;->isTimerActive(Landroid/content/Context;I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 557
    iget-wide v8, p0, Lapps/babycaretimer/AlarmActivity;->_baseTime:J

    cmp-long v8, v0, v8

    if-gez v8, :cond_d

    .line 558
    iget-boolean v8, p0, Lapps/babycaretimer/AlarmActivity;->_debug:Z

    if-eqz v8, :cond_b

    const-string v8, "AlarmActivity.initTimers() Phone was restarted..."

    invoke-static {v8}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 559
    :cond_b
    iget-object v8, p0, Lapps/babycaretimer/AlarmActivity;->_context:Landroid/content/Context;

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lapps/babycaretimer/common/Common;->getTimerStartTime(Landroid/content/Context;I)J

    move-result-wide v6

    .line 560
    .restart local v6       #timerStartTime:J
    cmp-long v8, v6, v10

    if-nez v8, :cond_c

    .line 561
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lapps/babycaretimer/AlarmActivity;->_baseTime:J

    .line 562
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lapps/babycaretimer/AlarmActivity;->_timerOffset:J

    .line 563
    const-string v8, "custom_base_time"

    iget-wide v9, p0, Lapps/babycaretimer/AlarmActivity;->_baseTime:J

    invoke-interface {v4, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 564
    const-string v8, "custom_timer_offset"

    iget-wide v9, p0, Lapps/babycaretimer/AlarmActivity;->_timerOffset:J

    invoke-interface {v4, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 565
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 568
    :cond_c
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lapps/babycaretimer/AlarmActivity;->_baseTime:J

    .line 569
    sub-long v8, v2, v6

    iput-wide v8, p0, Lapps/babycaretimer/AlarmActivity;->_timerOffset:J

    .line 570
    const-string v8, "custom_base_time"

    const-wide/16 v9, 0x0

    invoke-interface {v4, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 571
    const-string v8, "custom_timer_offset"

    iget-wide v9, p0, Lapps/babycaretimer/AlarmActivity;->_timerOffset:J

    invoke-interface {v4, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 572
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 574
    .end local v6           #timerStartTime:J
    :cond_d
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lapps/babycaretimer/AlarmActivity;->_timerOffset:J

    .line 575
    const-string v8, "bottle_timer_offset"

    iget-wide v9, p0, Lapps/babycaretimer/AlarmActivity;->_timerOffset:J

    invoke-interface {v4, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 576
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 476
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private loadUserPreferences()V
    .locals 4

    .prologue
    .line 591
    iget-boolean v1, p0, Lapps/babycaretimer/AlarmActivity;->_debug:Z

    if-eqz v1, :cond_0

    const-string v1, "AlarmActivity.loadUserPreferences()"

    invoke-static {v1}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 593
    :cond_0
    :try_start_0
    iget-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_preferences:Landroid/content/SharedPreferences;

    .line 594
    iget-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "landscape_screen_enabled"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lapps/babycaretimer/AlarmActivity;->_landscapeScreenEnabled:Z

    .line 595
    iget-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "haptic_feedback_enabled"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lapps/babycaretimer/AlarmActivity;->_hapticFeedbackEnabled:Z

    .line 596
    iget-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "app_theme"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_appTheme:Ljava/lang/String;

    .line 597
    iget-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "display_seconds_enabled"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lapps/babycaretimer/AlarmActivity;->_secondsEnabled:Z

    .line 598
    iget-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "blink_colon_enabled"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lapps/babycaretimer/AlarmActivity;->_blinkEnabled:Z

    .line 599
    iget-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "snooze_amount"

    const-string v3, "10"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_snoozeAmount:Ljava/lang/String;

    .line 600
    iget-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "blur_screen_background_enabled"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lapps/babycaretimer/AlarmActivity;->_blurScreen:Z

    .line 601
    iget-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "dim_screen_background_enabled"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lapps/babycaretimer/AlarmActivity;->_dimScreen:Z

    .line 602
    iget-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "dim_screen_background_amount"

    const-string v3, "50"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_dimScreenAmount:Ljava/lang/String;

    .line 603
    iget-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "screen_enabled"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lapps/babycaretimer/AlarmActivity;->_screenEnabled:Z

    .line 604
    iget-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "keyguard_enabled"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lapps/babycaretimer/AlarmActivity;->_keyguardEnabled:Z

    .line 605
    iget-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_context:Landroid/content/Context;

    iget v2, p0, Lapps/babycaretimer/AlarmActivity;->_alarmType:I

    invoke-static {v1, v2}, Lapps/babycaretimer/common/Common;->getBaseTime(Landroid/content/Context;I)J

    move-result-wide v1

    iput-wide v1, p0, Lapps/babycaretimer/AlarmActivity;->_baseTime:J

    .line 606
    iget-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_context:Landroid/content/Context;

    iget v2, p0, Lapps/babycaretimer/AlarmActivity;->_alarmType:I

    invoke-static {v1, v2}, Lapps/babycaretimer/common/Common;->getTimerOffset(Landroid/content/Context;I)J

    move-result-wide v1

    iput-wide v1, p0, Lapps/babycaretimer/AlarmActivity;->_timerOffset:J

    .line 607
    iget-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_context:Landroid/content/Context;

    iget v2, p0, Lapps/babycaretimer/AlarmActivity;->_alarmType:I

    invoke-static {v1, v2}, Lapps/babycaretimer/common/Common;->isAlarmRecurring(Landroid/content/Context;I)Z

    move-result v1

    iput-boolean v1, p0, Lapps/babycaretimer/AlarmActivity;->_recurringAlarm:Z

    .line 609
    iget-boolean v1, p0, Lapps/babycaretimer/AlarmActivity;->_screenEnabled:Z

    if-nez v1, :cond_1

    .line 610
    const/4 v1, 0x0

    iput-boolean v1, p0, Lapps/babycaretimer/AlarmActivity;->_keyguardEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    :cond_1
    :goto_0
    return-void

    .line 612
    :catch_0
    move-exception v0

    .line 613
    .local v0, ex:Ljava/lang/Exception;
    iget-boolean v1, p0, Lapps/babycaretimer/AlarmActivity;->_debug:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmActivity.loadUserPreferences() ERROR: "

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

.method private parseAlarmTime()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xe10

    .line 244
    iget-boolean v2, p0, Lapps/babycaretimer/AlarmActivity;->_debug:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AlarmActivity.parseAlarmTime() _alarmTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lapps/babycaretimer/AlarmActivity;->_alarmTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 245
    :cond_0
    iget-wide v2, p0, Lapps/babycaretimer/AlarmActivity;->_alarmTime:J

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    .line 246
    .local v0, timeValue:J
    div-long v2, v0, v6

    iput-wide v2, p0, Lapps/babycaretimer/AlarmActivity;->_hours:J

    .line 247
    iget-wide v2, p0, Lapps/babycaretimer/AlarmActivity;->_hours:J

    mul-long/2addr v2, v6

    sub-long/2addr v0, v2

    .line 248
    const-wide/16 v2, 0x3c

    div-long v2, v0, v2

    iput-wide v2, p0, Lapps/babycaretimer/AlarmActivity;->_minutes:J

    .line 249
    return-void
.end method

.method private removeNotification()V
    .locals 7

    .prologue
    .line 621
    iget-boolean v5, p0, Lapps/babycaretimer/AlarmActivity;->_debug:Z

    if-eqz v5, :cond_0

    const-string v5, "AlarmActivity.removeNotification()"

    invoke-static {v5}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 623
    :cond_0
    iget-boolean v5, p0, Lapps/babycaretimer/AlarmActivity;->_dismissNotificationFlag:Z

    if-eqz v5, :cond_2

    .line 646
    :cond_1
    :goto_0
    return-void

    .line 628
    :cond_2
    :try_start_0
    iget-object v5, p0, Lapps/babycaretimer/AlarmActivity;->_context:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 629
    .local v4, preferences:Landroid/content/SharedPreferences;
    const-string v5, "alarm_notification_count"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 630
    .local v0, alarmCount:I
    if-lez v0, :cond_4

    .line 631
    add-int/lit8 v0, v0, -0x1

    .line 635
    :goto_1
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 636
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "alarm_notification_count"

    invoke-interface {v1, v5, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 637
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 638
    if-nez v0, :cond_3

    .line 639
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Lapps/babycaretimer/AlarmActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 640
    .local v3, notificationManager:Landroid/app/NotificationManager;
    invoke-virtual {v3}, Landroid/app/NotificationManager;->cancelAll()V

    .line 642
    .end local v3           #notificationManager:Landroid/app/NotificationManager;
    :cond_3
    const/4 v5, 0x1

    iput-boolean v5, p0, Lapps/babycaretimer/AlarmActivity;->_dismissNotificationFlag:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 643
    .end local v0           #alarmCount:I
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v4           #preferences:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v2

    .line 644
    .local v2, ex:Ljava/lang/Exception;
    iget-boolean v5, p0, Lapps/babycaretimer/AlarmActivity;->_debug:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AlarmActivity.removeNotification() ERROR: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 633
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v0       #alarmCount:I
    .restart local v4       #preferences:Landroid/content/SharedPreferences;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setupButtons()V
    .locals 2

    .prologue
    .line 289
    iget-boolean v0, p0, Lapps/babycaretimer/AlarmActivity;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "AlarmActivity.setupButtons()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 290
    :cond_0
    const v0, 0x7f0b0006

    invoke-virtual {p0, v0}, Lapps/babycaretimer/AlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lapps/babycaretimer/AlarmActivity;->_snoozeButton:Landroid/widget/Button;

    .line 291
    iget-object v0, p0, Lapps/babycaretimer/AlarmActivity;->_snoozeButton:Landroid/widget/Button;

    new-instance v1, Lapps/babycaretimer/AlarmActivity$1;

    invoke-direct {v1, p0}, Lapps/babycaretimer/AlarmActivity$1;-><init>(Lapps/babycaretimer/AlarmActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    const v0, 0x7f0b0007

    invoke-virtual {p0, v0}, Lapps/babycaretimer/AlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lapps/babycaretimer/AlarmActivity;->_dismissButton:Landroid/widget/Button;

    .line 300
    iget-object v0, p0, Lapps/babycaretimer/AlarmActivity;->_dismissButton:Landroid/widget/Button;

    new-instance v1, Lapps/babycaretimer/AlarmActivity$2;

    invoke-direct {v1, p0}, Lapps/babycaretimer/AlarmActivity$2;-><init>(Lapps/babycaretimer/AlarmActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    return-void
.end method

.method private setupChronometer()V
    .locals 3

    .prologue
    .line 314
    iget-boolean v0, p0, Lapps/babycaretimer/AlarmActivity;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "AlarmActivity.setupChronometers()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 315
    :cond_0
    const v0, 0x7f0b0001

    invoke-virtual {p0, v0}, Lapps/babycaretimer/AlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lapps/babycaretimer/AlarmActivity;->_masterChronometer:Landroid/widget/Chronometer;

    .line 316
    iget-object v0, p0, Lapps/babycaretimer/AlarmActivity;->_masterChronometer:Landroid/widget/Chronometer;

    new-instance v1, Lapps/babycaretimer/AlarmActivity$3;

    invoke-direct {v1, p0}, Lapps/babycaretimer/AlarmActivity$3;-><init>(Lapps/babycaretimer/AlarmActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    .line 327
    iget-object v0, p0, Lapps/babycaretimer/AlarmActivity;->_masterChronometer:Landroid/widget/Chronometer;

    iget-wide v1, p0, Lapps/babycaretimer/AlarmActivity;->_baseTime:J

    invoke-virtual {v0, v1, v2}, Landroid/widget/Chronometer;->setBase(J)V

    .line 328
    iget-object v0, p0, Lapps/babycaretimer/AlarmActivity;->_masterChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    .line 329
    return-void
.end method

.method private setupViews()V
    .locals 5

    .prologue
    const v4, 0x7f02000f

    const/4 v3, 0x0

    .line 255
    iget-boolean v1, p0, Lapps/babycaretimer/AlarmActivity;->_debug:Z

    if-eqz v1, :cond_0

    const-string v1, "AlarmActivity.setupViews()"

    invoke-static {v1}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 256
    :cond_0
    const/high16 v1, 0x7f0b

    invoke-virtual {p0, v1}, Lapps/babycaretimer/AlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_alarmMainLinearLayout:Landroid/widget/LinearLayout;

    .line 257
    const v1, 0x7f0b0002

    invoke-virtual {p0, v1}, Lapps/babycaretimer/AlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_alarmHeaderTextView:Landroid/widget/TextView;

    .line 258
    const v1, 0x7f0b0003

    invoke-virtual {p0, v1}, Lapps/babycaretimer/AlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_displayAlarmInfoTextView:Landroid/widget/TextView;

    .line 259
    const v1, 0x7f0b0004

    invoke-virtual {p0, v1}, Lapps/babycaretimer/AlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_displayTimerInfoTextView:Landroid/widget/TextView;

    .line 260
    iget v1, p0, Lapps/babycaretimer/AlarmActivity;->_alarmType:I

    packed-switch v1, :pswitch_data_0

    .line 279
    :goto_0
    iget-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_keyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    iget-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_context:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    .line 281
    .local v0, wallpaperManager:Landroid/app/WallpaperManager;
    iget-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_alarmMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 283
    .end local v0           #wallpaperManager:Landroid/app/WallpaperManager;
    :cond_1
    return-void

    .line 262
    :pswitch_0
    iget-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_alarmHeaderTextView:Landroid/widget/TextView;

    const v2, 0x7f020016

    invoke-virtual {v1, v4, v3, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 266
    :pswitch_1
    iget-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_alarmHeaderTextView:Landroid/widget/TextView;

    const v2, 0x7f020014

    invoke-virtual {v1, v4, v3, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 270
    :pswitch_2
    iget-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_alarmHeaderTextView:Landroid/widget/TextView;

    const v2, 0x7f02001e

    invoke-virtual {v1, v4, v3, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 274
    :pswitch_3
    iget-object v1, p0, Lapps/babycaretimer/AlarmActivity;->_alarmHeaderTextView:Landroid/widget/TextView;

    const v2, 0x7f02001f

    invoke-virtual {v1, v4, v3, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private snoozeAlarm()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 372
    iget-boolean v7, p0, Lapps/babycaretimer/AlarmActivity;->_debug:Z

    if-eqz v7, :cond_0

    const-string v7, "AlarmActivity.snoozeAlarm()"

    invoke-static {v7}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 373
    :cond_0
    invoke-static {}, Lapps/babycaretimer/common/Common;->clearKeyguardLock()V

    .line 374
    iget-object v7, p0, Lapps/babycaretimer/AlarmActivity;->_snoozeAmount:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v9, 0x3c

    mul-long/2addr v7, v9

    const-wide/16 v9, 0x3e8

    mul-long v5, v7, v9

    .line 375
    .local v5, snoozeInMiliSeconds:J
    iget-object v7, p0, Lapps/babycaretimer/AlarmActivity;->_context:Landroid/content/Context;

    const-string v8, "alarm"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 376
    .local v1, alarmManager:Landroid/app/AlarmManager;
    new-instance v0, Landroid/content/Intent;

    iget-object v7, p0, Lapps/babycaretimer/AlarmActivity;->_context:Landroid/content/Context;

    const-class v8, Lapps/babycaretimer/receivers/AlarmReceiver;

    invoke-direct {v0, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 377
    .local v0, alarmIntent:Landroid/content/Intent;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 378
    .local v2, bundle:Landroid/os/Bundle;
    const-string v7, "alarm_type"

    iget v8, p0, Lapps/babycaretimer/AlarmActivity;->_alarmType:I

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 379
    const-string v7, "alarm_snooze"

    invoke-virtual {v2, v7, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 380
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 381
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "apps.babycaretimer.action."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lapps/babycaretimer/AlarmActivity;->_alarmType:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    const/high16 v7, 0x1080

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 383
    iget-object v7, p0, Lapps/babycaretimer/AlarmActivity;->_context:Landroid/content/Context;

    invoke-static {v7, v13, v0, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 384
    .local v4, pendingIntent:Landroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    add-long/2addr v7, v5

    invoke-virtual {v1, v13, v7, v8, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 385
    iget-object v7, p0, Lapps/babycaretimer/AlarmActivity;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 386
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    iget v7, p0, Lapps/babycaretimer/AlarmActivity;->_alarmType:I

    packed-switch v7, :pswitch_data_0

    .line 404
    :goto_0
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 405
    invoke-direct {p0}, Lapps/babycaretimer/AlarmActivity;->removeNotification()V

    .line 406
    iget-object v7, p0, Lapps/babycaretimer/AlarmActivity;->_context:Landroid/content/Context;

    iget-object v8, p0, Lapps/babycaretimer/AlarmActivity;->_context:Landroid/content/Context;

    const v9, 0x7f080027

    new-array v10, v12, [Ljava/lang/Object;

    iget-object v11, p0, Lapps/babycaretimer/AlarmActivity;->_snoozeAmount:Ljava/lang/String;

    aput-object v11, v10, v13

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 407
    return-void

    .line 388
    :pswitch_0
    const-string v7, "diaper_alarm_snooze"

    invoke-interface {v3, v7, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 392
    :pswitch_1
    const-string v7, "bottle_alarm_snooze"

    invoke-interface {v3, v7, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 396
    :pswitch_2
    const-string v7, "sleep_alarm_snooze"

    invoke-interface {v3, v7, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 400
    :pswitch_3
    const-string v7, "custom_alarm_snooze"

    invoke-interface {v3, v7, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 386
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateDisplayInfoTextView()V
    .locals 15

    .prologue
    .line 336
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iget-wide v13, p0, Lapps/babycaretimer/AlarmActivity;->_timerOffset:J

    add-long/2addr v11, v13

    iget-wide v13, p0, Lapps/babycaretimer/AlarmActivity;->_baseTime:J

    sub-long/2addr v11, v13

    const-wide/16 v13, 0x3e8

    div-long v9, v11, v13

    .line 337
    .local v9, timeValue:J
    const-wide/16 v11, 0xe10

    div-long v1, v9, v11

    .line 338
    .local v1, hoursValue:J
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, hours:Ljava/lang/String;
    const-wide/16 v11, 0xe10

    div-long v11, v9, v11

    const-wide/16 v13, 0xe10

    mul-long/2addr v11, v13

    sub-long/2addr v9, v11

    .line 340
    const-wide/16 v11, 0x3c

    div-long v4, v9, v11

    .line 341
    .local v4, minutesValue:J
    const-string v3, "00"

    .line 342
    .local v3, minutes:Ljava/lang/String;
    const-wide/16 v11, 0xa

    cmp-long v11, v4, v11

    if-gez v11, :cond_0

    .line 343
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 347
    :goto_0
    const-wide/16 v11, 0x3c

    rem-long v7, v9, v11

    .line 348
    .local v7, secondsValue:J
    const-string v6, "00"

    .line 349
    .local v6, seconds:Ljava/lang/String;
    const-wide/16 v11, 0xa

    cmp-long v11, v7, v11

    if-gez v11, :cond_1

    .line 350
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 354
    :goto_1
    iget-object v11, p0, Lapps/babycaretimer/AlarmActivity;->_displayAlarmInfoTextView:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v13, p0, Lapps/babycaretimer/AlarmActivity;->_hours:J

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v13, p0, Lapps/babycaretimer/AlarmActivity;->_minutes:J

    invoke-direct {p0, v13, v14}, Lapps/babycaretimer/AlarmActivity;->formatNumber(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-boolean v11, p0, Lapps/babycaretimer/AlarmActivity;->_secondsEnabled:Z

    if-eqz v11, :cond_2

    .line 356
    iget-object v11, p0, Lapps/babycaretimer/AlarmActivity;->_displayTimerInfoTextView:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    :goto_2
    return-void

    .line 345
    .end local v6           #seconds:Ljava/lang/String;
    .end local v7           #secondsValue:J
    :cond_0
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 352
    .restart local v6       #seconds:Ljava/lang/String;
    .restart local v7       #secondsValue:J
    :cond_1
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 357
    :cond_2
    iget-boolean v11, p0, Lapps/babycaretimer/AlarmActivity;->_blinkEnabled:Z

    if-eqz v11, :cond_4

    .line 358
    iget-boolean v11, p0, Lapps/babycaretimer/AlarmActivity;->_masterBlink:Z

    if-eqz v11, :cond_3

    .line 359
    iget-object v11, p0, Lapps/babycaretimer/AlarmActivity;->_displayTimerInfoTextView:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 361
    :cond_3
    iget-object v11, p0, Lapps/babycaretimer/AlarmActivity;->_displayTimerInfoTextView:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 364
    :cond_4
    iget-object v11, p0, Lapps/babycaretimer/AlarmActivity;->_displayTimerInfoTextView:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "bundle"

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-static {}, Lapps/babycaretimer/log/Log;->getDebug()Z

    move-result v5

    iput-boolean v5, p0, Lapps/babycaretimer/AlarmActivity;->_debug:Z

    .line 94
    iget-boolean v5, p0, Lapps/babycaretimer/AlarmActivity;->_debug:Z

    if-eqz v5, :cond_0

    const-string v5, "AlarmActivity.onCreate()"

    invoke-static {v5}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 95
    :cond_0
    invoke-virtual {p0}, Lapps/babycaretimer/AlarmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lapps/babycaretimer/AlarmActivity;->_context:Landroid/content/Context;

    .line 96
    const-string v5, "keyguard"

    invoke-virtual {p0, v5}, Lapps/babycaretimer/AlarmActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/KeyguardManager;

    iput-object v5, p0, Lapps/babycaretimer/AlarmActivity;->_keyguardManager:Landroid/app/KeyguardManager;

    .line 97
    new-instance v5, Lapps/babycaretimer/AlarmActivity$AcquireKeyguardHandler;

    invoke-direct {v5, p0}, Lapps/babycaretimer/AlarmActivity$AcquireKeyguardHandler;-><init>(Lapps/babycaretimer/AlarmActivity;)V

    iput-object v5, p0, Lapps/babycaretimer/AlarmActivity;->_acquireKeyguardHandler:Lapps/babycaretimer/AlarmActivity$AcquireKeyguardHandler;

    .line 98
    invoke-virtual {p0}, Lapps/babycaretimer/AlarmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 99
    .local v1, extrasBundle:Landroid/os/Bundle;
    const-string v5, "alarm_type"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lapps/babycaretimer/AlarmActivity;->_alarmType:I

    .line 100
    iget-object v5, p0, Lapps/babycaretimer/AlarmActivity;->_context:Landroid/content/Context;

    iget v6, p0, Lapps/babycaretimer/AlarmActivity;->_alarmType:I

    invoke-static {v5, v6}, Lapps/babycaretimer/common/Common;->getAlarmTime(Landroid/content/Context;I)J

    move-result-wide v5

    iput-wide v5, p0, Lapps/babycaretimer/AlarmActivity;->_alarmTime:J

    .line 101
    invoke-direct {p0}, Lapps/babycaretimer/AlarmActivity;->loadUserPreferences()V

    .line 102
    iget-object v5, p0, Lapps/babycaretimer/AlarmActivity;->_context:Landroid/content/Context;

    invoke-static {v5}, Lapps/babycaretimer/common/Common;->acquireWakeLock(Landroid/content/Context;)V

    .line 103
    invoke-direct {p0}, Lapps/babycaretimer/AlarmActivity;->parseAlarmTime()V

    .line 104
    invoke-direct {p0}, Lapps/babycaretimer/AlarmActivity;->initTimer()V

    .line 106
    iget-boolean v5, p0, Lapps/babycaretimer/AlarmActivity;->_landscapeScreenEnabled:Z

    if-nez v5, :cond_1

    .line 107
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lapps/babycaretimer/AlarmActivity;->setRequestedOrientation(I)V

    .line 110
    :cond_1
    invoke-virtual {p0}, Lapps/babycaretimer/AlarmActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 112
    .local v3, mainWindow:Landroid/view/Window;
    iget-boolean v5, p0, Lapps/babycaretimer/AlarmActivity;->_screenEnabled:Z

    if-eqz v5, :cond_4

    .line 113
    const/16 v5, 0x80

    invoke-virtual {v3, v5}, Landroid/view/Window;->addFlags(I)V

    .line 115
    iget-boolean v5, p0, Lapps/babycaretimer/AlarmActivity;->_keyguardEnabled:Z

    if-eqz v5, :cond_2

    .line 116
    const/high16 v5, 0x48

    invoke-virtual {v3, v5}, Landroid/view/Window;->addFlags(I)V

    .line 120
    :cond_2
    iget-boolean v5, p0, Lapps/babycaretimer/AlarmActivity;->_blurScreen:Z

    if-eqz v5, :cond_3

    .line 121
    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/view/Window;->addFlags(I)V

    .line 124
    :cond_3
    iget-boolean v5, p0, Lapps/babycaretimer/AlarmActivity;->_dimScreen:Z

    if-eqz v5, :cond_4

    .line 125
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/view/Window;->addFlags(I)V

    .line 126
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 127
    .local v4, params:Landroid/view/WindowManager$LayoutParams;
    iget-object v5, p0, Lapps/babycaretimer/AlarmActivity;->_dimScreenAmount:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 128
    .local v0, dimAmt:I
    int-to-float v5, v0

    const/high16 v6, 0x42c8

    div-float/2addr v5, v6

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 129
    invoke-virtual {v3, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 132
    .end local v0           #dimAmt:I
    .end local v4           #params:Landroid/view/WindowManager$LayoutParams;
    :cond_4
    iget-object v5, p0, Lapps/babycaretimer/AlarmActivity;->_keyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    .line 133
    .local v2, inKeyguardMode:Z
    if-eqz v2, :cond_7

    iget-boolean v5, p0, Lapps/babycaretimer/AlarmActivity;->_screenEnabled:Z

    if-eqz v5, :cond_7

    .line 134
    const v5, 0x1030005

    invoke-super {p0, v5}, Landroid/app/Activity;->setTheme(I)V

    .line 135
    iget-object v5, p0, Lapps/babycaretimer/AlarmActivity;->_appTheme:Ljava/lang/String;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 136
    const v5, 0x7f030002

    invoke-virtual {p0, v5}, Lapps/babycaretimer/AlarmActivity;->setContentView(I)V

    .line 147
    :goto_0
    invoke-direct {p0}, Lapps/babycaretimer/AlarmActivity;->setupViews()V

    .line 148
    invoke-direct {p0}, Lapps/babycaretimer/AlarmActivity;->setupButtons()V

    .line 149
    invoke-direct {p0}, Lapps/babycaretimer/AlarmActivity;->setupChronometer()V

    .line 150
    if-eqz v2, :cond_5

    .line 151
    iget-object v5, p0, Lapps/babycaretimer/AlarmActivity;->_acquireKeyguardHandler:Lapps/babycaretimer/AlarmActivity$AcquireKeyguardHandler;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v6, v7}, Lapps/babycaretimer/AlarmActivity$AcquireKeyguardHandler;->sleep(J)V

    .line 153
    :cond_5
    invoke-virtual {p0}, Lapps/babycaretimer/AlarmActivity;->setScreenTimeoutAlarm()V

    .line 154
    return-void

    .line 138
    :cond_6
    const v5, 0x7f030003

    invoke-virtual {p0, v5}, Lapps/babycaretimer/AlarmActivity;->setContentView(I)V

    goto :goto_0

    .line 141
    :cond_7
    iget-object v5, p0, Lapps/babycaretimer/AlarmActivity;->_appTheme:Ljava/lang/String;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 142
    const/high16 v5, 0x7f03

    invoke-virtual {p0, v5}, Lapps/babycaretimer/AlarmActivity;->setContentView(I)V

    goto :goto_0

    .line 144
    :cond_8
    const v5, 0x7f030001

    invoke-virtual {p0, v5}, Lapps/babycaretimer/AlarmActivity;->setContentView(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lapps/babycaretimer/AlarmActivity;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "AlarmActivity.onDestroy()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 210
    :cond_0
    invoke-static {}, Lapps/babycaretimer/common/Common;->clearWakeLock()V

    .line 211
    invoke-direct {p0}, Lapps/babycaretimer/AlarmActivity;->cancelScreenTimeout()V

    .line 212
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 213
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lapps/babycaretimer/AlarmActivity;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "AlarmActivity.onPause()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 189
    :cond_0
    invoke-direct {p0}, Lapps/babycaretimer/AlarmActivity;->cancelScreenTimeout()V

    .line 190
    invoke-static {}, Lapps/babycaretimer/common/Common;->clearWakeLock()V

    .line 191
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 192
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 175
    invoke-static {}, Lapps/babycaretimer/log/Log;->getDebug()Z

    move-result v0

    iput-boolean v0, p0, Lapps/babycaretimer/AlarmActivity;->_debug:Z

    .line 176
    iget-boolean v0, p0, Lapps/babycaretimer/AlarmActivity;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "AlarmActivity.onResume()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 177
    :cond_0
    invoke-direct {p0}, Lapps/babycaretimer/AlarmActivity;->loadUserPreferences()V

    .line 178
    iget-object v0, p0, Lapps/babycaretimer/AlarmActivity;->_context:Landroid/content/Context;

    invoke-static {v0}, Lapps/babycaretimer/common/Common;->acquireWakeLock(Landroid/content/Context;)V

    .line 179
    invoke-virtual {p0}, Lapps/babycaretimer/AlarmActivity;->setScreenTimeoutAlarm()V

    .line 180
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 181
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 166
    invoke-static {}, Lapps/babycaretimer/log/Log;->getDebug()Z

    move-result v0

    iput-boolean v0, p0, Lapps/babycaretimer/AlarmActivity;->_debug:Z

    .line 167
    iget-boolean v0, p0, Lapps/babycaretimer/AlarmActivity;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "AlarmActivity.onStart()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 168
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 199
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 200
    iget-boolean v0, p0, Lapps/babycaretimer/AlarmActivity;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "AlarmActivity.onStop()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 201
    :cond_0
    invoke-direct {p0}, Lapps/babycaretimer/AlarmActivity;->finishActivity()V

    .line 202
    return-void
.end method

.method public setScreenTimeoutAlarm()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 683
    iget-boolean v4, p0, Lapps/babycaretimer/AlarmActivity;->_debug:Z

    if-eqz v4, :cond_0

    const-string v4, "AlarmActivity.setScreenTimeoutAlarm()"

    invoke-static {v4}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 684
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lapps/babycaretimer/AlarmActivity;->_preferences:Landroid/content/SharedPreferences;

    const-string v7, "screen_timeout_settings"

    const-string v8, "300"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    add-long v2, v4, v6

    .line 685
    .local v2, scheduledAlarmTime:J
    iget-object v4, p0, Lapps/babycaretimer/AlarmActivity;->_context:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 686
    .local v0, alarmManager:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lapps/babycaretimer/AlarmActivity;->_context:Landroid/content/Context;

    const-class v5, Lapps/babycaretimer/receivers/ScreenManagementAlarmReceiver;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 687
    .local v1, intent:Landroid/content/Intent;
    const/high16 v4, 0x1080

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 688
    iget-object v4, p0, Lapps/babycaretimer/AlarmActivity;->_context:Landroid/content/Context;

    invoke-static {v4, v10, v1, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lapps/babycaretimer/AlarmActivity;->_screenTimeoutPendingIntent:Landroid/app/PendingIntent;

    .line 689
    iget-object v4, p0, Lapps/babycaretimer/AlarmActivity;->_screenTimeoutPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v10, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 690
    return-void
.end method
