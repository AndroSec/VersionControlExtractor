.class Lapps/babycaretimer/SetAlarmActivity$2;
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
    .line 239
    iput-object p1, p0, Lapps/babycaretimer/SetAlarmActivity$2;->this$0:Lapps/babycaretimer/SetAlarmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 241
    iget-object v0, p0, Lapps/babycaretimer/SetAlarmActivity$2;->this$0:Lapps/babycaretimer/SetAlarmActivity;

    #getter for: Lapps/babycaretimer/SetAlarmActivity;->_debug:Z
    invoke-static {v0}, Lapps/babycaretimer/SetAlarmActivity;->access$000(Lapps/babycaretimer/SetAlarmActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Set Alarm Button Clicked()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 242
    :cond_0
    iget-object v0, p0, Lapps/babycaretimer/SetAlarmActivity$2;->this$0:Lapps/babycaretimer/SetAlarmActivity;

    const/4 v1, 0x1

    #calls: Lapps/babycaretimer/SetAlarmActivity;->customPerformHapticFeedback(I)V
    invoke-static {v0, v1}, Lapps/babycaretimer/SetAlarmActivity;->access$100(Lapps/babycaretimer/SetAlarmActivity;I)V

    .line 243
    iget-object v0, p0, Lapps/babycaretimer/SetAlarmActivity$2;->this$0:Lapps/babycaretimer/SetAlarmActivity;

    #calls: Lapps/babycaretimer/SetAlarmActivity;->cancelAlarm()V
    invoke-static {v0}, Lapps/babycaretimer/SetAlarmActivity;->access$600(Lapps/babycaretimer/SetAlarmActivity;)V

    .line 244
    iget-object v0, p0, Lapps/babycaretimer/SetAlarmActivity$2;->this$0:Lapps/babycaretimer/SetAlarmActivity;

    invoke-virtual {v0}, Lapps/babycaretimer/SetAlarmActivity;->finish()V

    .line 245
    return-void
.end method
