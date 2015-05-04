.class Lapps/babycaretimer/TimerActivity$26;
.super Ljava/lang/Object;
.source "TimerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapps/babycaretimer/TimerActivity;->displayHTMLAlertDialog(Ljava/lang/String;ILjava/lang/String;)Z
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
    .line 1749
    iput-object p1, p0, Lapps/babycaretimer/TimerActivity$26;->this$0:Lapps/babycaretimer/TimerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 1751
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1752
    return-void
.end method
