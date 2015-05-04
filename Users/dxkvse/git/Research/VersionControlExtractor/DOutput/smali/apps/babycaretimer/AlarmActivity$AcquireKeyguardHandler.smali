.class Lapps/babycaretimer/AlarmActivity$AcquireKeyguardHandler;
.super Landroid/os/Handler;
.source "AlarmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapps/babycaretimer/AlarmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AcquireKeyguardHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lapps/babycaretimer/AlarmActivity;


# direct methods
.method constructor <init>(Lapps/babycaretimer/AlarmActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 653
    iput-object p1, p0, Lapps/babycaretimer/AlarmActivity$AcquireKeyguardHandler;->this$0:Lapps/babycaretimer/AlarmActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 662
    iget-object v0, p0, Lapps/babycaretimer/AlarmActivity$AcquireKeyguardHandler;->this$0:Lapps/babycaretimer/AlarmActivity;

    #getter for: Lapps/babycaretimer/AlarmActivity;->_debug:Z
    invoke-static {v0}, Lapps/babycaretimer/AlarmActivity;->access$000(Lapps/babycaretimer/AlarmActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AcquireKeyguardHandler.handleMessage()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 663
    :cond_0
    iget-object v0, p0, Lapps/babycaretimer/AlarmActivity$AcquireKeyguardHandler;->this$0:Lapps/babycaretimer/AlarmActivity;

    #getter for: Lapps/babycaretimer/AlarmActivity;->_context:Landroid/content/Context;
    invoke-static {v0}, Lapps/babycaretimer/AlarmActivity;->access$600(Lapps/babycaretimer/AlarmActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lapps/babycaretimer/common/Common;->acquireKeyguardLock(Landroid/content/Context;)V

    .line 664
    return-void
.end method

.method public sleep(J)V
    .locals 2
    .parameter "delayMillis"

    .prologue
    const/4 v1, 0x0

    .line 672
    iget-object v0, p0, Lapps/babycaretimer/AlarmActivity$AcquireKeyguardHandler;->this$0:Lapps/babycaretimer/AlarmActivity;

    #getter for: Lapps/babycaretimer/AlarmActivity;->_debug:Z
    invoke-static {v0}, Lapps/babycaretimer/AlarmActivity;->access$000(Lapps/babycaretimer/AlarmActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AcquireKeyguardHandler.sleep()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 673
    :cond_0
    invoke-virtual {p0, v1}, Lapps/babycaretimer/AlarmActivity$AcquireKeyguardHandler;->removeMessages(I)V

    .line 674
    invoke-virtual {p0, v1}, Lapps/babycaretimer/AlarmActivity$AcquireKeyguardHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lapps/babycaretimer/AlarmActivity$AcquireKeyguardHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 675
    return-void
.end method
