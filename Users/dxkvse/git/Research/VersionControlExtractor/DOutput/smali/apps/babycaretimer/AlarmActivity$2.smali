.class Lapps/babycaretimer/AlarmActivity$2;
.super Ljava/lang/Object;
.source "AlarmActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapps/babycaretimer/AlarmActivity;->setupButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapps/babycaretimer/AlarmActivity;


# direct methods
.method constructor <init>(Lapps/babycaretimer/AlarmActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lapps/babycaretimer/AlarmActivity$2;->this$0:Lapps/babycaretimer/AlarmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 302
    iget-object v0, p0, Lapps/babycaretimer/AlarmActivity$2;->this$0:Lapps/babycaretimer/AlarmActivity;

    #getter for: Lapps/babycaretimer/AlarmActivity;->_debug:Z
    invoke-static {v0}, Lapps/babycaretimer/AlarmActivity;->access$000(Lapps/babycaretimer/AlarmActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Dismiss Button Clicked()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 303
    :cond_0
    iget-object v0, p0, Lapps/babycaretimer/AlarmActivity$2;->this$0:Lapps/babycaretimer/AlarmActivity;

    const/4 v1, 0x1

    #calls: Lapps/babycaretimer/AlarmActivity;->customPerformHapticFeedback(I)V
    invoke-static {v0, v1}, Lapps/babycaretimer/AlarmActivity;->access$100(Lapps/babycaretimer/AlarmActivity;I)V

    .line 304
    iget-object v0, p0, Lapps/babycaretimer/AlarmActivity$2;->this$0:Lapps/babycaretimer/AlarmActivity;

    #calls: Lapps/babycaretimer/AlarmActivity;->dismissAlarm()V
    invoke-static {v0}, Lapps/babycaretimer/AlarmActivity;->access$300(Lapps/babycaretimer/AlarmActivity;)V

    .line 305
    iget-object v0, p0, Lapps/babycaretimer/AlarmActivity$2;->this$0:Lapps/babycaretimer/AlarmActivity;

    invoke-virtual {v0}, Lapps/babycaretimer/AlarmActivity;->finish()V

    .line 306
    return-void
.end method
