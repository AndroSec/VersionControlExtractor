.class Lapps/babycaretimer/TimerActivity$19;
.super Ljava/lang/Object;
.source "TimerActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapps/babycaretimer/TimerActivity;->initLongPressView(Landroid/view/View;)V
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
    .line 802
    iput-object p1, p0, Lapps/babycaretimer/TimerActivity$19;->this$0:Lapps/babycaretimer/TimerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "view"
    .parameter "motionEvent"

    .prologue
    .line 804
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 845
    :goto_0
    :pswitch_0
    const/4 v2, 0x0

    return v2

    .line 806
    :pswitch_1
    iget-object v2, p0, Lapps/babycaretimer/TimerActivity$19;->this$0:Lapps/babycaretimer/TimerActivity;

    #getter for: Lapps/babycaretimer/TimerActivity;->_debug:Z
    invoke-static {v2}, Lapps/babycaretimer/TimerActivity;->access$400(Lapps/babycaretimer/TimerActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "TimerActivity.initLongPressView() ACTION_DOWN"

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 807
    :cond_0
    const/4 v0, 0x0

    .line 809
    .local v0, listSelectorBackgroundResource:I
    iget-object v2, p0, Lapps/babycaretimer/TimerActivity$19;->this$0:Lapps/babycaretimer/TimerActivity;

    #getter for: Lapps/babycaretimer/TimerActivity;->_appTheme:Ljava/lang/String;
    invoke-static {v2}, Lapps/babycaretimer/TimerActivity;->access$1600(Lapps/babycaretimer/TimerActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 810
    const v0, 0x7f02002a

    .line 814
    :goto_1
    iget-object v2, p0, Lapps/babycaretimer/TimerActivity$19;->this$0:Lapps/babycaretimer/TimerActivity;

    #getter for: Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;
    invoke-static {v2}, Lapps/babycaretimer/TimerActivity;->access$1700(Lapps/babycaretimer/TimerActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .line 815
    .local v1, transition:Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 816
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 817
    const/16 v2, 0x12c

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_0

    .line 812
    .end local v1           #transition:Landroid/graphics/drawable/TransitionDrawable;
    :cond_1
    const v0, 0x7f02002b

    goto :goto_1

    .line 821
    .end local v0           #listSelectorBackgroundResource:I
    :pswitch_2
    iget-object v2, p0, Lapps/babycaretimer/TimerActivity$19;->this$0:Lapps/babycaretimer/TimerActivity;

    #getter for: Lapps/babycaretimer/TimerActivity;->_debug:Z
    invoke-static {v2}, Lapps/babycaretimer/TimerActivity;->access$400(Lapps/babycaretimer/TimerActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "TimerActivity.initLongPressView() ACTION_UP"

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 822
    :cond_2
    const/4 v0, 0x0

    .line 824
    .restart local v0       #listSelectorBackgroundResource:I
    iget-object v2, p0, Lapps/babycaretimer/TimerActivity$19;->this$0:Lapps/babycaretimer/TimerActivity;

    #getter for: Lapps/babycaretimer/TimerActivity;->_appTheme:Ljava/lang/String;
    invoke-static {v2}, Lapps/babycaretimer/TimerActivity;->access$1600(Lapps/babycaretimer/TimerActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 825
    const v0, 0x7f020020

    .line 829
    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 827
    :cond_3
    const v0, 0x7f020027

    goto :goto_2

    .line 833
    .end local v0           #listSelectorBackgroundResource:I
    :pswitch_3
    iget-object v2, p0, Lapps/babycaretimer/TimerActivity$19;->this$0:Lapps/babycaretimer/TimerActivity;

    #getter for: Lapps/babycaretimer/TimerActivity;->_debug:Z
    invoke-static {v2}, Lapps/babycaretimer/TimerActivity;->access$400(Lapps/babycaretimer/TimerActivity;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "TimerActivity.initLongPressView() ACTION_CANCEL"

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 834
    :cond_4
    const/4 v0, 0x0

    .line 836
    .restart local v0       #listSelectorBackgroundResource:I
    iget-object v2, p0, Lapps/babycaretimer/TimerActivity$19;->this$0:Lapps/babycaretimer/TimerActivity;

    #getter for: Lapps/babycaretimer/TimerActivity;->_appTheme:Ljava/lang/String;
    invoke-static {v2}, Lapps/babycaretimer/TimerActivity;->access$1600(Lapps/babycaretimer/TimerActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 837
    const v0, 0x7f020020

    .line 841
    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 839
    :cond_5
    const v0, 0x7f020027

    goto :goto_3

    .line 804
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
