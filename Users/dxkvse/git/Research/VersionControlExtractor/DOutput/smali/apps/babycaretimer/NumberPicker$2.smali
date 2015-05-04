.class Lapps/babycaretimer/NumberPicker$2;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapps/babycaretimer/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapps/babycaretimer/NumberPicker;


# direct methods
.method constructor <init>(Lapps/babycaretimer/NumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lapps/babycaretimer/NumberPicker$2;->this$0:Lapps/babycaretimer/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lapps/babycaretimer/NumberPicker$2;->this$0:Lapps/babycaretimer/NumberPicker;

    #getter for: Lapps/babycaretimer/NumberPicker;->mIncrement:Z
    invoke-static {v0}, Lapps/babycaretimer/NumberPicker;->access$000(Lapps/babycaretimer/NumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lapps/babycaretimer/NumberPicker$2;->this$0:Lapps/babycaretimer/NumberPicker;

    iget-object v1, p0, Lapps/babycaretimer/NumberPicker$2;->this$0:Lapps/babycaretimer/NumberPicker;

    iget v1, v1, Lapps/babycaretimer/NumberPicker;->mCurrent:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lapps/babycaretimer/NumberPicker;->changeCurrent(I)V

    .line 92
    iget-object v0, p0, Lapps/babycaretimer/NumberPicker$2;->this$0:Lapps/babycaretimer/NumberPicker;

    #getter for: Lapps/babycaretimer/NumberPicker;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lapps/babycaretimer/NumberPicker;->access$200(Lapps/babycaretimer/NumberPicker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lapps/babycaretimer/NumberPicker$2;->this$0:Lapps/babycaretimer/NumberPicker;

    #getter for: Lapps/babycaretimer/NumberPicker;->mSpeed:J
    invoke-static {v1}, Lapps/babycaretimer/NumberPicker;->access$100(Lapps/babycaretimer/NumberPicker;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lapps/babycaretimer/NumberPicker$2;->this$0:Lapps/babycaretimer/NumberPicker;

    #getter for: Lapps/babycaretimer/NumberPicker;->mDecrement:Z
    invoke-static {v0}, Lapps/babycaretimer/NumberPicker;->access$300(Lapps/babycaretimer/NumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lapps/babycaretimer/NumberPicker$2;->this$0:Lapps/babycaretimer/NumberPicker;

    iget-object v1, p0, Lapps/babycaretimer/NumberPicker$2;->this$0:Lapps/babycaretimer/NumberPicker;

    iget v1, v1, Lapps/babycaretimer/NumberPicker;->mCurrent:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lapps/babycaretimer/NumberPicker;->changeCurrent(I)V

    .line 95
    iget-object v0, p0, Lapps/babycaretimer/NumberPicker$2;->this$0:Lapps/babycaretimer/NumberPicker;

    #getter for: Lapps/babycaretimer/NumberPicker;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lapps/babycaretimer/NumberPicker;->access$200(Lapps/babycaretimer/NumberPicker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lapps/babycaretimer/NumberPicker$2;->this$0:Lapps/babycaretimer/NumberPicker;

    #getter for: Lapps/babycaretimer/NumberPicker;->mSpeed:J
    invoke-static {v1}, Lapps/babycaretimer/NumberPicker;->access$100(Lapps/babycaretimer/NumberPicker;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
