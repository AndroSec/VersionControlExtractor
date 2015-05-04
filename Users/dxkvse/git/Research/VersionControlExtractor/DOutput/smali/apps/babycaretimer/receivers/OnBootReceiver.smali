.class public Lapps/babycaretimer/receivers/OnBootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OnBootReceiver.java"


# instance fields
.field private _debug:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lapps/babycaretimer/receivers/OnBootReceiver;->_debug:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 37
    invoke-static {}, Lapps/babycaretimer/log/Log;->getDebug()Z

    move-result v1

    iput-boolean v1, p0, Lapps/babycaretimer/receivers/OnBootReceiver;->_debug:Z

    .line 38
    iget-boolean v1, p0, Lapps/babycaretimer/receivers/OnBootReceiver;->_debug:Z

    if-eqz v1, :cond_0

    const-string v1, "OnBootReceiver.onReceive()"

    invoke-static {v1}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 40
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lapps/babycaretimer/services/OnBootBroadcastReceiverService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v1}, Lapps/babycaretimer/services/WakefulIntentService;->sendWakefulWork(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_1
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, ex:Ljava/lang/Exception;
    iget-boolean v1, p0, Lapps/babycaretimer/receivers/OnBootReceiver;->_debug:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnBootReceiver.onReceive() ERROR: "

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
