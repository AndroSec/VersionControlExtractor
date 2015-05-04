.class public Lapps/babycaretimer/NumberPickerButton;
.super Landroid/widget/ImageButton;
.source "NumberPickerButton.java"


# instance fields
.field private mNumberPicker:Lapps/babycaretimer/NumberPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method private cancelLongpress()V
    .locals 2

    .prologue
    .line 111
    const v0, 0x7f0b0013

    invoke-virtual {p0}, Lapps/babycaretimer/NumberPickerButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 112
    iget-object v0, p0, Lapps/babycaretimer/NumberPickerButton;->mNumberPicker:Lapps/babycaretimer/NumberPicker;

    invoke-virtual {v0}, Lapps/babycaretimer/NumberPicker;->cancelIncrement()V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    const v0, 0x7f0b0015

    invoke-virtual {p0}, Lapps/babycaretimer/NumberPickerButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 114
    iget-object v0, p0, Lapps/babycaretimer/NumberPickerButton;->mNumberPicker:Lapps/babycaretimer/NumberPicker;

    invoke-virtual {v0}, Lapps/babycaretimer/NumberPicker;->cancelDecrement()V

    goto :goto_0
.end method

.method private cancelLongpressIfRequired(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 103
    :cond_0
    invoke-direct {p0}, Lapps/babycaretimer/NumberPickerButton;->cancelLongpress()V

    .line 105
    :cond_1
    return-void
.end method


# virtual methods
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 91
    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 92
    :cond_0
    invoke-direct {p0}, Lapps/babycaretimer/NumberPickerButton;->cancelLongpress()V

    .line 94
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lapps/babycaretimer/NumberPickerButton;->cancelLongpressIfRequired(Landroid/view/MotionEvent;)V

    .line 71
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lapps/babycaretimer/NumberPickerButton;->cancelLongpressIfRequired(Landroid/view/MotionEvent;)V

    .line 81
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setNumberPicker(Lapps/babycaretimer/NumberPicker;)V
    .locals 0
    .parameter "picker"

    .prologue
    .line 61
    iput-object p1, p0, Lapps/babycaretimer/NumberPickerButton;->mNumberPicker:Lapps/babycaretimer/NumberPicker;

    .line 62
    return-void
.end method
