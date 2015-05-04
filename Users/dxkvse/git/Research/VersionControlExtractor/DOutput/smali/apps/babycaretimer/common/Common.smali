.class public Lapps/babycaretimer/common/Common;
.super Ljava/lang/Object;
.source "Common.java"


# static fields
.field private static _debug:Z

.field private static _keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private static _partialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static _wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lapps/babycaretimer/common/Common;->_debug:Z

    .line 25
    sput-object v1, Lapps/babycaretimer/common/Common;->_partialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 26
    sput-object v1, Lapps/babycaretimer/common/Common;->_wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 27
    sput-object v1, Lapps/babycaretimer/common/Common;->_keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acquireKeyguardLock(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 424
    invoke-static {}, Lapps/babycaretimer/log/Log;->getDebug()Z

    move-result v3

    sput-boolean v3, Lapps/babycaretimer/common/Common;->_debug:Z

    .line 425
    sget-boolean v3, Lapps/babycaretimer/common/Common;->_debug:Z

    if-eqz v3, :cond_0

    const-string v3, "Common.acquireKeyguardLock()"

    invoke-static {v3}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 427
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 428
    .local v2, preferences:Landroid/content/SharedPreferences;
    const-string v3, "keyguard"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 429
    .local v1, keyguardManager:Landroid/app/KeyguardManager;
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "screen_enabled"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "keyguard_enabled"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 430
    sget-object v3, Lapps/babycaretimer/common/Common;->_keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-nez v3, :cond_1

    .line 431
    const-string v3, "BABY_CARE_TIMER_KEYGUARD"

    invoke-virtual {v1, v3}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v3

    sput-object v3, Lapps/babycaretimer/common/Common;->_keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 433
    :cond_1
    sget-object v3, Lapps/babycaretimer/common/Common;->_keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v3}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    .end local v1           #keyguardManager:Landroid/app/KeyguardManager;
    .end local v2           #preferences:Landroid/content/SharedPreferences;
    :cond_2
    :goto_0
    return-void

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, ex:Ljava/lang/Exception;
    sget-boolean v3, Lapps/babycaretimer/common/Common;->_debug:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Common.acquireKeyguardLock() ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static acquirePartialWakeLock(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 335
    invoke-static {}, Lapps/babycaretimer/log/Log;->getDebug()Z

    move-result v2

    sput-boolean v2, Lapps/babycaretimer/common/Common;->_debug:Z

    .line 336
    sget-boolean v2, Lapps/babycaretimer/common/Common;->_debug:Z

    if-eqz v2, :cond_0

    const-string v2, "Common.aquirePartialWakelock()"

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 338
    :cond_0
    :try_start_0
    sget-object v2, Lapps/babycaretimer/common/Common;->_partialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_1

    .line 339
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 340
    .local v1, powerManager:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "BABY_CARE_TIMER_WAKELOCK"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    sput-object v2, Lapps/babycaretimer/common/Common;->_partialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 341
    sget-object v2, Lapps/babycaretimer/common/Common;->_partialWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 343
    .end local v1           #powerManager:Landroid/os/PowerManager;
    :cond_1
    sget-object v2, Lapps/babycaretimer/common/Common;->_partialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :cond_2
    :goto_0
    return-void

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, ex:Ljava/lang/Exception;
    sget-boolean v2, Lapps/babycaretimer/common/Common;->_debug:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Common.aquirePartialWakelock() ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static acquireWakeLock(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 373
    invoke-static {}, Lapps/babycaretimer/log/Log;->getDebug()Z

    move-result v3

    sput-boolean v3, Lapps/babycaretimer/common/Common;->_debug:Z

    .line 374
    sget-boolean v3, Lapps/babycaretimer/common/Common;->_debug:Z

    if-eqz v3, :cond_0

    const-string v3, "Common.aquireWakelock()"

    invoke-static {v3}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 376
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 377
    .local v2, preferences:Landroid/content/SharedPreferences;
    sget-object v3, Lapps/babycaretimer/common/Common;->_wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v3, :cond_1

    .line 378
    const-string v3, "power"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 379
    .local v1, powerManager:Landroid/os/PowerManager;
    const-string v3, "screen_enabled"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 380
    const-string v3, "screen_dim_enabled"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 381
    const v3, 0x10000006

    const-string v4, "BABY_CARE_TIMER_WAKELOCK"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    sput-object v3, Lapps/babycaretimer/common/Common;->_wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 388
    :goto_0
    sget-object v3, Lapps/babycaretimer/common/Common;->_wakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 390
    .end local v1           #powerManager:Landroid/os/PowerManager;
    :cond_1
    sget-object v3, Lapps/babycaretimer/common/Common;->_wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_2

    .line 391
    sget-object v3, Lapps/babycaretimer/common/Common;->_wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 393
    :cond_2
    invoke-static {}, Lapps/babycaretimer/common/Common;->clearPartialWakeLock()V

    .line 397
    .end local v2           #preferences:Landroid/content/SharedPreferences;
    :cond_3
    :goto_1
    return-void

    .line 383
    .restart local v1       #powerManager:Landroid/os/PowerManager;
    .restart local v2       #preferences:Landroid/content/SharedPreferences;
    :cond_4
    const v3, 0x1000000a

    const-string v4, "BABY_CARE_TIMER_WAKELOCK"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    sput-object v3, Lapps/babycaretimer/common/Common;->_wakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 394
    .end local v1           #powerManager:Landroid/os/PowerManager;
    .end local v2           #preferences:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 395
    .local v0, ex:Ljava/lang/Exception;
    sget-boolean v3, Lapps/babycaretimer/common/Common;->_debug:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Common.aquireWakelock() ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 386
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v1       #powerManager:Landroid/os/PowerManager;
    .restart local v2       #preferences:Landroid/content/SharedPreferences;
    :cond_5
    const/4 v3, 0x1

    :try_start_1
    const-string v4, "BABY_CARE_TIMER_WAKELOCK"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    sput-object v3, Lapps/babycaretimer/common/Common;->_wakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static clearKeyguardLock()V
    .locals 3

    .prologue
    .line 444
    invoke-static {}, Lapps/babycaretimer/log/Log;->getDebug()Z

    move-result v1

    sput-boolean v1, Lapps/babycaretimer/common/Common;->_debug:Z

    .line 445
    sget-boolean v1, Lapps/babycaretimer/common/Common;->_debug:Z

    if-eqz v1, :cond_0

    const-string v1, "Common.clearKeyguardLock()"

    invoke-static {v1}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 447
    :cond_0
    :try_start_0
    sget-object v1, Lapps/babycaretimer/common/Common;->_keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v1, :cond_1

    .line 448
    sget-object v1, Lapps/babycaretimer/common/Common;->_keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v1}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    .local v0, ex:Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void

    .line 450
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 451
    .restart local v0       #ex:Ljava/lang/Exception;
    sget-boolean v1, Lapps/babycaretimer/common/Common;->_debug:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Common.clearKeyguardLock() ERROR: "

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

.method public static clearPartialWakeLock()V
    .locals 3

    .prologue
    .line 355
    invoke-static {}, Lapps/babycaretimer/log/Log;->getDebug()Z

    move-result v1

    sput-boolean v1, Lapps/babycaretimer/common/Common;->_debug:Z

    .line 356
    sget-boolean v1, Lapps/babycaretimer/common/Common;->_debug:Z

    if-eqz v1, :cond_0

    const-string v1, "Common.clearPartialWakelock()"

    invoke-static {v1}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 358
    :cond_0
    :try_start_0
    sget-object v1, Lapps/babycaretimer/common/Common;->_partialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    .line 359
    sget-object v1, Lapps/babycaretimer/common/Common;->_partialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    .local v0, ex:Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void

    .line 361
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 362
    .restart local v0       #ex:Ljava/lang/Exception;
    sget-boolean v1, Lapps/babycaretimer/common/Common;->_debug:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Common.clearPartialWakelock() ERROR: "

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

.method public static clearWakeLock()V
    .locals 3

    .prologue
    .line 405
    invoke-static {}, Lapps/babycaretimer/log/Log;->getDebug()Z

    move-result v1

    sput-boolean v1, Lapps/babycaretimer/common/Common;->_debug:Z

    .line 406
    sget-boolean v1, Lapps/babycaretimer/common/Common;->_debug:Z

    if-eqz v1, :cond_0

    const-string v1, "Common.clearWakelock()"

    invoke-static {v1}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 408
    :cond_0
    :try_start_0
    invoke-static {}, Lapps/babycaretimer/common/Common;->clearPartialWakeLock()V

    .line 409
    sget-object v1, Lapps/babycaretimer/common/Common;->_wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    .line 410
    sget-object v1, Lapps/babycaretimer/common/Common;->_wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    .local v0, ex:Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void

    .line 412
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 413
    .restart local v0       #ex:Ljava/lang/Exception;
    sget-boolean v1, Lapps/babycaretimer/common/Common;->_debug:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Common.clearWakelock() ERROR: "

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

.method public static getAlarmTime(Landroid/content/Context;I)J
    .locals 7
    .parameter "context"
    .parameter "alarmType"

    .prologue
    .line 227
    sget-boolean v4, Lapps/babycaretimer/common/Common;->_debug:Z

    if-eqz v4, :cond_0

    const-string v4, "Common.getAlarmTime()"

    invoke-static {v4}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 228
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 229
    .local v3, preferences:Landroid/content/SharedPreferences;
    const-wide/16 v0, 0x0

    .line 231
    .local v0, alarmTime:J
    packed-switch p1, :pswitch_data_0

    .line 252
    :cond_1
    :goto_0
    return-wide v0

    .line 233
    :pswitch_0
    :try_start_0
    const-string v4, "diaper_alarm_time"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 234
    goto :goto_0

    .line 237
    :pswitch_1
    const-string v4, "bottle_alarm_time"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 238
    goto :goto_0

    .line 241
    :pswitch_2
    const-string v4, "sleep_alarm_time"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 242
    goto :goto_0

    .line 245
    :pswitch_3
    const-string v4, "custom_alarm_time"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 249
    :catch_0
    move-exception v2

    .line 250
    .local v2, ex:Ljava/lang/Exception;
    sget-boolean v4, Lapps/babycaretimer/common/Common;->_debug:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Common.getAlarmTime() ERROR: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getBaseTime(Landroid/content/Context;I)J
    .locals 7
    .parameter "context"
    .parameter "alarmType"

    .prologue
    .line 42
    sget-boolean v4, Lapps/babycaretimer/common/Common;->_debug:Z

    if-eqz v4, :cond_0

    const-string v4, "Common.getBaseTime()"

    invoke-static {v4}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 43
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 44
    .local v3, preferences:Landroid/content/SharedPreferences;
    const-wide/16 v0, 0x0

    .line 46
    .local v0, baseTime:J
    packed-switch p1, :pswitch_data_0

    .line 67
    :cond_1
    :goto_0
    return-wide v0

    .line 48
    :pswitch_0
    :try_start_0
    const-string v4, "diaper_base_time"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 49
    goto :goto_0

    .line 52
    :pswitch_1
    const-string v4, "bottle_base_time"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 53
    goto :goto_0

    .line 56
    :pswitch_2
    const-string v4, "sleep_base_time"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 57
    goto :goto_0

    .line 60
    :pswitch_3
    const-string v4, "custom_base_time"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v2

    .line 65
    .local v2, ex:Ljava/lang/Exception;
    sget-boolean v4, Lapps/babycaretimer/common/Common;->_debug:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Common.getBaseTime() ERROR: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getTimerOffset(Landroid/content/Context;I)J
    .locals 7
    .parameter "context"
    .parameter "alarmType"

    .prologue
    .line 190
    sget-boolean v4, Lapps/babycaretimer/common/Common;->_debug:Z

    if-eqz v4, :cond_0

    const-string v4, "Common.getTimerOffset()"

    invoke-static {v4}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 191
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 192
    .local v3, preferences:Landroid/content/SharedPreferences;
    const-wide/16 v0, 0x0

    .line 194
    .local v0, alarmTimerOffset:J
    packed-switch p1, :pswitch_data_0

    .line 215
    :cond_1
    :goto_0
    return-wide v0

    .line 196
    :pswitch_0
    :try_start_0
    const-string v4, "diaper_timer_offset"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 197
    goto :goto_0

    .line 200
    :pswitch_1
    const-string v4, "bottle_timer_offset"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 201
    goto :goto_0

    .line 204
    :pswitch_2
    const-string v4, "sleep_timer_offset"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 205
    goto :goto_0

    .line 208
    :pswitch_3
    const-string v4, "custom_timer_offset"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 212
    :catch_0
    move-exception v2

    .line 213
    .local v2, ex:Ljava/lang/Exception;
    sget-boolean v4, Lapps/babycaretimer/common/Common;->_debug:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Common.getTimerOffset() ERROR: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getTimerStartTime(Landroid/content/Context;I)J
    .locals 7
    .parameter "context"
    .parameter "alarmType"

    .prologue
    .line 153
    sget-boolean v4, Lapps/babycaretimer/common/Common;->_debug:Z

    if-eqz v4, :cond_0

    const-string v4, "Common.getAlarmStartTime()"

    invoke-static {v4}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 154
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 155
    .local v3, preferences:Landroid/content/SharedPreferences;
    const-wide/16 v0, 0x0

    .line 157
    .local v0, alarmTimerStart:J
    packed-switch p1, :pswitch_data_0

    .line 178
    :cond_1
    :goto_0
    return-wide v0

    .line 159
    :pswitch_0
    :try_start_0
    const-string v4, "diaper_timer_start"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 160
    goto :goto_0

    .line 163
    :pswitch_1
    const-string v4, "bottle_timer_start"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 164
    goto :goto_0

    .line 167
    :pswitch_2
    const-string v4, "sleep_timer_start"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 168
    goto :goto_0

    .line 171
    :pswitch_3
    const-string v4, "custom_timer_start"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v2

    .line 176
    .local v2, ex:Ljava/lang/Exception;
    sget-boolean v4, Lapps/babycaretimer/common/Common;->_debug:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Common.getAlarmStartTime() ERROR: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static isAlarmActive(Landroid/content/Context;I)Z
    .locals 5
    .parameter "context"
    .parameter "alarmType"

    .prologue
    .line 79
    sget-boolean v3, Lapps/babycaretimer/common/Common;->_debug:Z

    if-eqz v3, :cond_0

    const-string v3, "Common.alarmIsActive()"

    invoke-static {v3}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 80
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 81
    .local v2, preferences:Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .line 83
    .local v1, isActive:Z
    packed-switch p1, :pswitch_data_0

    .line 104
    :cond_1
    :goto_0
    return v1

    .line 85
    :pswitch_0
    :try_start_0
    const-string v3, "diaper_alarm_active"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 86
    goto :goto_0

    .line 89
    :pswitch_1
    const-string v3, "bottle_alarm_active"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 90
    goto :goto_0

    .line 93
    :pswitch_2
    const-string v3, "sleep_alarm_active"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 94
    goto :goto_0

    .line 97
    :pswitch_3
    const-string v3, "custom_alarm_active"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, ex:Ljava/lang/Exception;
    sget-boolean v3, Lapps/babycaretimer/common/Common;->_debug:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Common.alarmIsActive() ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static isAlarmRecurring(Landroid/content/Context;I)Z
    .locals 5
    .parameter "context"
    .parameter "alarmType"

    .prologue
    .line 301
    sget-boolean v3, Lapps/babycaretimer/common/Common;->_debug:Z

    if-eqz v3, :cond_0

    const-string v3, "Common.isAlarmRecurring()"

    invoke-static {v3}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 302
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 303
    .local v2, preferences:Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .line 305
    .local v1, isRecurring:Z
    packed-switch p1, :pswitch_data_0

    .line 326
    :cond_1
    :goto_0
    return v1

    .line 307
    :pswitch_0
    :try_start_0
    const-string v3, "diaper_alarm_recurring"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 308
    goto :goto_0

    .line 311
    :pswitch_1
    const-string v3, "bottle_alarm_recurring"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 312
    goto :goto_0

    .line 315
    :pswitch_2
    const-string v3, "sleep_alarm_recurring"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 316
    goto :goto_0

    .line 319
    :pswitch_3
    const-string v3, "custom_alarm_recurring"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, ex:Ljava/lang/Exception;
    sget-boolean v3, Lapps/babycaretimer/common/Common;->_debug:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Common.isAlarmRecurring() ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static isAlarmSnoozed(Landroid/content/Context;I)Z
    .locals 5
    .parameter "context"
    .parameter "timerType"

    .prologue
    .line 264
    sget-boolean v3, Lapps/babycaretimer/common/Common;->_debug:Z

    if-eqz v3, :cond_0

    const-string v3, "Common.isAlarmSnoozed()"

    invoke-static {v3}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 265
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 266
    .local v2, preferences:Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .line 268
    .local v1, isSnoozed:Z
    packed-switch p1, :pswitch_data_0

    .line 289
    :cond_1
    :goto_0
    return v1

    .line 270
    :pswitch_0
    :try_start_0
    const-string v3, "diaper_alarm_snooze"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 271
    goto :goto_0

    .line 274
    :pswitch_1
    const-string v3, "bottle_alarm_snooze"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 275
    goto :goto_0

    .line 278
    :pswitch_2
    const-string v3, "sleep_alarm_snooze"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 279
    goto :goto_0

    .line 282
    :pswitch_3
    const-string v3, "custom_alarm_snooze"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, ex:Ljava/lang/Exception;
    sget-boolean v3, Lapps/babycaretimer/common/Common;->_debug:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Common.isAlarmSnoozed() ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 268
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static isTimerActive(Landroid/content/Context;I)Z
    .locals 5
    .parameter "context"
    .parameter "timerType"

    .prologue
    .line 116
    sget-boolean v3, Lapps/babycaretimer/common/Common;->_debug:Z

    if-eqz v3, :cond_0

    const-string v3, "Common.timerIsActive()"

    invoke-static {v3}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 117
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 118
    .local v2, preferences:Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .line 120
    .local v1, isActive:Z
    packed-switch p1, :pswitch_data_0

    .line 141
    :cond_1
    :goto_0
    return v1

    .line 122
    :pswitch_0
    :try_start_0
    const-string v3, "diaper_timer_active"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 123
    goto :goto_0

    .line 126
    :pswitch_1
    const-string v3, "bottle_timer_active"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 127
    goto :goto_0

    .line 130
    :pswitch_2
    const-string v3, "sleep_timer_active"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 131
    goto :goto_0

    .line 134
    :pswitch_3
    const-string v3, "custom_timer_active"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, ex:Ljava/lang/Exception;
    sget-boolean v3, Lapps/babycaretimer/common/Common;->_debug:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Common.timerIsActive() ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
