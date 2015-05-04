.class Lapps/babycaretimer/SetAlarmActivity$3;
.super Ljava/lang/Object;
.source "SetAlarmActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapps/babycaretimer/SetAlarmActivity;->setupButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapps/babycaretimer/SetAlarmActivity;


# direct methods
.method constructor <init>(Lapps/babycaretimer/SetAlarmActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lapps/babycaretimer/SetAlarmActivity$3;->this$0:Lapps/babycaretimer/SetAlarmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 254
    iget-object v0, p0, Lapps/babycaretimer/SetAlarmActivity$3;->this$0:Lapps/babycaretimer/SetAlarmActivity;

    #getter for: Lapps/babycaretimer/SetAlarmActivity;->_debug:Z
    invoke-static {v0}, Lapps/babycaretimer/SetAlarmActivity;->access$000(Lapps/babycaretimer/SetAlarmActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Set Alarm Button Clicked()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 255
    :cond_0
    iget-object v0, p0, Lapps/babycaretimer/SetAlarmActivity$3;->this$0:Lapps/babycaretimer/SetAlarmActivity;

    const/4 v1, 0x1

    #calls: Lapps/babycaretimer/SetAlarmActivity;->customPerformHapticFeedback(I)V
    invoke-static {v0, v1}, Lapps/babycaretimer/SetAlarmActivity;->access$100(Lapps/babycaretimer/SetAlarmActivity;I)V

    .line 256
    iget-object v0, p0, Lapps/babycaretimer/SetAlarmActivity$3;->this$0:Lapps/babycaretimer/SetAlarmActivity;

    invoke-virtual {v0}, Lapps/babycaretimer/SetAlarmActivity;->finish()V

    .line 257
    return-void
.end method
