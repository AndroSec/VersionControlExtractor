.class Lapps/babycaretimer/services/AlarmReceiverService$playNotificationMediaFileAsyncTask;
.super Landroid/os/AsyncTask;
.source "AlarmReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapps/babycaretimer/services/AlarmReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "playNotificationMediaFileAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lapps/babycaretimer/services/AlarmReceiverService$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 329
    invoke-direct {p0}, Lapps/babycaretimer/services/AlarmReceiverService$playNotificationMediaFileAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 329
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lapps/babycaretimer/services/AlarmReceiverService$playNotificationMediaFileAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 6
    .parameter "params"

    .prologue
    const/4 v5, 0x0

    .line 337
    invoke-static {}, Lapps/babycaretimer/services/AlarmReceiverService;->access$100()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "AlarmReceiverService.playNotificationMediaFileAsyncTask.doInBackground()"

    invoke-static {v3}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 338
    :cond_0
    const/4 v1, 0x0

    .line 340
    .local v1, mediaPlayer:Landroid/media/MediaPlayer;
    :try_start_0
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    .end local v1           #mediaPlayer:Landroid/media/MediaPlayer;
    .local v2, mediaPlayer:Landroid/media/MediaPlayer;
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 342
    invoke-static {}, Lapps/babycaretimer/services/AlarmReceiverService;->access$200()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 343
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 344
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 345
    new-instance v3, Lapps/babycaretimer/services/AlarmReceiverService$playNotificationMediaFileAsyncTask$1;

    invoke-direct {v3, p0}, Lapps/babycaretimer/services/AlarmReceiverService$playNotificationMediaFileAsyncTask$1;-><init>(Lapps/babycaretimer/services/AlarmReceiverService$playNotificationMediaFileAsyncTask;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 356
    .end local v2           #mediaPlayer:Landroid/media/MediaPlayer;
    .restart local v1       #mediaPlayer:Landroid/media/MediaPlayer;
    :goto_0
    return-object v5

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, ex:Ljava/lang/Exception;
    :goto_1
    invoke-static {}, Lapps/babycaretimer/services/AlarmReceiverService;->access$100()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AlarmReceiverService.playNotificationMediaFileAsyncTask.doInBackground() ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    .line 354
    :cond_1
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 355
    const/4 v1, 0x0

    .line 356
    goto :goto_0

    .line 352
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v1           #mediaPlayer:Landroid/media/MediaPlayer;
    .restart local v2       #mediaPlayer:Landroid/media/MediaPlayer;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #mediaPlayer:Landroid/media/MediaPlayer;
    .restart local v1       #mediaPlayer:Landroid/media/MediaPlayer;
    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 329
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lapps/babycaretimer/services/AlarmReceiverService$playNotificationMediaFileAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 366
    invoke-static {}, Lapps/babycaretimer/services/AlarmReceiverService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AlarmReceiverService.playNotificationMediaFileAsyncTask.onPostExecute()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 367
    :cond_0
    return-void
.end method
