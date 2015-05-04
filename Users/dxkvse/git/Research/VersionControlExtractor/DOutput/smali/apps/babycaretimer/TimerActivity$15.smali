.class Lapps/babycaretimer/TimerActivity$15;
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
    .line 747
    iput-object p1, p0, Lapps/babycaretimer/TimerActivity$15;->this$0:Lapps/babycaretimer/TimerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 749
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity$15;->this$0:Lapps/babycaretimer/TimerActivity;

    #getter for: Lapps/babycaretimer/TimerActivity;->_debug:Z
    invoke-static {v0}, Lapps/babycaretimer/TimerActivity;->access$400(Lapps/babycaretimer/TimerActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Sleep Reset Counter Clicked()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 750
    :cond_0
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity$15;->this$0:Lapps/babycaretimer/TimerActivity;

    const/4 v1, 0x1

    #calls: Lapps/babycaretimer/TimerActivity;->customPerformHapticFeedback(I)V
    invoke-static {v0, v1}, Lapps/babycaretimer/TimerActivity;->access$500(Lapps/babycaretimer/TimerActivity;I)V

    .line 751
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity$15;->this$0:Lapps/babycaretimer/TimerActivity;

    #getter for: Lapps/babycaretimer/TimerActivity;->_confirmResetCounters:Z
    invoke-static {v0}, Lapps/babycaretimer/TimerActivity;->access$1400(Lapps/babycaretimer/TimerActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 752
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity$15;->this$0:Lapps/babycaretimer/TimerActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lapps/babycaretimer/TimerActivity;->showDialog(I)V

    .line 756
    :goto_0
    return-void

    .line 754
    :cond_1
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity$15;->this$0:Lapps/babycaretimer/TimerActivity;

    #calls: Lapps/babycaretimer/TimerActivity;->resetSleepCounter()V
    invoke-static {v0}, Lapps/babycaretimer/TimerActivity;->access$200(Lapps/babycaretimer/TimerActivity;)V

    goto :goto_0
.end method
