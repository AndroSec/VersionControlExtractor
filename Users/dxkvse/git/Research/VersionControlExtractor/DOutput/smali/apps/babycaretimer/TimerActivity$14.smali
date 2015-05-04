.class Lapps/babycaretimer/TimerActivity$14;
.super Ljava/lang/Object;
.source "TimerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapps/babycaretimer/TimerActivity;->setupButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapps/babycaretimer/TimerActivity;


# direct methods
.method constructor <init>(Lapps/babycaretimer/TimerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 736
    iput-object p1, p0, Lapps/babycaretimer/TimerActivity$14;->this$0:Lapps/babycaretimer/TimerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 738
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity$14;->this$0:Lapps/babycaretimer/TimerActivity;

    #getter for: Lapps/babycaretimer/TimerActivity;->_debug:Z
    invoke-static {v0}, Lapps/babycaretimer/TimerActivity;->access$400(Lapps/babycaretimer/TimerActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Bottle Reset Counter Clicked()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 739
    :cond_0
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity$14;->this$0:Lapps/babycaretimer/TimerActivity;

    const/4 v1, 0x1

    #calls: Lapps/babycaretimer/TimerActivity;->customPerformHapticFeedback(I)V
    invoke-static {v0, v1}, Lapps/babycaretimer/TimerActivity;->access$500(Lapps/babycaretimer/TimerActivity;I)V

    .line 740
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity$14;->this$0:Lapps/babycaretimer/TimerActivity;

    #getter for: Lapps/babycaretimer/TimerActivity;->_confirmResetCounters:Z
    invoke-static {v0}, Lapps/babycaretimer/TimerActivity;->access$1400(Lapps/babycaretimer/TimerActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 741
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity$14;->this$0:Lapps/babycaretimer/TimerActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lapps/babycaretimer/TimerActivity;->showDialog(I)V

    .line 745
    :goto_0
    return-void

    .line 743
    :cond_1
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity$14;->this$0:Lapps/babycaretimer/TimerActivity;

    #calls: Lapps/babycaretimer/TimerActivity;->resetBottleCounter()V
    invoke-static {v0}, Lapps/babycaretimer/TimerActivity;->access$100(Lapps/babycaretimer/TimerActivity;)V

    goto :goto_0
.end method
