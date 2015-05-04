.class Lapps/babycaretimer/TimerActivity$20;
.super Ljava/lang/Object;
.source "TimerActivity.java"

# interfaces
.implements Landroid/widget/Chronometer$OnChronometerTickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapps/babycaretimer/TimerActivity;->setupChronometer()V
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
    .line 857
    iput-object p1, p0, Lapps/babycaretimer/TimerActivity$20;->this$0:Lapps/babycaretimer/TimerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChronometerTick(Landroid/widget/Chronometer;)V
    .locals 1
    .parameter "chronometer"

    .prologue
    .line 859
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity$20;->this$0:Lapps/babycaretimer/TimerActivity;

    #calls: Lapps/babycaretimer/TimerActivity;->updateTimerTextViews()V
    invoke-static {v0}, Lapps/babycaretimer/TimerActivity;->access$1800(Lapps/babycaretimer/TimerActivity;)V

    .line 860
    return-void
.end method
