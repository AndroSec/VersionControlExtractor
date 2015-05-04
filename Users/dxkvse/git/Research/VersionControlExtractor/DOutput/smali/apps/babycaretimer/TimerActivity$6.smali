.class Lapps/babycaretimer/TimerActivity$6;
.super Ljava/lang/Object;
.source "TimerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapps/babycaretimer/TimerActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 540
    iput-object p1, p0, Lapps/babycaretimer/TimerActivity$6;->this$0:Lapps/babycaretimer/TimerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 543
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity$6;->this$0:Lapps/babycaretimer/TimerActivity;

    #calls: Lapps/babycaretimer/TimerActivity;->resetSleepCounter()V
    invoke-static {v0}, Lapps/babycaretimer/TimerActivity;->access$200(Lapps/babycaretimer/TimerActivity;)V

    .line 544
    return-void
.end method
