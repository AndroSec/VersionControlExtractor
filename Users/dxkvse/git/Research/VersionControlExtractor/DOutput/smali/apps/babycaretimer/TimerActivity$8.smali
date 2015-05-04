.class Lapps/babycaretimer/TimerActivity$8;
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
    .line 562
    iput-object p1, p0, Lapps/babycaretimer/TimerActivity$8;->this$0:Lapps/babycaretimer/TimerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 565
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity$8;->this$0:Lapps/babycaretimer/TimerActivity;

    #calls: Lapps/babycaretimer/TimerActivity;->resetCustomCounter()V
    invoke-static {v0}, Lapps/babycaretimer/TimerActivity;->access$300(Lapps/babycaretimer/TimerActivity;)V

    .line 566
    return-void
.end method
