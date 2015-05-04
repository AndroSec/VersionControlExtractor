.class Lapps/babycaretimer/TimerActivity$25;
.super Ljava/lang/Object;
.source "TimerActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapps/babycaretimer/TimerActivity;->setupSeekBar()V
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
    .line 1106
    iput-object p1, p0, Lapps/babycaretimer/TimerActivity$25;->this$0:Lapps/babycaretimer/TimerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 1115
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 1112
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 1108
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity$25;->this$0:Lapps/babycaretimer/TimerActivity;

    iget-object v1, p0, Lapps/babycaretimer/TimerActivity$25;->this$0:Lapps/babycaretimer/TimerActivity;

    #getter for: Lapps/babycaretimer/TimerActivity;->_seekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lapps/babycaretimer/TimerActivity;->access$2800(Lapps/babycaretimer/TimerActivity;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    #calls: Lapps/babycaretimer/TimerActivity;->setSeekBar(I)V
    invoke-static {v0, v1}, Lapps/babycaretimer/TimerActivity;->access$1500(Lapps/babycaretimer/TimerActivity;I)V

    .line 1109
    return-void
.end method
