.class public Lapps/babycaretimer/services/AlarmReceiverService;
.super Lapps/babycaretimer/services/WakefulIntentService;
.source "AlarmReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapps/babycaretimer/services/AlarmReceiverService$1;,
        Lapps/babycaretimer/services/AlarmReceiverService$playNotificationMediaFileAsyncTask;
    }
.end annotation


# static fields
.field private static _context:Landroid/content/Context;

.field private static _debug:Z

.field private static _mediaPlayer:Landroid/media/MediaPlayer;

.field private static _vibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lapps/babycaretimer/services/AlarmReceiverService;->_debug:Z

    .line 41
    sput-object v1, Lapps/babycaretimer/services/AlarmReceiverService;->_context:Landroid/content/Context;

    .line 42
    sput-object v1, Lapps/babycaretimer/services/AlarmReceiverService;->_vibrator:Landroid/os/Vibrator;

    .line 43
    sput-object v1, Lapps/babycaretimer/services/AlarmReceiverService;->_mediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    const-string v0, "AlarmReceiverService"

    invoke-direct {p0, v0}, Lapps/babycaretimer/services/WakefulIntentService;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lapps/babycaretimer/log/Log;->getDebug()Z

    move-result v0

    sput-boolean v0, Lapps/babycaretimer/services/AlarmReceiverService;->_debug:Z

    .line 89
    sget-boolean v0, Lapps/babycaretimer/services/AlarmReceiverService;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "AlarmReceiverService.AlarmReceiverService()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 90
    :cond_0
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lapps/babycaretimer/services/AlarmReceiverService;->_debug:Z

    return v0
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lapps/babycaretimer/services/AlarmReceiverService;->_context:Landroid/content/Context;

    return-object v0
.end method

.method public static cancelVibrator()V
    .locals 3

    .prologue
    .line 53
    invoke-static {}, Lapps/babycaretimer/log/Log;->getDebug()Z

    move-result v1

    sput-boolean v1, Lapps/babycaretimer/services/AlarmReceiverService;->_debug:Z

    .line 54
    sget-boolean v1, Lapps/babycaretimer/services/AlarmReceiverService;->_debug:Z

    if-eqz v1, :cond_0

    const-string v1, "AlarmReceiverService.cancelVibrator()"

    invoke-static {v1}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 56
    :cond_0
    :try_start_0
    sget-object v1, Lapps/babycaretimer/services/AlarmReceiverService;->_vibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_1

    .line 57
    sget-object v1, Lapps/babycaretimer/services/AlarmReceiverService;->_vibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .local v0, ex:Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void

    .line 59
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 60
    .restart local v0       #ex:Ljava/lang/Exception;
    sget-boolean v1, Lapps/babycaretimer/services/AlarmReceiverService;->_debug:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmReceiverService.cancelVibrator() ERROR: "

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

.method private createNotification(Landroid/os/Bundle;Z)V
    .locals 41
    .parameter "bundle"
    .parameter "callStateIdle"

    .prologue
    .line 151
    sget-boolean v38, Lapps/babycaretimer/services/AlarmReceiverService;->_debug:Z

    if-eqz v38, :cond_0

    const-string v38, "AlarmReceiverService.createNotification()"

    invoke-static/range {v38 .. v38}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 153
    :cond_0
    :try_start_0
    const-string v38, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lapps/babycaretimer/services/AlarmReceiverService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    .line 154
    .local v6, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v38

    const/16 v39, 0x2

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_2

    const/4 v15, 0x1

    .line 155
    .local v15, inNormalMode:Z
    :goto_0
    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v38

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_3

    const/16 v16, 0x1

    .line 156
    .local v16, inVibrateMode:Z
    :goto_1
    sget-object v38, Lapps/babycaretimer/services/AlarmReceiverService;->_context:Landroid/content/Context;

    invoke-static/range {v38 .. v38}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v29

    .line 157
    .local v29, preferences:Landroid/content/SharedPreferences;
    const-string v38, "status_bar_notifications_enabled"

    const/16 v39, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v38

    if-nez v38, :cond_4

    .line 322
    .end local v6           #audioManager:Landroid/media/AudioManager;
    .end local v15           #inNormalMode:Z
    .end local v16           #inVibrateMode:Z
    .end local v29           #preferences:Landroid/content/SharedPreferences;
    :cond_1
    :goto_2
    return-void

    .line 154
    .restart local v6       #audioManager:Landroid/media/AudioManager;
    :cond_2
    const/4 v15, 0x0

    goto :goto_0

    .line 155
    .restart local v15       #inNormalMode:Z
    :cond_3
    const/16 v16, 0x0

    goto :goto_1

    .line 161
    .restart local v16       #inVibrateMode:Z
    .restart local v29       #preferences:Landroid/content/SharedPreferences;
    :cond_4
    const-string v38, "notification_sound"

    const-string v39, "content://settings/system/alarm_alert"

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 162
    .local v27, notificationSound:Ljava/lang/String;
    const/16 v31, 0x0

    .line 163
    .local v31, soundEnabled:Z
    if-eqz v27, :cond_5

    const-string v38, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_5

    .line 164
    const/16 v31, 0x1

    .line 166
    :cond_5
    const-string v38, "notification_in_call_vibrate_enabled"

    const/16 v39, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v32

    .line 168
    .local v32, soundInCallEnabled:Z
    const/16 v28, 0x0

    .line 169
    .local v28, notificationVibrate:Ljava/lang/String;
    const/16 v34, 0x0

    .line 170
    .local v34, vibrateEnabled:Z
    const-string v38, "sms_notification_vibrate_setting"

    const-string v39, "0"

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 171
    const-string v38, "0"

    move-object/from16 v0, v28

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_e

    .line 172
    const/16 v34, 0x1

    .line 176
    :cond_6
    :goto_3
    const-string v38, "notification_in_call_vibrate_enabled"

    const/16 v39, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v35

    .line 177
    .local v35, vibrateInCallEnabled:Z
    const/16 v36, 0x0

    .line 178
    .local v36, vibratePattern:Ljava/lang/String;
    if-eqz v34, :cond_7

    .line 179
    const-string v38, "notification_vibrate_pattern"

    const-string v39, "0,800,200,800,200,800,200"

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 180
    const-string v38, "custom"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 181
    const-string v38, "notification_vibrate_pattern_custom"

    const-string v39, "0,800,200,800,200,800,200"

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 185
    :cond_7
    const-string v38, "notification_led_enabled"

    const/16 v39, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 186
    .local v20, ledEnabled:Z
    const/16 v21, 0x0

    .line 187
    .local v21, ledPattern:Ljava/lang/String;
    const-string v38, "yellow"

    invoke-static/range {v38 .. v38}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v18

    .line 188
    .local v18, ledColor:I
    const/16 v19, 0x0

    .line 189
    .local v19, ledColorString:Ljava/lang/String;
    if-eqz v20, :cond_9

    .line 191
    const-string v38, "notification_led_color"

    const-string v39, "yellow"

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 192
    const-string v38, "custom"

    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_8

    .line 193
    const-string v38, "notification_led_color_custom"

    const-string v39, "yellow"

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 196
    :cond_8
    :try_start_1
    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result v18

    .line 201
    :goto_4
    :try_start_2
    const-string v38, "notification_led_pattern"

    const-string v39, "1000,1000"

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 202
    const-string v38, "custom"

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_9

    .line 203
    const-string v38, "notification_led_pattern_custom"

    const-string v39, "1000,1000"

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 206
    :cond_9
    const-string v38, "alarm_type"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 207
    .local v5, alarmType:I
    const/4 v14, 0x0

    .line 208
    .local v14, icon:I
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 209
    .local v10, currentAPIVersion:I
    const/16 v38, 0x8

    move/from16 v0, v38

    if-lt v10, v0, :cond_f

    .line 210
    const v14, 0x7f020036

    .line 214
    :goto_5
    const/16 v33, 0x0

    .line 215
    .local v33, tickerText:Ljava/lang/CharSequence;
    sget-object v38, Lapps/babycaretimer/services/AlarmReceiverService;->_context:Landroid/content/Context;

    const v39, 0x7f08006b

    invoke-virtual/range {v38 .. v39}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 216
    .local v9, contentTitle:Ljava/lang/CharSequence;
    sget-object v38, Lapps/babycaretimer/services/AlarmReceiverService;->_context:Landroid/content/Context;

    const v39, 0x7f08006c

    invoke-virtual/range {v38 .. v39}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 217
    .local v8, contentText:Ljava/lang/CharSequence;
    packed-switch v5, :pswitch_data_0

    .line 236
    :goto_6
    new-instance v23, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move-wide/from16 v2, v38

    invoke-direct {v0, v14, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 238
    .local v23, notification:Landroid/app/Notification;
    const/16 v38, 0x14

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 240
    if-eqz v34, :cond_11

    if-eqz p2, :cond_11

    .line 241
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lapps/babycaretimer/services/AlarmReceiverService;->parseVibratePattern(Ljava/lang/String;)[J

    move-result-object v37

    .line 242
    .local v37, vibrationPattern:[J
    if-nez v37, :cond_10

    .line 243
    move-object/from16 v0, v23

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v38, v0

    or-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 261
    .end local v37           #vibrationPattern:[J
    :cond_a
    :goto_7
    const/16 v38, -0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/app/Notification;->audioStreamType:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 262
    if-eqz v31, :cond_14

    if-eqz p2, :cond_14

    .line 264
    :try_start_3
    invoke-static/range {v27 .. v27}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    iput-object v0, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 277
    :cond_b
    :goto_8
    if-eqz v20, :cond_c

    .line 278
    :try_start_4
    move-object/from16 v0, v23

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v38, v0

    or-int/lit8 v38, v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/app/Notification;->flags:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 280
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lapps/babycaretimer/services/AlarmReceiverService;->parseLEDPattern(Ljava/lang/String;)[I

    move-result-object v22

    .line 281
    .local v22, ledPatternArray:[I
    if-nez v22, :cond_15

    .line 282
    move-object/from16 v0, v23

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v38, v0

    or-int/lit8 v38, v38, 0x4

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/app/Notification;->defaults:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 296
    .end local v22           #ledPatternArray:[I
    :cond_c
    :goto_9
    :try_start_6
    new-instance v24, Landroid/content/Intent;

    sget-object v38, Lapps/babycaretimer/services/AlarmReceiverService;->_context:Landroid/content/Context;

    const-class v39, Lapps/babycaretimer/services/AlarmNotificationContentIntentService;

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    .local v24, notificationContentIntent:Landroid/content/Intent;
    sget-object v38, Lapps/babycaretimer/services/AlarmReceiverService;->_context:Landroid/content/Context;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v39

    move-object/from16 v2, v24

    move/from16 v3, v40

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 299
    .local v7, contentIntent:Landroid/app/PendingIntent;
    new-instance v25, Landroid/content/Intent;

    sget-object v38, Lapps/babycaretimer/services/AlarmReceiverService;->_context:Landroid/content/Context;

    const-class v39, Lapps/babycaretimer/services/AlarmNotificationDeleteIntentService;

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 300
    .local v25, notificationDeleteIntent:Landroid/content/Intent;
    sget-object v38, Lapps/babycaretimer/services/AlarmReceiverService;->_context:Landroid/content/Context;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v39

    move-object/from16 v2, v25

    move/from16 v3, v40

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 302
    .local v11, deleteIntent:Landroid/app/PendingIntent;
    const-string v38, "keyguard"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lapps/babycaretimer/services/AlarmReceiverService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/KeyguardManager;

    .line 303
    .local v17, keyguardManager:Landroid/app/KeyguardManager;
    const-string v38, "screen_enabled"

    const/16 v39, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v30

    .line 304
    .local v30, screenEnabled:Z
    invoke-virtual/range {v17 .. v17}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v38

    if-eqz v38, :cond_d

    if-eqz v30, :cond_d

    .line 305
    move-object v7, v11

    .line 306
    sget-object v38, Lapps/babycaretimer/services/AlarmReceiverService;->_context:Landroid/content/Context;

    const v39, 0x7f08006d

    invoke-virtual/range {v38 .. v39}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 309
    :cond_d
    move-object/from16 v0, v23

    iput-object v11, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 310
    sget-object v38, Lapps/babycaretimer/services/AlarmReceiverService;->_context:Landroid/content/Context;

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v9, v8, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 311
    const-string v38, "notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lapps/babycaretimer/services/AlarmReceiverService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/app/NotificationManager;

    .line 312
    .local v26, notificationManager:Landroid/app/NotificationManager;
    const/16 v38, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v38

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 314
    const-string v38, "alarm_notification_count"

    const/16 v39, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 315
    .local v4, alarmCount:I
    add-int/lit8 v4, v4, 0x1

    .line 316
    invoke-interface/range {v29 .. v29}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 317
    .local v12, editor:Landroid/content/SharedPreferences$Editor;
    const-string v38, "alarm_notification_count"

    move-object/from16 v0, v38

    invoke-interface {v12, v0, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 318
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_2

    .line 319
    .end local v4           #alarmCount:I
    .end local v5           #alarmType:I
    .end local v6           #audioManager:Landroid/media/AudioManager;
    .end local v7           #contentIntent:Landroid/app/PendingIntent;
    .end local v8           #contentText:Ljava/lang/CharSequence;
    .end local v9           #contentTitle:Ljava/lang/CharSequence;
    .end local v10           #currentAPIVersion:I
    .end local v11           #deleteIntent:Landroid/app/PendingIntent;
    .end local v12           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v14           #icon:I
    .end local v15           #inNormalMode:Z
    .end local v16           #inVibrateMode:Z
    .end local v17           #keyguardManager:Landroid/app/KeyguardManager;
    .end local v18           #ledColor:I
    .end local v19           #ledColorString:Ljava/lang/String;
    .end local v20           #ledEnabled:Z
    .end local v21           #ledPattern:Ljava/lang/String;
    .end local v23           #notification:Landroid/app/Notification;
    .end local v24           #notificationContentIntent:Landroid/content/Intent;
    .end local v25           #notificationDeleteIntent:Landroid/content/Intent;
    .end local v26           #notificationManager:Landroid/app/NotificationManager;
    .end local v27           #notificationSound:Ljava/lang/String;
    .end local v28           #notificationVibrate:Ljava/lang/String;
    .end local v29           #preferences:Landroid/content/SharedPreferences;
    .end local v30           #screenEnabled:Z
    .end local v31           #soundEnabled:Z
    .end local v32           #soundInCallEnabled:Z
    .end local v33           #tickerText:Ljava/lang/CharSequence;
    .end local v34           #vibrateEnabled:Z
    .end local v35           #vibrateInCallEnabled:Z
    .end local v36           #vibratePattern:Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 320
    .local v13, ex:Ljava/lang/Exception;
    sget-boolean v38, Lapps/babycaretimer/services/AlarmReceiverService;->_debug:Z

    if-eqz v38, :cond_1

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "AlarmReceiverService.createNotification() ERROR: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 173
    .end local v13           #ex:Ljava/lang/Exception;
    .restart local v6       #audioManager:Landroid/media/AudioManager;
    .restart local v15       #inNormalMode:Z
    .restart local v16       #inVibrateMode:Z
    .restart local v27       #notificationSound:Ljava/lang/String;
    .restart local v28       #notificationVibrate:Ljava/lang/String;
    .restart local v29       #preferences:Landroid/content/SharedPreferences;
    .restart local v31       #soundEnabled:Z
    .restart local v32       #soundInCallEnabled:Z
    .restart local v34       #vibrateEnabled:Z
    :cond_e
    :try_start_7
    const-string v38, "2"

    move-object/from16 v0, v28

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_6

    if-eqz v16, :cond_6

    .line 174
    const/16 v34, 0x1

    goto/16 :goto_3

    .line 212
    .restart local v5       #alarmType:I
    .restart local v10       #currentAPIVersion:I
    .restart local v14       #icon:I
    .restart local v18       #ledColor:I
    .restart local v19       #ledColorString:Ljava/lang/String;
    .restart local v20       #ledEnabled:Z
    .restart local v21       #ledPattern:Ljava/lang/String;
    .restart local v35       #vibrateInCallEnabled:Z
    .restart local v36       #vibratePattern:Ljava/lang/String;
    :cond_f
    const v14, 0x7f020037

    goto/16 :goto_5

    .line 219
    .restart local v8       #contentText:Ljava/lang/CharSequence;
    .restart local v9       #contentTitle:Ljava/lang/CharSequence;
    .restart local v33       #tickerText:Ljava/lang/CharSequence;
    :pswitch_0
    sget-object v38, Lapps/babycaretimer/services/AlarmReceiverService;->_context:Landroid/content/Context;

    const v39, 0x7f08006e

    invoke-virtual/range {v38 .. v39}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v33

    .line 220
    goto/16 :goto_6

    .line 223
    :pswitch_1
    sget-object v38, Lapps/babycaretimer/services/AlarmReceiverService;->_context:Landroid/content/Context;

    const v39, 0x7f08006f

    invoke-virtual/range {v38 .. v39}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v33

    .line 224
    goto/16 :goto_6

    .line 227
    :pswitch_2
    sget-object v38, Lapps/babycaretimer/services/AlarmReceiverService;->_context:Landroid/content/Context;

    const v39, 0x7f080070

    invoke-virtual/range {v38 .. v39}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v33

    .line 228
    goto/16 :goto_6

    .line 231
    :pswitch_3
    sget-object v38, Lapps/babycaretimer/services/AlarmReceiverService;->_context:Landroid/content/Context;

    const v39, 0x7f080071

    invoke-virtual/range {v38 .. v39}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v33

    goto/16 :goto_6

    .line 245
    .restart local v23       #notification:Landroid/app/Notification;
    .restart local v37       #vibrationPattern:[J
    :cond_10
    move-object/from16 v0, v37

    move-object/from16 v1, v23

    iput-object v0, v1, Landroid/app/Notification;->vibrate:[J

    goto/16 :goto_7

    .line 247
    .end local v37           #vibrationPattern:[J
    :cond_11
    if-eqz v34, :cond_a

    if-nez p2, :cond_a

    if-eqz v35, :cond_a

    if-nez v16, :cond_12

    if-eqz v15, :cond_a

    .line 248
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lapps/babycaretimer/services/AlarmReceiverService;->parseVibratePattern(Ljava/lang/String;)[J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v37

    .line 249
    .restart local v37       #vibrationPattern:[J
    if-eqz v37, :cond_a

    .line 253
    :try_start_8
    const-string v38, "vibrator"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lapps/babycaretimer/services/AlarmReceiverService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/os/Vibrator;

    sput-object v38, Lapps/babycaretimer/services/AlarmReceiverService;->_vibrator:Landroid/os/Vibrator;

    .line 254
    sget-object v38, Lapps/babycaretimer/services/AlarmReceiverService;->_vibrator:Landroid/os/Vibrator;

    const/16 v39, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_7

    .line 255
    :catch_1
    move-exception v13

    .line 256
    .restart local v13       #ex:Ljava/lang/Exception;
    :try_start_9
    sget-boolean v38, Lapps/babycaretimer/services/AlarmReceiverService;->_debug:Z

    if-eqz v38, :cond_a

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "AlarmReceiverService.createNotification() Notification Vibrator ERROR: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 265
    .end local v13           #ex:Ljava/lang/Exception;
    .end local v37           #vibrationPattern:[J
    :catch_2
    move-exception v13

    .line 266
    .restart local v13       #ex:Ljava/lang/Exception;
    sget-boolean v38, Lapps/babycaretimer/services/AlarmReceiverService;->_debug:Z

    if-eqz v38, :cond_13

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "AlarmReceiverService.createNotification() Notification Sound Set ERROR: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    .line 267
    :cond_13
    move-object/from16 v0, v23

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v38, v0

    or-int/lit8 v38, v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/app/Notification;->defaults:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_8

    .line 269
    .end local v13           #ex:Ljava/lang/Exception;
    :cond_14
    if-eqz v31, :cond_b

    if-nez p2, :cond_b

    if-eqz v32, :cond_b

    if-eqz v15, :cond_b

    .line 271
    :try_start_a
    new-instance v38, Lapps/babycaretimer/services/AlarmReceiverService$playNotificationMediaFileAsyncTask;

    const/16 v39, 0x0

    invoke-direct/range {v38 .. v39}, Lapps/babycaretimer/services/AlarmReceiverService$playNotificationMediaFileAsyncTask;-><init>(Lapps/babycaretimer/services/AlarmReceiverService$1;)V

    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    aput-object v27, v39, v40

    invoke-virtual/range {v38 .. v39}, Lapps/babycaretimer/services/AlarmReceiverService$playNotificationMediaFileAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_8

    .line 272
    :catch_3
    move-exception v13

    .line 273
    .restart local v13       #ex:Ljava/lang/Exception;
    :try_start_b
    sget-boolean v38, Lapps/babycaretimer/services/AlarmReceiverService;->_debug:Z

    if-eqz v38, :cond_b

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "AlarmReceiverService.createNotification() Notification Sound Play ERROR: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_8

    .line 285
    .end local v13           #ex:Ljava/lang/Exception;
    .restart local v22       #ledPatternArray:[I
    :cond_15
    :try_start_c
    move/from16 v0, v18

    move-object/from16 v1, v23

    iput v0, v1, Landroid/app/Notification;->ledARGB:I

    .line 287
    const/16 v38, 0x0

    aget v38, v22, v38

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/app/Notification;->ledOnMS:I

    .line 288
    const/16 v38, 0x1

    aget v38, v22, v38

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/app/Notification;->ledOffMS:I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_9

    .line 290
    .end local v22           #ledPatternArray:[I
    :catch_4
    move-exception v13

    .line 291
    .restart local v13       #ex:Ljava/lang/Exception;
    :try_start_d
    move-object/from16 v0, v23

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v38, v0

    or-int/lit8 v38, v38, 0x4

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/app/Notification;->defaults:I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_9

    .line 197
    .end local v5           #alarmType:I
    .end local v8           #contentText:Ljava/lang/CharSequence;
    .end local v9           #contentTitle:Ljava/lang/CharSequence;
    .end local v10           #currentAPIVersion:I
    .end local v13           #ex:Ljava/lang/Exception;
    .end local v14           #icon:I
    .end local v23           #notification:Landroid/app/Notification;
    .end local v33           #tickerText:Ljava/lang/CharSequence;
    :catch_5
    move-exception v38

    goto/16 :goto_4

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private parseLEDPattern(Ljava/lang/String;)[I
    .locals 9
    .parameter "ledPattern"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x2

    .line 421
    sget-boolean v7, Lapps/babycaretimer/services/AlarmReceiverService;->_debug:Z

    if-eqz v7, :cond_0

    const-string v7, "AlarmReceiverService.parseLEDPattern()"

    invoke-static {v7}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 422
    :cond_0
    const v0, 0xea60

    .line 423
    .local v0, LED_PATTERN_MAX_LENGTH:I
    new-array v4, v8, [I

    fill-array-data v4, :array_0

    .line 424
    .local v4, ledPatternArray:[I
    const-string v7, ","

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 425
    .local v5, ledPatternStringArray:[Ljava/lang/String;
    array-length v7, v5

    if-eq v7, v8, :cond_2

    move-object v4, v6

    .line 444
    .end local v4           #ledPatternArray:[I
    :cond_1
    :goto_0
    return-object v4

    .line 428
    .restart local v4       #ledPatternArray:[I
    :cond_2
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v8, :cond_1

    .line 429
    const/4 v1, 0x0

    .line 431
    .local v1, blinkLength:I
    :try_start_0
    aget-object v7, v5, v3

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 436
    if-gez v1, :cond_3

    .line 437
    const/4 v1, 0x0

    .line 439
    :cond_3
    const v7, 0xea60

    if-le v1, v7, :cond_4

    .line 440
    const v1, 0xea60

    .line 442
    :cond_4
    aput v1, v4, v3

    .line 428
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 432
    :catch_0
    move-exception v2

    .line 433
    .local v2, ex:Ljava/lang/Exception;
    sget-boolean v7, Lapps/babycaretimer/services/AlarmReceiverService;->_debug:Z

    if-eqz v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AlarmReceiverService.parseLEDPattern() ERROR: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    :cond_5
    move-object v4, v6

    .line 434
    goto :goto_0

    .line 423
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private parseVibratePattern(Ljava/lang/String;)[J
    .locals 12
    .parameter "vibratePattern"

    .prologue
    .line 379
    sget-boolean v10, Lapps/babycaretimer/services/AlarmReceiverService;->_debug:Z

    if-eqz v10, :cond_0

    const-string v10, "AlarmReceiverService.parseVibratePattern()"

    invoke-static {v10}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 380
    :cond_0
    const v0, 0xea60

    .line 381
    .local v0, VIBRATE_PATTERN_MAX_LENGTH:I
    const/16 v1, 0x64

    .line 382
    .local v1, VIBRATE_PATTERN_MAX_SIZE:I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 383
    .local v8, vibratePatternArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v7, 0x0

    .line 384
    .local v7, vibratePatternArray:[J
    const-string v10, ","

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 385
    .local v9, vibratePatternStringArray:[Ljava/lang/String;
    array-length v2, v9

    .line 386
    .local v2, arraySize:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_4

    .line 387
    const-wide/16 v5, 0x0

    .line 389
    .local v5, vibrateLength:J
    :try_start_0
    aget-object v10, v9, v4

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    .line 394
    const-wide/16 v10, 0x0

    cmp-long v10, v5, v10

    if-gez v10, :cond_1

    .line 395
    const-wide/16 v5, 0x0

    .line 397
    :cond_1
    const-wide/32 v10, 0xea60

    cmp-long v10, v5, v10

    if-lez v10, :cond_2

    .line 398
    const-wide/32 v5, 0xea60

    .line 400
    :cond_2
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 390
    :catch_0
    move-exception v3

    .line 391
    .local v3, ex:Ljava/lang/Exception;
    sget-boolean v10, Lapps/babycaretimer/services/AlarmReceiverService;->_debug:Z

    if-eqz v10, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AlarmReceiverService.parseVibratePattern() ERROR: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    .line 392
    :cond_3
    const/4 v10, 0x0

    .line 410
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v5           #vibrateLength:J
    :goto_1
    return-object v10

    .line 402
    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 403
    const/16 v10, 0x64

    if-le v2, v10, :cond_5

    .line 404
    const/16 v2, 0x64

    .line 406
    :cond_5
    new-array v7, v2, [J

    .line 407
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_6

    .line 408
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    aput-wide v10, v7, v4

    .line 407
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    move-object v10, v7

    .line 410
    goto :goto_1
.end method

.method private startAlarmActivity(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    .line 118
    sget-boolean v5, Lapps/babycaretimer/services/AlarmReceiverService;->_debug:Z

    if-eqz v5, :cond_0

    const-string v5, "AlarmReceiverService.startAlarmActivity()"

    invoke-static {v5}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 120
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lapps/babycaretimer/services/AlarmReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sput-object v5, Lapps/babycaretimer/services/AlarmReceiverService;->_context:Landroid/content/Context;

    .line 121
    sget-boolean v5, Lapps/babycaretimer/services/AlarmReceiverService;->_debug:Z

    if-eqz v5, :cond_1

    const-string v5, "AlarmReceiverService.startAlarmActivity() 1"

    invoke-static {v5}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 122
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 123
    .local v1, bundle:Landroid/os/Bundle;
    sget-boolean v5, Lapps/babycaretimer/services/AlarmReceiverService;->_debug:Z

    if-eqz v5, :cond_2

    const-string v5, "AlarmReceiverService.startAlarmActivity() 2"

    invoke-static {v5}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 125
    :cond_2
    sget-object v5, Lapps/babycaretimer/services/AlarmReceiverService;->_context:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 126
    .local v4, telemanager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v5

    if-nez v5, :cond_8

    const/4 v2, 0x1

    .line 127
    .local v2, callStateIdle:Z
    :goto_0
    if-eqz v2, :cond_6

    .line 128
    new-instance v0, Landroid/content/Intent;

    sget-object v5, Lapps/babycaretimer/services/AlarmReceiverService;->_context:Landroid/content/Context;

    const-class v6, Lapps/babycaretimer/AlarmActivity;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    .local v0, alarmIntent:Landroid/content/Intent;
    sget-boolean v5, Lapps/babycaretimer/services/AlarmReceiverService;->_debug:Z

    if-eqz v5, :cond_3

    const-string v5, "AlarmReceiverService.startAlarmActivity() 3"

    invoke-static {v5}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 130
    :cond_3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 131
    sget-boolean v5, Lapps/babycaretimer/services/AlarmReceiverService;->_debug:Z

    if-eqz v5, :cond_4

    const-string v5, "AlarmReceiverService.startAlarmActivity()4"

    invoke-static {v5}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 132
    :cond_4
    const/high16 v5, 0x1880

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 133
    sget-object v5, Lapps/babycaretimer/services/AlarmReceiverService;->_context:Landroid/content/Context;

    invoke-static {v5}, Lapps/babycaretimer/common/Common;->acquireWakeLock(Landroid/content/Context;)V

    .line 134
    sget-boolean v5, Lapps/babycaretimer/services/AlarmReceiverService;->_debug:Z

    if-eqz v5, :cond_5

    const-string v5, "AlarmReceiverService.startAlarmActivity() 5"

    invoke-static {v5}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 135
    :cond_5
    sget-object v5, Lapps/babycaretimer/services/AlarmReceiverService;->_context:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 138
    .end local v0           #alarmIntent:Landroid/content/Intent;
    :cond_6
    invoke-direct {p0, v1, v2}, Lapps/babycaretimer/services/AlarmReceiverService;->createNotification(Landroid/os/Bundle;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #callStateIdle:Z
    .end local v4           #telemanager:Landroid/telephony/TelephonyManager;
    :cond_7
    :goto_1
    return-void

    .line 126
    .restart local v1       #bundle:Landroid/os/Bundle;
    .restart local v4       #telemanager:Landroid/telephony/TelephonyManager;
    :cond_8
    const/4 v2, 0x0

    goto :goto_0

    .line 139
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v4           #telemanager:Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v3

    .line 140
    .local v3, ex:Ljava/lang/Exception;
    sget-boolean v5, Lapps/babycaretimer/services/AlarmReceiverService;->_debug:Z

    if-eqz v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AlarmReceiverService.startAlarmActivity() ERROR: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static stopMediaPlayer()V
    .locals 3

    .prologue
    .line 68
    invoke-static {}, Lapps/babycaretimer/log/Log;->getDebug()Z

    move-result v1

    sput-boolean v1, Lapps/babycaretimer/services/AlarmReceiverService;->_debug:Z

    .line 69
    sget-boolean v1, Lapps/babycaretimer/services/AlarmReceiverService;->_debug:Z

    if-eqz v1, :cond_0

    const-string v1, "AlarmReceiverService.stopMediaPlayer()"

    invoke-static {v1}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 71
    :cond_0
    :try_start_0
    sget-object v1, Lapps/babycaretimer/services/AlarmReceiverService;->_mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 72
    sget-object v1, Lapps/babycaretimer/services/AlarmReceiverService;->_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .local v0, ex:Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void

    .line 74
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 75
    .restart local v0       #ex:Ljava/lang/Exception;
    sget-boolean v1, Lapps/babycaretimer/services/AlarmReceiverService;->_debug:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmReceiverService.stopMediaPlayer() ERROR: "

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


# virtual methods
.method protected doWakefulWork(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 103
    invoke-static {}, Lapps/babycaretimer/log/Log;->getDebug()Z

    move-result v0

    sput-boolean v0, Lapps/babycaretimer/services/AlarmReceiverService;->_debug:Z

    .line 104
    sget-boolean v0, Lapps/babycaretimer/services/AlarmReceiverService;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "AlarmReceiverService.doWakefulWork()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 105
    :cond_0
    invoke-direct {p0, p1}, Lapps/babycaretimer/services/AlarmReceiverService;->startAlarmActivity(Landroid/content/Intent;)V

    .line 106
    return-void
.end method
