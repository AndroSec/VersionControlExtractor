.class Lapps/babycaretimer/AlarmActivity$3;
.super Ljava/lang/Object;
.source "AlarmActivity.java"

# interfaces
.implements Landroid/widget/Chronometer$OnChronometerTickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapps/babycaretimer/AlarmActivity;->setupChronometer()V
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
    .line 316
    iput-object p1, p0, Lapps/babycaretimer/AlarmActivity$3;->this$0:Lapps/babycaretimer/AlarmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChronometerTick(Landroid/widget/Chronometer;)V
    .locals 2
    .parameter "chronometer"

    .prologue
    .line 319
    iget-object v0, p0, Lapps/babycaretimer/AlarmActivity$3;->this$0:Lapps/babycaretimer/AlarmActivity;

    #getter for: Lapps/babycaretimer/AlarmActivity;->_masterBlink:Z
    invoke-static {v0}, Lapps/babycaretimer/AlarmActivity;->access$400(Lapps/babycaretimer/AlarmActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lapps/babycaretimer/AlarmActivity$3;->this$0:Lapps/babycaretimer/AlarmActivity;

    const/4 v1, 0x0

    #setter for: Lapps/babycaretimer/AlarmActivity;->_masterBlink:Z
    invoke-static {v0, v1}, Lapps/babycaretimer/AlarmActivity;->access$402(Lapps/babycaretimer/AlarmActivity;Z)Z

    .line 324
    :goto_0
    iget-object v0, p0, Lapps/babycaretimer/AlarmActivity$3;->this$0:Lapps/babycaretimer/AlarmActivity;

    #calls: Lapps/babycaretimer/AlarmActivity;->updateDisplayInfoTextView()V
    invoke-static {v0}, Lapps/babycaretimer/AlarmActivity;->access$500(Lapps/babycaretimer/AlarmActivity;)V

    .line 325
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lapps/babycaretimer/AlarmActivity$3;->this$0:Lapps/babycaretimer/AlarmActivity;

    const/4 v1, 0x1

    #setter for: Lapps/babycaretimer/AlarmActivity;->_masterBlink:Z
    invoke-static {v0, v1}, Lapps/babycaretimer/AlarmActivity;->access$402(Lapps/babycaretimer/AlarmActivity;Z)Z

    goto :goto_0
.end method
