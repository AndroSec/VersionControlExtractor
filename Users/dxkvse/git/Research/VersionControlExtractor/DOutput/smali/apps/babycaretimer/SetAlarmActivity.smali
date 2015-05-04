.class public Lapps/babycaretimer/SetAlarmActivity;
.super Landroid/app/Activity;
.source "SetAlarmActivity.java"


# instance fields
.field private _alarmMaxHours:Ljava/lang/String;

.field private _alarmTime:J

.field private _alarmType:I

.field private _appTheme:Ljava/lang/String;

.field private _baseTime:J

.field private _cancelAlarmButton:Landroid/widget/Button;

.field private _cancelButton:Landroid/widget/Button;

.field private _context:Landroid/content/Context;

.field private _debug:Z

.field private _hapticFeedbackEnabled:Z

.field private _hoursNumberPicker:Lapps/babycaretimer/NumberPicker;

.field private _landscapeScreenEnabled:Z

.field private _minutesNumberPicker:Lapps/babycaretimer/NumberPicker;

.field private _preferences:Landroid/content/SharedPreferences;

.field private _recurringAlarm:Z

.field private _recurringCheckbox:Landroid/widget/CheckBox;

.field private _setAlarmButton:Landroid/widget/Button;

.field private _setAlarmHeaderTextView:Landroid/widget/TextView;

.field private _timerOffset:J

.field private _timerStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    iput-boolean v0, p0, Lapps/babycaretimer/SetAlarmActivity;->_debug:Z

    .line 40
    iput-object v1, p0, Lapps/babycaretimer/SetAlarmActivity;->_context:Landroid/content/Context;

    .line 41
    iput-object v1, p0, Lapps/babycaretimer/SetAlarmActivity;->_preferences:Landroid/content/SharedPreferences;

    .line 42
    iput v0, p0, Lapps/babycaretimer/SetAlarmActivity;->_alarmType:I

    .line 43
    iput-wide v2, p0, Lapps/babycaretimer/SetAlarmActivity;->_alarmTime:J

    .line 44
    iput-object v1, p0, Lapps/babycaretimer/SetAlarmActivity;->_hoursNumberPicker:Lapps/babycaretimer/NumberPicker;

    .line 45
    iput-object v1, p0, Lapps/babycaretimer/SetAlarmActivity;->_minutesNumberPicker:Lapps/babycaretimer/NumberPicker;

    .line 46
    iput-object v1, p0, Lapps/babycaretimer/SetAlarmActivity;->_setAlarmButton:Landroid/widget/Button;

    .line 47
    iput-object v1, p0, Lapps/babycaretimer/SetAlarmActivity;->_cancelAlarmButton:Landroid/widget/Button;

    .line 48
    iput-object v1, p0, Lapps/babycaretimer/SetAlarmActivity;->_cancelButton:Landroid/widget/Button;

    .line 49
    iput-object v1, p0, Lapps/babycaretimer/SetAlarmActivity;->_setAlarmHeaderTextView:Landroid/widget/TextView;

    .line 50
    iput-wide v2, p0, Lapps/babycaretimer/SetAlarmActivity;->_baseTime:J

    .line 51
    iput-wide v2, p0, Lapps/babycaretimer/SetAlarmActivity;->_timerOffset:J

    .line 52
    iput-wide v2, p0, Lapps/babycaretimer/SetAlarmActivity;->_timerStartTime:J

    .line 53
    iput-object v1, p0, Lapps/babycaretimer/SetAlarmActivity;->_recurringCheckbox:Landroid/widget/CheckBox;

    .line 54
    iput-boolean v4, p0, Lapps/babycaretimer/SetAlarmActivity;->_recurringAlarm:Z

    .line 57
    iput-boolean v0, p0, Lapps/babycaretimer/SetAlarmActivity;->_landscapeScreenEnabled:Z

    .line 58
    iput-boolean v4, p0, Lapps/babycaretimer/SetAlarmActivity;->_hapticFeedbackEnabled:Z

    .line 59
    const-string v0, "0"

    iput-object v0, p0, Lapps/babycaretimer/SetAlarmActivity;->_appTheme:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lapps/babycaretimer/SetAlarmActivity;->_alarmMaxHours:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lapps/babycaretimer/SetAlarmActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lapps/babycaretimer/SetAlarmActivity;->_debug:Z

    return v0
.end method

.method static synthetic access$100(Lapps/babycaretimer/SetAlarmActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lapps/babycaretimer/SetAlarmActivity;->customPerformHapticFeedback(I)V

    return-void
.end method

.method static synthetic access$200(Lapps/babycaretimer/SetAlarmActivity;)Lapps/babycaretimer/NumberPicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lapps/babycaretimer/SetAlarmActivity;->_hoursNumberPicker:Lapps/babycaretimer/NumberPicker;

    return-object v0
.end method

.method static synthetic access$300(Lapps/babycaretimer/SetAlarmActivity;)Lapps/babycaretimer/NumberPicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lapps/babycaretimer/SetAlarmActivity;->_minutesNumberPicker:Lapps/babycaretimer/NumberPicker;

    return-object v0
.end method

.method static synthetic access$400(Lapps/babycaretimer/SetAlarmActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lapps/babycaretimer/SetAlarmActivity;->_context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lapps/babycaretimer/SetAlarmActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lapps/babycaretimer/SetAlarmActivity;->setAlarm()V

    return-void
.end method

.method static synthetic access$600(Lapps/babycaretimer/SetAlarmActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lapps/babycaretimer/SetAlarmActivity;->cancelAlarm()V

    return-void
.end method

.method private cancelAlarm()V
    .locals 4

    .prologue
    .line 361
    iget-boolean v2, p0, Lapps/babycaretimer/SetAlarmActivity;->_debug:Z

    if-eqz v2, :cond_0

    const-string v2, "SetAlarmActivity.cancelAlarm()"

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 363
    :cond_0
    :try_start_0
    iget v2, p0, Lapps/babycaretimer/SetAlarmActivity;->_alarmType:I

    packed-switch v2, :pswitch_data_0

    .line 404
    :cond_1
    :goto_0
    return-void

    .line 365
    :pswitch_0
    iget-object v2, p0, Lapps/babycaretimer/SetAlarmActivity;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 366
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "diaper_alarm_active"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 367
    const-string v2, "diaper_alarm_time"

    const-string v3, "0:0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 368
    const-string v2, "diaper_alarm_snooze"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 369
    const-string v2, "diaper_alarm_recurring"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 370
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 401
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v1

    .line 402
    .local v1, ex:Ljava/lang/Exception;
    iget-boolean v2, p0, Lapps/babycaretimer/SetAlarmActivity;->_debug:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetAlarmActivity.cancelAlarm() ERROR: "

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

    .line 374
    .end local v1           #ex:Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lapps/babycaretimer/SetAlarmActivity;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 375
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "bottle_alarm_active"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 376
    const-string v2, "bottle_alarm_time"

    const-string v3, "0:0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 377
    const-string v2, "bottle_alarm_snooze"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 378
    const-string v2, "bottle_alarm_recurring"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 379
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 383
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :pswitch_2
    iget-object v2, p0, Lapps/babycaretimer/SetAlarmActivity;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 384
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "sleep_alarm_active"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 385
    const-string v2, "sleep_alarm_time"

    const-string v3, "0:0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 386
    const-string v2, "sleep_alarm_snooze"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 387
    const-string v2, "sleep_alarm_recurring"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 388
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 392
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :pswitch_3
    iget-object v2, p0, Lapps/babycaretimer/SetAlarmActivity;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 393
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "custom_alarm_active"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 394
    const-string v2, "custom_alarm_time"

    const-string v3, "0:0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 395
    const-string v2, "custom_alarm_snooze"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 396
    const-string v2, "custom_alarm_recurring"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 397
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 363
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private customPerformHapticFeedback(I)V
    .locals 3
    .parameter "hapticFeedbackConstant"

    .prologue
    .line 163
    iget-boolean v1, p0, Lapps/babycaretimer/SetAlarmActivity;->_debug:Z

    if-eqz v1, :cond_0

    const-string v1, "SetAlarmActivity.customPerformHapticFeedback()"

    invoke-static {v1}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 164
    :cond_0
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lapps/babycaretimer/SetAlarmActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 166
    .local v0, vibrator:Landroid/os/Vibrator;
    iget-boolean v1, p0, Lapps/babycaretimer/SetAlarmActivity;->_hapticFeedbackEnabled:Z

    if-eqz v1, :cond_2

    .line 167
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 169
    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 171
    :cond_1
    if-nez p1, :cond_2

    .line 173
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 176
    :cond_2
    return-void
.end method

.method private loadUserPreferences()V
    .locals 4

    .prologue
    .line 410
    iget-boolean v1, p0, Lapps/babycaretimer/SetAlarmActivity;->_debug:Z

    if-eqz v1, :cond_0

    const-string v1, "SetAlarmActivity.loadUserPreferences()"

    invoke-static {v1}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 412
    :cond_0
    :try_start_0
    iget-object v1, p0, Lapps/babycaretimer/SetAlarmActivity;->_context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lapps/babycaretimer/SetAlarmActivity;->_preferences:Landroid/content/SharedPreferences;

    .line 413
    iget-object v1, p0, Lapps/babycaretimer/SetAlarmActivity;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "landscape_screen_enabled"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lapps/babycaretimer/SetAlarmActivity;->_landscapeScreenEnabled:Z

    .line 414
    iget-object v1, p0, Lapps/babycaretimer/SetAlarmActivity;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "haptic_feedback_enabled"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lapps/babycaretimer/SetAlarmActivity;->_hapticFeedbackEnabled:Z

    .line 415
    iget-object v1, p0, Lapps/babycaretimer/SetAlarmActivity;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "app_theme"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lapps/babycaretimer/SetAlarmActivity;->_appTheme:Ljava/lang/String;

    .line 416
    iget-object v1, p0, Lapps/babycaretimer/SetAlarmActivity;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "alarm_max_hours_settings"

    const-string v3, "48"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lapps/babycaretimer/SetAlarmActivity;->_alarmMaxHours:Ljava/lang/String;

    .line 417
    iget-object v1, p0, Lapps/babycaretimer/SetAlarmActivity;->_context:Landroid/content/Context;

    iget v2, p0, Lapps/babycaretimer/SetAlarmActivity;->_alarmType:I

    invoke-static {v1, v2}, Lapps/babycaretimer/common/Common;->getBaseTime(Landroid/content/Context;I)J

    move-result-wide v1

    iput-wide v1, p0, Lapps/babycaretimer/SetAlarmActivity;->_baseTime:J

    .line 418
    iget-object v1, p0, Lapps/babycaretimer/SetAlarmActivity;->_context:Landroid/content/Context;

    iget v2, p0, Lapps/babycaretimer/SetAlarmActivity;->_alarmType:I

    invoke-static {v1, v2}, Lapps/babycaretimer/common/Common;->getTimerOffset(Landroid/content/Context;I)J

    move-result-wide v1

    iput-wide v1, p0, Lapps/babycaretimer/SetAlarmActivity;->_timerOffset:J

    .line 419
    iget-object v1, p0, Lapps/babycaretimer/SetAlarmActivity;->_context:Landroid/content/Context;

    iget v2, p0, Lapps/babycaretimer/SetAlarmActivity;->_alarmType:I

    invoke-static {v1, v2}, Lapps/babycaretimer/common/Common;->getTimerStartTime(Landroid/content/Context;I)J

    move-result-wide v1

    iput-wide v1, p0, Lapps/babycaretimer/SetAlarmActivity;->_timerStartTime:J

    .line 420
    iget-object v1, p0, Lapps/babycaretimer/SetAlarmActivity;->_context:Landroid/content/Context;

    iget v2, p0, Lapps/babycaretimer/SetAlarmActivity;->_alarmType:I

    invoke-static {v1, v2}, Lapps/babycaretimer/common/Common;->isAlarmRecurring(Landroid/content/Context;I)Z

    move-result v1

    iput-boolean v1, p0, Lapps/babycaretimer/SetAlarmActivity;->_recurringAlarm:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    :cond_1
    :goto_0
    return-void

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .local v0, ex:Ljava/lang/Exception;
    iget-boolean v1, p0, Lapps/babycaretimer/SetAlarmActivity;->_debug:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetAlarmActivity.loadUserPreferences() ERROR: "

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

.method private setAlarm()V
    .locals 18

    .prologue
    .line 283
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lapps/babycaretimer/SetAlarmActivity;->_debug:Z

    if-eqz v13, :cond_0

    const-string v13, "SetAlarmActivity.setAlarm()"

    invoke-static {v13}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 285
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget v13, v0, Lapps/babycaretimer/SetAlarmActivity;->_alarmType:I

    packed-switch v13, :pswitch_data_0

    .line 324
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lapps/babycaretimer/SetAlarmActivity;->_hoursNumberPicker:Lapps/babycaretimer/NumberPicker;

    invoke-virtual {v13}, Lapps/babycaretimer/NumberPicker;->getCurrent()I

    move-result v13

    mul-int/lit8 v13, v13, 0x3c

    mul-int/lit8 v13, v13, 0x3c

    mul-int/lit16 v13, v13, 0x3e8

    move-object/from16 v0, p0

    iget-object v14, v0, Lapps/babycaretimer/SetAlarmActivity;->_minutesNumberPicker:Lapps/babycaretimer/NumberPicker;

    invoke-virtual {v14}, Lapps/babycaretimer/NumberPicker;->getCurrent()I

    move-result v14

    mul-int/lit8 v14, v14, 0x3c

    mul-int/lit16 v14, v14, 0x3e8

    add-int/2addr v13, v14

    int-to-long v5, v13

    .line 325
    .local v5, alarmTime:J
    const-wide/16 v9, 0x0

    .line 326
    .local v9, elapsedTime:J
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lapps/babycaretimer/SetAlarmActivity;->_debug:Z

    if-eqz v13, :cond_1

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SetAlarmActivity.setAlarm() baseTime: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lapps/babycaretimer/SetAlarmActivity;->_baseTime:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 327
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lapps/babycaretimer/SetAlarmActivity;->_debug:Z

    if-eqz v13, :cond_2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SetAlarmActivity.setAlarm() timerOffset: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lapps/babycaretimer/SetAlarmActivity;->_timerOffset:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 328
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lapps/babycaretimer/SetAlarmActivity;->_debug:Z

    if-eqz v13, :cond_3

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SetAlarmActivity.setAlarm() timerStartTime: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lapps/babycaretimer/SetAlarmActivity;->_timerStartTime:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 329
    :cond_3
    move-object/from16 v0, p0

    iget-wide v13, v0, Lapps/babycaretimer/SetAlarmActivity;->_baseTime:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_7

    .line 330
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-wide v15, v0, Lapps/babycaretimer/SetAlarmActivity;->_timerOffset:J

    add-long v9, v13, v15

    .line 337
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lapps/babycaretimer/SetAlarmActivity;->_debug:Z

    if-eqz v13, :cond_4

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SetAlarmActivity.setAlarm() elapsedTime: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 338
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    add-long/2addr v13, v5

    sub-long v1, v13, v9

    .line 339
    .local v1, alarmAlertTime:J
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lapps/babycaretimer/SetAlarmActivity;->_debug:Z

    if-eqz v13, :cond_5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SetAlarmActivity.setAlarm() AlarmTime: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ElapsedTime:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " AlarmAlertTime: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 340
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lapps/babycaretimer/SetAlarmActivity;->_context:Landroid/content/Context;

    const-string v14, "alarm"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    .line 341
    .local v4, alarmManager:Landroid/app/AlarmManager;
    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lapps/babycaretimer/SetAlarmActivity;->_context:Landroid/content/Context;

    const-class v14, Lapps/babycaretimer/receivers/AlarmReceiver;

    invoke-direct {v3, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 342
    .local v3, alarmIntent:Landroid/content/Intent;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 343
    .local v7, bundle:Landroid/os/Bundle;
    const-string v13, "alarm_type"

    move-object/from16 v0, p0

    iget v14, v0, Lapps/babycaretimer/SetAlarmActivity;->_alarmType:I

    invoke-virtual {v7, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 344
    const-string v13, "alarm_snooze"

    const/4 v14, 0x0

    invoke-virtual {v7, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 345
    invoke-virtual {v3, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 346
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "apps.babycaretimer.action."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lapps/babycaretimer/SetAlarmActivity;->_alarmType:I

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    const/high16 v13, 0x1080

    invoke-virtual {v3, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 348
    move-object/from16 v0, p0

    iget-object v13, v0, Lapps/babycaretimer/SetAlarmActivity;->_context:Landroid/content/Context;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v13, v14, v3, v15}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 349
    .local v12, pendingIntent:Landroid/app/PendingIntent;
    const/4 v13, 0x0

    invoke-virtual {v4, v13, v1, v2, v12}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 351
    move-object/from16 v0, p0

    iget-object v13, v0, Lapps/babycaretimer/SetAlarmActivity;->_context:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lapps/babycaretimer/SetAlarmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f080023

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lapps/babycaretimer/SetAlarmActivity;->_hoursNumberPicker:Lapps/babycaretimer/NumberPicker;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lapps/babycaretimer/NumberPicker;->getCurrent()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lapps/babycaretimer/SetAlarmActivity;->_minutesNumberPicker:Lapps/babycaretimer/NumberPicker;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lapps/babycaretimer/NumberPicker;->getCurrent()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 355
    .end local v1           #alarmAlertTime:J
    .end local v3           #alarmIntent:Landroid/content/Intent;
    .end local v4           #alarmManager:Landroid/app/AlarmManager;
    .end local v5           #alarmTime:J
    .end local v7           #bundle:Landroid/os/Bundle;
    .end local v9           #elapsedTime:J
    .end local v12           #pendingIntent:Landroid/app/PendingIntent;
    :cond_6
    :goto_2
    return-void

    .line 287
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lapps/babycaretimer/SetAlarmActivity;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 288
    .local v8, editor:Landroid/content/SharedPreferences$Editor;
    const-string v13, "diaper_alarm_active"

    const/4 v14, 0x1

    invoke-interface {v8, v13, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 289
    const-string v13, "diaper_alarm_snooze"

    const/4 v14, 0x0

    invoke-interface {v8, v13, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 290
    const-string v13, "diaper_alarm_time"

    move-object/from16 v0, p0

    iget-object v14, v0, Lapps/babycaretimer/SetAlarmActivity;->_hoursNumberPicker:Lapps/babycaretimer/NumberPicker;

    invoke-virtual {v14}, Lapps/babycaretimer/NumberPicker;->getCurrent()I

    move-result v14

    mul-int/lit8 v14, v14, 0x3c

    mul-int/lit8 v14, v14, 0x3c

    mul-int/lit16 v14, v14, 0x3e8

    move-object/from16 v0, p0

    iget-object v15, v0, Lapps/babycaretimer/SetAlarmActivity;->_minutesNumberPicker:Lapps/babycaretimer/NumberPicker;

    invoke-virtual {v15}, Lapps/babycaretimer/NumberPicker;->getCurrent()I

    move-result v15

    mul-int/lit8 v15, v15, 0x3c

    mul-int/lit16 v15, v15, 0x3e8

    add-int/2addr v14, v15

    int-to-long v14, v14

    invoke-interface {v8, v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 291
    const-string v13, "diaper_alarm_recurring"

    move-object/from16 v0, p0

    iget-object v14, v0, Lapps/babycaretimer/SetAlarmActivity;->_recurringCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v14}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v14

    invoke-interface {v8, v13, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 292
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 352
    .end local v8           #editor:Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v11

    .line 353
    .local v11, ex:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lapps/babycaretimer/SetAlarmActivity;->_debug:Z

    if-eqz v13, :cond_6

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SetAlarmActivity.setAlarm() ERROR: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 296
    .end local v11           #ex:Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lapps/babycaretimer/SetAlarmActivity;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 297
    .restart local v8       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v13, "bottle_alarm_active"

    const/4 v14, 0x1

    invoke-interface {v8, v13, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 298
    const-string v13, "bottle_alarm_snooze"

    const/4 v14, 0x0

    invoke-interface {v8, v13, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 299
    const-string v13, "bottle_alarm_time"

    move-object/from16 v0, p0

    iget-object v14, v0, Lapps/babycaretimer/SetAlarmActivity;->_hoursNumberPicker:Lapps/babycaretimer/NumberPicker;

    invoke-virtual {v14}, Lapps/babycaretimer/NumberPicker;->getCurrent()I

    move-result v14

    mul-int/lit8 v14, v14, 0x3c

    mul-int/lit8 v14, v14, 0x3c

    mul-int/lit16 v14, v14, 0x3e8

    move-object/from16 v0, p0

    iget-object v15, v0, Lapps/babycaretimer/SetAlarmActivity;->_minutesNumberPicker:Lapps/babycaretimer/NumberPicker;

    invoke-virtual {v15}, Lapps/babycaretimer/NumberPicker;->getCurrent()I

    move-result v15

    mul-int/lit8 v15, v15, 0x3c

    mul-int/lit16 v15, v15, 0x3e8

    add-int/2addr v14, v15

    int-to-long v14, v14

    invoke-interface {v8, v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 300
    const-string v13, "bottle_alarm_recurring"

    move-object/from16 v0, p0

    iget-object v14, v0, Lapps/babycaretimer/SetAlarmActivity;->_recurringCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v14}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v14

    invoke-interface {v8, v13, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 301
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 305
    .end local v8           #editor:Landroid/content/SharedPreferences$Editor;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lapps/babycaretimer/SetAlarmActivity;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 306
    .restart local v8       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v13, "sleep_alarm_active"

    const/4 v14, 0x1

    invoke-interface {v8, v13, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 307
    const-string v13, "sleep_alarm_snooze"

    const/4 v14, 0x0

    invoke-interface {v8, v13, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 308
    const-string v13, "sleep_alarm_time"

    move-object/from16 v0, p0

    iget-object v14, v0, Lapps/babycaretimer/SetAlarmActivity;->_hoursNumberPicker:Lapps/babycaretimer/NumberPicker;

    invoke-virtual {v14}, Lapps/babycaretimer/NumberPicker;->getCurrent()I

    move-result v14

    mul-int/lit8 v14, v14, 0x3c

    mul-int/lit8 v14, v14, 0x3c

    mul-int/lit16 v14, v14, 0x3e8

    move-object/from16 v0, p0

    iget-object v15, v0, Lapps/babycaretimer/SetAlarmActivity;->_minutesNumberPicker:Lapps/babycaretimer/NumberPicker;

    invoke-virtual {v15}, Lapps/babycaretimer/NumberPicker;->getCurrent()I

    move-result v15

    mul-int/lit8 v15, v15, 0x3c

    mul-int/lit16 v15, v15, 0x3e8

    add-int/2addr v14, v15

    int-to-long v14, v14

    invoke-interface {v8, v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 309
    const-string v13, "sleep_alarm_recurring"

    move-object/from16 v0, p0

    iget-object v14, v0, Lapps/babycaretimer/SetAlarmActivity;->_recurringCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v14}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v14

    invoke-interface {v8, v13, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 310
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 314
    .end local v8           #editor:Landroid/content/SharedPreferences$Editor;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lapps/babycaretimer/SetAlarmActivity;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 315
    .restart local v8       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v13, "custom_alarm_active"

    const/4 v14, 0x1

    invoke-interface {v8, v13, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 316
    const-string v13, "custom_alarm_snooze"

    const/4 v14, 0x0

    invoke-interface {v8, v13, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 317
    const-string v13, "custom_alarm_time"

    move-object/from16 v0, p0

    iget-object v14, v0, Lapps/babycaretimer/SetAlarmActivity;->_hoursNumberPicker:Lapps/babycaretimer/NumberPicker;

    invoke-virtual {v14}, Lapps/babycaretimer/NumberPicker;->getCurrent()I

    move-result v14

    mul-int/lit8 v14, v14, 0x3c

    mul-int/lit8 v14, v14, 0x3c

    mul-int/lit16 v14, v14, 0x3e8

    move-object/from16 v0, p0

    iget-object v15, v0, Lapps/babycaretimer/SetAlarmActivity;->_minutesNumberPicker:Lapps/babycaretimer/NumberPicker;

    invoke-virtual {v15}, Lapps/babycaretimer/NumberPicker;->getCurrent()I

    move-result v15

    mul-int/lit8 v15, v15, 0x3c

    mul-int/lit16 v15, v15, 0x3e8

    add-int/2addr v14, v15

    int-to-long v14, v14

    invoke-interface {v8, v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 318
    const-string v13, "custom_alarm_recurring"

    move-object/from16 v0, p0

    iget-object v14, v0, Lapps/babycaretimer/SetAlarmActivity;->_recurringCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v14}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v14

    invoke-interface {v8, v13, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 319
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 331
    .end local v8           #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v5       #alarmTime:J
    .restart local v9       #elapsedTime:J
    :cond_7
    move-object/from16 v0, p0

    iget-wide v13, v0, Lapps/babycaretimer/SetAlarmActivity;->_timerOffset:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_8

    .line 332
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-wide v15, v0, Lapps/babycaretimer/SetAlarmActivity;->_baseTime:J

    sub-long v9, v13, v15

    goto/16 :goto_1

    .line 334
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lapps/babycaretimer/SetAlarmActivity;->_debug:Z

    if-eqz v13, :cond_6

    const-string v13, "SetAlarmActivity.setAlarm() BaseTime and TimerOffset are null. Exiting..."

    invoke-static {v13}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 285
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setupButtons()V
    .locals 4

    .prologue
    .line 223
    iget-boolean v0, p0, Lapps/babycaretimer/SetAlarmActivity;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "SetAlarmActivity.setupButtons()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 224
    :cond_0
    const v0, 0x7f0b001c

    invoke-virtual {p0, v0}, Lapps/babycaretimer/SetAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lapps/babycaretimer/SetAlarmActivity;->_setAlarmButton:Landroid/widget/Button;

    .line 225
    iget-object v0, p0, Lapps/babycaretimer/SetAlarmActivity;->_setAlarmButton:Landroid/widget/Button;

    new-instance v1, Lapps/babycaretimer/SetAlarmActivity$1;

    invoke-direct {v1, p0}, Lapps/babycaretimer/SetAlarmActivity$1;-><init>(Lapps/babycaretimer/SetAlarmActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Lapps/babycaretimer/SetAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lapps/babycaretimer/SetAlarmActivity;->_cancelAlarmButton:Landroid/widget/Button;

    .line 238
    iget-wide v0, p0, Lapps/babycaretimer/SetAlarmActivity;->_alarmTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 239
    iget-object v0, p0, Lapps/babycaretimer/SetAlarmActivity;->_cancelAlarmButton:Landroid/widget/Button;

    new-instance v1, Lapps/babycaretimer/SetAlarmActivity$2;

    invoke-direct {v1, p0}, Lapps/babycaretimer/SetAlarmActivity$2;-><init>(Lapps/babycaretimer/SetAlarmActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    :goto_0
    const v0, 0x7f0b001e

    invoke-virtual {p0, v0}, Lapps/babycaretimer/SetAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lapps/babycaretimer/SetAlarmActivity;->_cancelButton:Landroid/widget/Button;

    .line 252
    iget-object v0, p0, Lapps/babycaretimer/SetAlarmActivity;->_cancelButton:Landroid/widget/Button;

    new-instance v1, Lapps/babycaretimer/SetAlarmActivity$3;

    invoke-direct {v1, p0}, Lapps/babycaretimer/SetAlarmActivity$3;-><init>(Lapps/babycaretimer/SetAlarmActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    return-void

    .line 249
    :cond_1
    iget-object v0, p0, Lapps/babycaretimer/SetAlarmActivity;->_cancelAlarmButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupNumberPickers()V
    .locals 13

    .prologue
    const-wide/16 v11, 0xe10

    const/4 v9, 0x0

    .line 265
    iget-boolean v7, p0, Lapps/babycaretimer/SetAlarmActivity;->_debug:Z

    if-eqz v7, :cond_0

    const-string v7, "SetAlarmActivity.setupNumberPickers()"

    invoke-static {v7}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 266
    :cond_0
    iget-object v7, p0, Lapps/babycaretimer/SetAlarmActivity;->_alarmMaxHours:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 267
    .local v2, maxHoursPreference:I
    iget-object v7, p0, Lapps/babycaretimer/SetAlarmActivity;->_hoursNumberPicker:Lapps/babycaretimer/NumberPicker;

    invoke-virtual {v7, v9, v2}, Lapps/babycaretimer/NumberPicker;->setRange(II)V

    .line 268
    iget-object v7, p0, Lapps/babycaretimer/SetAlarmActivity;->_minutesNumberPicker:Lapps/babycaretimer/NumberPicker;

    const/16 v8, 0x3c

    invoke-virtual {v7, v9, v8}, Lapps/babycaretimer/NumberPicker;->setRange(II)V

    .line 269
    iget-wide v7, p0, Lapps/babycaretimer/SetAlarmActivity;->_alarmTime:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_1

    .line 270
    iget-wide v7, p0, Lapps/babycaretimer/SetAlarmActivity;->_alarmTime:J

    const-wide/16 v9, 0x3e8

    div-long v5, v7, v9

    .line 271
    .local v5, timeValue:J
    div-long v0, v5, v11

    .line 272
    .local v0, hours:J
    mul-long v7, v0, v11

    sub-long/2addr v5, v7

    .line 273
    const-wide/16 v7, 0x3c

    div-long v3, v5, v7

    .line 274
    .local v3, minutes:J
    iget-object v7, p0, Lapps/babycaretimer/SetAlarmActivity;->_hoursNumberPicker:Lapps/babycaretimer/NumberPicker;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lapps/babycaretimer/NumberPicker;->setCurrent(I)V

    .line 275
    iget-object v7, p0, Lapps/babycaretimer/SetAlarmActivity;->_minutesNumberPicker:Lapps/babycaretimer/NumberPicker;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lapps/babycaretimer/NumberPicker;->setCurrent(I)V

    .line 277
    .end local v0           #hours:J
    .end local v3           #minutes:J
    .end local v5           #timeValue:J
    :cond_1
    return-void
.end method

.method private setupViews()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const v3, 0x7f02000f

    const/4 v2, 0x0

    .line 182
    iget-boolean v0, p0, Lapps/babycaretimer/SetAlarmActivity;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "SetAlarmActivity.setupViews()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 183
    :cond_0
    const v0, 0x7f0b0018

    invoke-virtual {p0, v0}, Lapps/babycaretimer/SetAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lapps/babycaretimer/NumberPicker;

    iput-object v0, p0, Lapps/babycaretimer/SetAlarmActivity;->_hoursNumberPicker:Lapps/babycaretimer/NumberPicker;

    .line 184
    const v0, 0x7f0b0019

    invoke-virtual {p0, v0}, Lapps/babycaretimer/SetAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lapps/babycaretimer/NumberPicker;

    iput-object v0, p0, Lapps/babycaretimer/SetAlarmActivity;->_minutesNumberPicker:Lapps/babycaretimer/NumberPicker;

    .line 185
    const v0, 0x7f0b0017

    invoke-virtual {p0, v0}, Lapps/babycaretimer/SetAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lapps/babycaretimer/SetAlarmActivity;->_setAlarmHeaderTextView:Landroid/widget/TextView;

    .line 186
    const v0, 0x7f0b001b

    invoke-virtual {p0, v0}, Lapps/babycaretimer/SetAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lapps/babycaretimer/SetAlarmActivity;->_recurringCheckbox:Landroid/widget/CheckBox;

    .line 187
    iget v0, p0, Lapps/babycaretimer/SetAlarmActivity;->_alarmType:I

    packed-switch v0, :pswitch_data_0

    .line 217
    :cond_1
    :goto_0
    return-void

    .line 189
    :pswitch_0
    iget-object v0, p0, Lapps/babycaretimer/SetAlarmActivity;->_setAlarmHeaderTextView:Landroid/widget/TextView;

    const v1, 0x7f020016

    invoke-virtual {v0, v3, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 190
    iget-wide v0, p0, Lapps/babycaretimer/SetAlarmActivity;->_alarmTime:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 191
    iget-object v0, p0, Lapps/babycaretimer/SetAlarmActivity;->_recurringCheckbox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lapps/babycaretimer/SetAlarmActivity;->_recurringAlarm:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 196
    :pswitch_1
    iget-object v0, p0, Lapps/babycaretimer/SetAlarmActivity;->_setAlarmHeaderTextView:Landroid/widget/TextView;

    const v1, 0x7f020014

    invoke-virtual {v0, v3, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 197
    iget-wide v0, p0, Lapps/babycaretimer/SetAlarmActivity;->_alarmTime:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 198
    iget-object v0, p0, Lapps/babycaretimer/SetAlarmActivity;->_recurringCheckbox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lapps/babycaretimer/SetAlarmActivity;->_recurringAlarm:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 203
    :pswitch_2
    iget-object v0, p0, Lapps/babycaretimer/SetAlarmActivity;->_setAlarmHeaderTextView:Landroid/widget/TextView;

    const v1, 0x7f02001e

    invoke-virtual {v0, v3, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 204
    iget-wide v0, p0, Lapps/babycaretimer/SetAlarmActivity;->_alarmTime:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 205
    iget-object v0, p0, Lapps/babycaretimer/SetAlarmActivity;->_recurringCheckbox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lapps/babycaretimer/SetAlarmActivity;->_recurringAlarm:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 210
    :pswitch_3
    iget-object v0, p0, Lapps/babycaretimer/SetAlarmActivity;->_setAlarmHeaderTextView:Landroid/widget/TextView;

    const v1, 0x7f02001f

    invoke-virtual {v0, v3, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 211
    iget-wide v0, p0, Lapps/babycaretimer/SetAlarmActivity;->_alarmTime:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 212
    iget-object v0, p0, Lapps/babycaretimer/SetAlarmActivity;->_recurringCheckbox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lapps/babycaretimer/SetAlarmActivity;->_recurringAlarm:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "bundle"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-static {}, Lapps/babycaretimer/log/Log;->getDebug()Z

    move-result v3

    iput-boolean v3, p0, Lapps/babycaretimer/SetAlarmActivity;->_debug:Z

    .line 73
    iget-boolean v3, p0, Lapps/babycaretimer/SetAlarmActivity;->_debug:Z

    if-eqz v3, :cond_0

    const-string v3, "SetAlarmActivity.onCreate()"

    invoke-static {v3}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 74
    :cond_0
    invoke-virtual {p0}, Lapps/babycaretimer/SetAlarmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lapps/babycaretimer/SetAlarmActivity;->_context:Landroid/content/Context;

    .line 75
    invoke-virtual {p0}, Lapps/babycaretimer/SetAlarmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 76
    .local v0, extrasBundle:Landroid/os/Bundle;
    const-string v3, "alarm_type"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lapps/babycaretimer/SetAlarmActivity;->_alarmType:I

    .line 77
    const-string v3, "alarm_time"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lapps/babycaretimer/SetAlarmActivity;->_alarmTime:J

    .line 78
    invoke-direct {p0}, Lapps/babycaretimer/SetAlarmActivity;->loadUserPreferences()V

    .line 80
    iget-boolean v3, p0, Lapps/babycaretimer/SetAlarmActivity;->_landscapeScreenEnabled:Z

    if-nez v3, :cond_1

    .line 81
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lapps/babycaretimer/SetAlarmActivity;->setRequestedOrientation(I)V

    .line 84
    :cond_1
    invoke-virtual {p0}, Lapps/babycaretimer/SetAlarmActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 86
    .local v1, mainWindow:Landroid/view/Window;
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 87
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 88
    .local v2, params:Landroid/view/WindowManager$LayoutParams;
    const/high16 v3, 0x3f00

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 89
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 90
    iget-object v3, p0, Lapps/babycaretimer/SetAlarmActivity;->_appTheme:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 91
    const v3, 0x7f03000a

    invoke-virtual {p0, v3}, Lapps/babycaretimer/SetAlarmActivity;->setContentView(I)V

    .line 95
    :goto_0
    invoke-direct {p0}, Lapps/babycaretimer/SetAlarmActivity;->setupViews()V

    .line 96
    invoke-direct {p0}, Lapps/babycaretimer/SetAlarmActivity;->setupButtons()V

    .line 97
    invoke-direct {p0}, Lapps/babycaretimer/SetAlarmActivity;->setupNumberPickers()V

    .line 98
    return-void

    .line 93
    :cond_2
    const v3, 0x7f03000b

    invoke-virtual {p0, v3}, Lapps/babycaretimer/SetAlarmActivity;->setContentView(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 149
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 150
    iget-boolean v0, p0, Lapps/babycaretimer/SetAlarmActivity;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "SetAlarmActivity.onDestroy()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 151
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 131
    iget-boolean v0, p0, Lapps/babycaretimer/SetAlarmActivity;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "SetAlarmActivity.onPause()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 132
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 120
    invoke-static {}, Lapps/babycaretimer/log/Log;->getDebug()Z

    move-result v0

    iput-boolean v0, p0, Lapps/babycaretimer/SetAlarmActivity;->_debug:Z

    .line 121
    iget-boolean v0, p0, Lapps/babycaretimer/SetAlarmActivity;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "SetAlarmActivity.onResume()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 122
    :cond_0
    invoke-direct {p0}, Lapps/babycaretimer/SetAlarmActivity;->loadUserPreferences()V

    .line 123
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 110
    invoke-static {}, Lapps/babycaretimer/log/Log;->getDebug()Z

    move-result v0

    iput-boolean v0, p0, Lapps/babycaretimer/SetAlarmActivity;->_debug:Z

    .line 111
    iget-boolean v0, p0, Lapps/babycaretimer/SetAlarmActivity;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "SetAlarmActivity.onStart()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 112
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 140
    iget-boolean v0, p0, Lapps/babycaretimer/SetAlarmActivity;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "SetAlarmActivity.onStop()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 141
    :cond_0
    invoke-virtual {p0}, Lapps/babycaretimer/SetAlarmActivity;->finish()V

    .line 142
    return-void
.end method
