.class Lapps/babycaretimer/services/AlarmReceiverService$playNotificationMediaFileAsyncTask$1;
.super Ljava/lang/Object;
.source "AlarmReceiverService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapps/babycaretimer/services/AlarmReceiverService$playNotificationMediaFileAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapps/babycaretimer/services/AlarmReceiverService$playNotificationMediaFileAsyncTask;


# direct methods
.method constructor <init>(Lapps/babycaretimer/services/AlarmReceiverService$playNotificationMediaFileAsyncTask;)V
    .locals 0
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lapps/babycaretimer/services/AlarmReceiverService$playNotificationMediaFileAsyncTask$1;->this$0:Lapps/babycaretimer/services/AlarmReceiverService$playNotificationMediaFileAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "mediaPlayer"

    .prologue
    .line 347
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 348
    const/4 p1, 0x0

    .line 349
    return-void
.end method
