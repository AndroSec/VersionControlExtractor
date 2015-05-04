.class Lapps/babycaretimer/SetAlarmActivity$1;
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
    .line 225
    iput-object p1, p0, Lapps/babycaretimer/SetAlarmActivity$1;->this$0:Lapps/babycaretimer/SetAlarmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 227
    iget-object v0, p0, Lapps/babycaretimer/SetAlarmActivity$1;->this$0:Lapps/babycaretimer/SetAlarmActivity;

    #getter for: Lapps/babycaretimer/SetAlarmActivity;->_debug:Z
    invoke-static {v0}, Lapps/babycaretimer/SetAlarmActivity;->access$000(Lapps/babycaretimer/SetAlarmActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Set Alarm Button Clicked()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 228
    :cond_0
    iget-object v0, p0, Lapps/babycaretimer/SetAlarmActivity$1;->this$0:Lapps/babycaretimer/SetAlarmActivity;

    #calls: Lapps/babycaretimer/SetAlarmActivity;->customPerformHapticFeedback(I)V
    invoke-static {v0, v3}, Lapps/babycaretimer/SetAlarmActivity;->access$100(Lapps/babycaretimer/SetAlarmActivity;I)V

    .line 229
    iget-object v0, p0, Lapps/babycaretimer/SetAlarmActivity$1;->this$0:Lapps/babycaretimer/SetAlarmActivity;

    #getter for: Lapps/babycaretimer/SetAlarmActivity;->_hoursNumberPicker:Lapps/babycaretimer/NumberPicker;
    invoke-static {v0}, Lapps/babycaretimer/SetAlarmActivity;->access$200(Lapps/babycaretimer/SetAlarmActivity;)Lapps/babycaretimer/NumberPicker;

    move-result-object v0

    invoke-virtual {v0}, Lapps/babycaretimer/NumberPicker;->getCurrent()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lapps/babycaretimer/SetAlarmActivity$1;->this$0:Lapps/babycaretimer/SetAlarmActivity;

    #getter for: Lapps/babycaretimer/SetAlarmActivity;->_minutesNumberPicker:Lapps/babycaretimer/NumberPicker;
    invoke-static {v0}, Lapps/babycaretimer/SetAlarmActivity;->access$300(Lapps/babycaretimer/SetAlarmActivity;)Lapps/babycaretimer/NumberPicker;

    move-result-object v0

    invoke-virtual {v0}, Lapps/babycaretimer/NumberPicker;->getCurrent()I

    move-result v0

    if-nez v0, :cond_1

    .line 230
    iget-object v0, p0, Lapps/babycaretimer/SetAlarmActivity$1;->this$0:Lapps/babycaretimer/SetAlarmActivity;

    #getter for: Lapps/babycaretimer/SetAlarmActivity;->_context:Landroid/content/Context;
    invoke-static {v0}, Lapps/babycaretimer/SetAlarmActivity;->access$400(Lapps/babycaretimer/SetAlarmActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lapps/babycaretimer/SetAlarmActivity$1;->this$0:Lapps/babycaretimer/SetAlarmActivity;

    invoke-virtual {v1}, Lapps/babycaretimer/SetAlarmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v0, p0, Lapps/babycaretimer/SetAlarmActivity$1;->this$0:Lapps/babycaretimer/SetAlarmActivity;

    #calls: Lapps/babycaretimer/SetAlarmActivity;->setAlarm()V
    invoke-static {v0}, Lapps/babycaretimer/SetAlarmActivity;->access$500(Lapps/babycaretimer/SetAlarmActivity;)V

    .line 234
    iget-object v0, p0, Lapps/babycaretimer/SetAlarmActivity$1;->this$0:Lapps/babycaretimer/SetAlarmActivity;

    invoke-virtual {v0}, Lapps/babycaretimer/SetAlarmActivity;->finish()V

    goto :goto_0
.end method
