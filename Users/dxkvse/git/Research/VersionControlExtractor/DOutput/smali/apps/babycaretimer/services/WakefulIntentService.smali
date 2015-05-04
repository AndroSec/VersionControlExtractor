.class public abstract Lapps/babycaretimer/services/WakefulIntentService;
.super Landroid/app/IntentService;
.source "WakefulIntentService.java"


# static fields
.field public static final LOCK_NAME_STATIC:Ljava/lang/String; = "app.droidnotify.wakefullintentservice"

.field private static _debug:Z

.field private static volatile _lockStatic:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lapps/babycaretimer/services/WakefulIntentService;->_lockStatic:Landroid/os/PowerManager$WakeLock;

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lapps/babycaretimer/services/WakefulIntentService;->_debug:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lapps/babycaretimer/log/Log;->getDebug()Z

    move-result v0

    sput-boolean v0, Lapps/babycaretimer/services/WakefulIntentService;->_debug:Z

    .line 52
    sget-boolean v0, Lapps/babycaretimer/services/WakefulIntentService;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "WakefulIntentService.WakefulIntentService()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 53
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lapps/babycaretimer/services/WakefulIntentService;->setIntentRedelivery(Z)V

    .line 54
    return-void
.end method

.method private static declared-synchronized getLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;
    .locals 4
    .parameter "context"

    .prologue
    .line 134
    const-class v2, Lapps/babycaretimer/services/WakefulIntentService;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lapps/babycaretimer/services/WakefulIntentService;->_debug:Z

    if-eqz v1, :cond_0

    const-string v1, "WakefulIntentService.getLock()"

    invoke-static {v1}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 135
    :cond_0
    sget-object v1, Lapps/babycaretimer/services/WakefulIntentService;->_lockStatic:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_1

    .line 136
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 137
    .local v0, powerManager:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v3, "app.droidnotify.wakefullintentservice"

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lapps/babycaretimer/services/WakefulIntentService;->_lockStatic:Landroid/os/PowerManager$WakeLock;

    .line 138
    sget-object v1, Lapps/babycaretimer/services/WakefulIntentService;->_lockStatic:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 140
    .end local v0           #powerManager:Landroid/os/PowerManager;
    :cond_1
    sget-object v1, Lapps/babycaretimer/services/WakefulIntentService;->_lockStatic:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 134
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static sendWakefulWork(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 67
    sget-boolean v0, Lapps/babycaretimer/services/WakefulIntentService;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "WakefulIntentService.sendWakefulWork()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 68
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lapps/babycaretimer/services/WakefulIntentService;->getLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 69
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 70
    return-void
.end method

.method public static sendWakefulWork(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, clsService:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-boolean v0, Lapps/babycaretimer/services/WakefulIntentService;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "WakefulIntentService.sendWakefulWork()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 80
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0}, Lapps/babycaretimer/services/WakefulIntentService;->sendWakefulWork(Landroid/content/Context;Landroid/content/Intent;)V

    .line 81
    return-void
.end method


# virtual methods
.method protected abstract doWakefulWork(Landroid/content/Intent;)V
.end method

.method protected final onHandleIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 111
    sget-boolean v1, Lapps/babycaretimer/services/WakefulIntentService;->_debug:Z

    if-eqz v1, :cond_0

    const-string v1, "WakefulIntentService.onHandleIntent()"

    invoke-static {v1}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 113
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lapps/babycaretimer/services/WakefulIntentService;->doWakefulWork(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    invoke-virtual {p0}, Lapps/babycaretimer/services/WakefulIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lapps/babycaretimer/services/WakefulIntentService;->getLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 118
    sget-boolean v1, Lapps/babycaretimer/services/WakefulIntentService;->_debug:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WakefulIntentService.onHandleIntent() Wakelock Released...Is it still held? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lapps/babycaretimer/services/WakefulIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lapps/babycaretimer/services/WakefulIntentService;->getLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 120
    :cond_1
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, ex:Ljava/lang/Exception;
    :try_start_1
    sget-boolean v1, Lapps/babycaretimer/services/WakefulIntentService;->_debug:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WakefulIntentService.onHandleIntent() ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :cond_2
    invoke-virtual {p0}, Lapps/babycaretimer/services/WakefulIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lapps/babycaretimer/services/WakefulIntentService;->getLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 118
    sget-boolean v1, Lapps/babycaretimer/services/WakefulIntentService;->_debug:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WakefulIntentService.onHandleIntent() Wakelock Released...Is it still held? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lapps/babycaretimer/services/WakefulIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lapps/babycaretimer/services/WakefulIntentService;->getLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lapps/babycaretimer/services/WakefulIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lapps/babycaretimer/services/WakefulIntentService;->getLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 118
    sget-boolean v2, Lapps/babycaretimer/services/WakefulIntentService;->_debug:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WakefulIntentService.onHandleIntent() Wakelock Released...Is it still held? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lapps/babycaretimer/services/WakefulIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lapps/babycaretimer/services/WakefulIntentService;->getLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    :cond_3
    throw v1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 92
    sget-boolean v0, Lapps/babycaretimer/services/WakefulIntentService;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "WakefulIntentService.onStartCommand()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 93
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p0}, Lapps/babycaretimer/services/WakefulIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lapps/babycaretimer/services/WakefulIntentService;->getLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 96
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    .line 97
    const/4 v0, 0x3

    return v0
.end method
