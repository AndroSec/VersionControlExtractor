.class Lapps/babycaretimer/TimerActivity$22;
.super Ljava/lang/Object;
.source "TimerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapps/babycaretimer/TimerActivity;->setupAlarmTextViews()V
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
    .line 904
    iput-object p1, p0, Lapps/babycaretimer/TimerActivity$22;->this$0:Lapps/babycaretimer/TimerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 906
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity$22;->this$0:Lapps/babycaretimer/TimerActivity;

    #getter for: Lapps/babycaretimer/TimerActivity;->_debug:Z
    invoke-static {v0}, Lapps/babycaretimer/TimerActivity;->access$400(Lapps/babycaretimer/TimerActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "R Button Clicked()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 907
    :cond_0
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity$22;->this$0:Lapps/babycaretimer/TimerActivity;

    #calls: Lapps/babycaretimer/TimerActivity;->customPerformHapticFeedback(I)V
    invoke-static {v0, v3}, Lapps/babycaretimer/TimerActivity;->access$500(Lapps/babycaretimer/TimerActivity;I)V

    .line 908
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity$22;->this$0:Lapps/babycaretimer/TimerActivity;

    #getter for: Lapps/babycaretimer/TimerActivity;->_bottleAlarmActive:Z
    invoke-static {v0}, Lapps/babycaretimer/TimerActivity;->access$2200(Lapps/babycaretimer/TimerActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 909
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity$22;->this$0:Lapps/babycaretimer/TimerActivity;

    iget-object v1, p0, Lapps/babycaretimer/TimerActivity$22;->this$0:Lapps/babycaretimer/TimerActivity;

    #getter for: Lapps/babycaretimer/TimerActivity;->_bottleAlarmTime:J
    invoke-static {v1}, Lapps/babycaretimer/TimerActivity;->access$2300(Lapps/babycaretimer/TimerActivity;)J

    move-result-wide v1

    #calls: Lapps/babycaretimer/TimerActivity;->startSetAlarmActivity(IJ)V
    invoke-static {v0, v3, v1, v2}, Lapps/babycaretimer/TimerActivity;->access$2100(Lapps/babycaretimer/TimerActivity;IJ)V

    .line 913
    :goto_0
    return-void

    .line 911
    :cond_1
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity$22;->this$0:Lapps/babycaretimer/TimerActivity;

    const-wide/16 v1, 0x0

    #calls: Lapps/babycaretimer/TimerActivity;->startSetAlarmActivity(IJ)V
    invoke-static {v0, v3, v1, v2}, Lapps/babycaretimer/TimerActivity;->access$2100(Lapps/babycaretimer/TimerActivity;IJ)V

    goto :goto_0
.end method
