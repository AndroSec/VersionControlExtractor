.class public Lat/bitfire/gfxtablet/CanvasView;
.super Landroid/view/View;
.source "CanvasView.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/bitfire/gfxtablet/CanvasView$1;,
        Lat/bitfire/gfxtablet/CanvasView$ConfigureNetworkingTask;
    }
.end annotation


# instance fields
.field acceptStylusOnly:Z

.field maxX:I

.field maxY:I

.field netClient:Lat/bitfire/gfxtablet/NetworkClient;

.field settings:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lat/bitfire/gfxtablet/NetworkClient;)V
    .locals 3
    .parameter "context"
    .parameter "netClient"

    .prologue
    const/4 v2, 0x0

    .line 23
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-virtual {p0, v2}, Lat/bitfire/gfxtablet/CanvasView;->setEnabled(Z)V

    .line 27
    const v0, -0x2f2f30

    invoke-virtual {p0, v0}, Lat/bitfire/gfxtablet/CanvasView;->setBackgroundColor(I)V

    .line 29
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lat/bitfire/gfxtablet/CanvasView;->settings:Landroid/content/SharedPreferences;

    .line 30
    iget-object v0, p0, Lat/bitfire/gfxtablet/CanvasView;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 31
    invoke-virtual {p0}, Lat/bitfire/gfxtablet/CanvasView;->reconfigureAcceptedInputDevices()V

    .line 33
    iput-object p2, p0, Lat/bitfire/gfxtablet/CanvasView;->netClient:Lat/bitfire/gfxtablet/NetworkClient;

    .line 34
    new-instance v0, Lat/bitfire/gfxtablet/CanvasView$ConfigureNetworkingTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lat/bitfire/gfxtablet/CanvasView$ConfigureNetworkingTask;-><init>(Lat/bitfire/gfxtablet/CanvasView;Lat/bitfire/gfxtablet/CanvasView$1;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lat/bitfire/gfxtablet/CanvasView$ConfigureNetworkingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 35
    return-void
.end method


# virtual methods
.method normalizePressure(F)S
    .locals 6
    .parameter "x"

    .prologue
    const-wide/high16 v4, 0x4000

    .line 112
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide v2, 0x40dfffc000000000L

    mul-double/2addr v0, v2

    div-double/2addr v0, v4

    double-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method normalizeX(F)S
    .locals 2
    .parameter "x"

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lat/bitfire/gfxtablet/CanvasView;->maxX:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const v1, 0x46fffe00

    mul-float/2addr v0, v1

    iget v1, p0, Lat/bitfire/gfxtablet/CanvasView;->maxX:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method normalizeY(F)S
    .locals 2
    .parameter "x"

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lat/bitfire/gfxtablet/CanvasView;->maxY:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const v1, 0x46fffe00

    mul-float/2addr v0, v1

    iget v1, p0, Lat/bitfire/gfxtablet/CanvasView;->maxY:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    .line 58
    invoke-virtual {p0}, Lat/bitfire/gfxtablet/CanvasView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 59
    const/4 v0, 0x0

    .local v0, ptr:I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 60
    iget-boolean v1, p0, Lat/bitfire/gfxtablet/CanvasView;->acceptStylusOnly:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 62
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 63
    iget-object v1, p0, Lat/bitfire/gfxtablet/CanvasView;->netClient:Lat/bitfire/gfxtablet/NetworkClient;

    invoke-virtual {v1}, Lat/bitfire/gfxtablet/NetworkClient;->getQueue()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v1

    new-instance v2, Lat/bitfire/gfxtablet/NetEvent;

    sget-object v3, Lat/bitfire/gfxtablet/NetEvent$Type;->TYPE_MOTION:Lat/bitfire/gfxtablet/NetEvent$Type;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p0, v4}, Lat/bitfire/gfxtablet/CanvasView;->normalizeX(F)S

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {p0, v5}, Lat/bitfire/gfxtablet/CanvasView;->normalizeY(F)S

    move-result v5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v6

    invoke-virtual {p0, v6}, Lat/bitfire/gfxtablet/CanvasView;->normalizePressure(F)S

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lat/bitfire/gfxtablet/NetEvent;-><init>(Lat/bitfire/gfxtablet/NetEvent$Type;SSS)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_2
    const/4 v1, 0x1

    .line 71
    .end local v0           #ptr:I
    :goto_1
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "pref"
    .parameter "key"

    .prologue
    .line 39
    const-string v0, "host_preference"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    new-instance v0, Lat/bitfire/gfxtablet/CanvasView$ConfigureNetworkingTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lat/bitfire/gfxtablet/CanvasView$ConfigureNetworkingTask;-><init>(Lat/bitfire/gfxtablet/CanvasView;Lat/bitfire/gfxtablet/CanvasView$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lat/bitfire/gfxtablet/CanvasView$ConfigureNetworkingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    const-string v0, "stylus_only_preference"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lat/bitfire/gfxtablet/CanvasView;->reconfigureAcceptedInputDevices()V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 51
    iput p1, p0, Lat/bitfire/gfxtablet/CanvasView;->maxX:I

    .line 52
    iput p2, p0, Lat/bitfire/gfxtablet/CanvasView;->maxY:I

    .line 53
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    .line 76
    invoke-virtual {p0}, Lat/bitfire/gfxtablet/CanvasView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    const/4 v7, 0x0

    .local v7, ptr:I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 78
    iget-boolean v0, p0, Lat/bitfire/gfxtablet/CanvasView;->acceptStylusOnly:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 79
    :cond_0
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lat/bitfire/gfxtablet/CanvasView;->normalizeX(F)S

    move-result v2

    .line 80
    .local v2, nx:S
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lat/bitfire/gfxtablet/CanvasView;->normalizeY(F)S

    move-result v3

    .line 81
    .local v3, ny:S
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lat/bitfire/gfxtablet/CanvasView;->normalizePressure(F)S

    move-result v4

    .line 83
    .local v4, npressure:S
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 77
    .end local v2           #nx:S
    .end local v3           #ny:S
    .end local v4           #npressure:S
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 85
    .restart local v2       #nx:S
    .restart local v3       #ny:S
    .restart local v4       #npressure:S
    :pswitch_0
    iget-object v0, p0, Lat/bitfire/gfxtablet/CanvasView;->netClient:Lat/bitfire/gfxtablet/NetworkClient;

    invoke-virtual {v0}, Lat/bitfire/gfxtablet/NetworkClient;->getQueue()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    new-instance v1, Lat/bitfire/gfxtablet/NetEvent;

    sget-object v5, Lat/bitfire/gfxtablet/NetEvent$Type;->TYPE_MOTION:Lat/bitfire/gfxtablet/NetEvent$Type;

    invoke-direct {v1, v5, v2, v3, v4}, Lat/bitfire/gfxtablet/NetEvent;-><init>(Lat/bitfire/gfxtablet/NetEvent$Type;SSS)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 88
    :pswitch_1
    iget-object v0, p0, Lat/bitfire/gfxtablet/CanvasView;->netClient:Lat/bitfire/gfxtablet/NetworkClient;

    invoke-virtual {v0}, Lat/bitfire/gfxtablet/NetworkClient;->getQueue()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v8

    new-instance v0, Lat/bitfire/gfxtablet/NetEvent;

    sget-object v1, Lat/bitfire/gfxtablet/NetEvent$Type;->TYPE_BUTTON:Lat/bitfire/gfxtablet/NetEvent$Type;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lat/bitfire/gfxtablet/NetEvent;-><init>(Lat/bitfire/gfxtablet/NetEvent$Type;SSSIZ)V

    invoke-virtual {v8, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 92
    :pswitch_2
    iget-object v0, p0, Lat/bitfire/gfxtablet/CanvasView;->netClient:Lat/bitfire/gfxtablet/NetworkClient;

    invoke-virtual {v0}, Lat/bitfire/gfxtablet/NetworkClient;->getQueue()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v8

    new-instance v0, Lat/bitfire/gfxtablet/NetEvent;

    sget-object v1, Lat/bitfire/gfxtablet/NetEvent$Type;->TYPE_BUTTON:Lat/bitfire/gfxtablet/NetEvent$Type;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lat/bitfire/gfxtablet/NetEvent;-><init>(Lat/bitfire/gfxtablet/NetEvent$Type;SSSIZ)V

    invoke-virtual {v8, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 97
    .end local v2           #nx:S
    .end local v3           #ny:S
    .end local v4           #npressure:S
    :cond_2
    const/4 v0, 0x1

    .line 99
    .end local v7           #ptr:I
    :goto_2
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method reconfigureAcceptedInputDevices()V
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lat/bitfire/gfxtablet/CanvasView;->settings:Landroid/content/SharedPreferences;

    const-string v1, "stylus_only_preference"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lat/bitfire/gfxtablet/CanvasView;->acceptStylusOnly:Z

    .line 47
    return-void
.end method
