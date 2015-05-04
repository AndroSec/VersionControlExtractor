.class public Lapps/babycaretimer/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapps/babycaretimer/NumberPicker$NumberRangeKeyListener;,
        Lapps/babycaretimer/NumberPicker$NumberPickerInputFilter;,
        Lapps/babycaretimer/NumberPicker$Formatter;,
        Lapps/babycaretimer/NumberPicker$OnChangedListener;
    }
.end annotation


# static fields
.field private static final DIGIT_CHARACTERS:[C

.field public static final TWO_DIGIT_FORMATTER:Lapps/babycaretimer/NumberPicker$Formatter;


# instance fields
.field protected mCurrent:I

.field private mDecrement:Z

.field private mDecrementButton:Lapps/babycaretimer/NumberPickerButton;

.field private mDisplayedValues:[Ljava/lang/String;

.field protected mEnd:I

.field private mFormatter:Lapps/babycaretimer/NumberPicker$Formatter;

.field private final mHandler:Landroid/os/Handler;

.field private mIncrement:Z

.field private mIncrementButton:Lapps/babycaretimer/NumberPickerButton;

.field private mListener:Lapps/babycaretimer/NumberPicker$OnChangedListener;

.field private final mNumberInputFilter:Landroid/text/InputFilter;

.field protected mPrevious:I

.field private final mRunnable:Ljava/lang/Runnable;

.field private mSpeed:J

.field protected mStart:I

.field private final mText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lapps/babycaretimer/NumberPicker$1;

    invoke-direct {v0}, Lapps/babycaretimer/NumberPicker$1;-><init>()V

    sput-object v0, Lapps/babycaretimer/NumberPicker;->TWO_DIGIT_FORMATTER:Lapps/babycaretimer/NumberPicker$Formatter;

    .line 416
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lapps/babycaretimer/NumberPicker;->DIGIT_CHARACTERS:[C

    return-void

    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lapps/babycaretimer/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lapps/babycaretimer/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 141
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    new-instance v3, Lapps/babycaretimer/NumberPicker$2;

    invoke-direct {v3, p0}, Lapps/babycaretimer/NumberPicker$2;-><init>(Lapps/babycaretimer/NumberPicker;)V

    iput-object v3, p0, Lapps/babycaretimer/NumberPicker;->mRunnable:Ljava/lang/Runnable;

    .line 110
    const-wide/16 v3, 0x12c

    iput-wide v3, p0, Lapps/babycaretimer/NumberPicker;->mSpeed:J

    .line 142
    invoke-virtual {p0, v5}, Lapps/babycaretimer/NumberPicker;->setOrientation(I)V

    .line 143
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 144
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 145
    .local v2, preferences:Landroid/content/SharedPreferences;
    const-string v3, "app_theme"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 146
    const v3, 0x7f030007

    invoke-virtual {v0, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 150
    :goto_0
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lapps/babycaretimer/NumberPicker;->mHandler:Landroid/os/Handler;

    .line 151
    new-instance v1, Lapps/babycaretimer/NumberPicker$NumberPickerInputFilter;

    invoke-direct {v1, p0, v7}, Lapps/babycaretimer/NumberPicker$NumberPickerInputFilter;-><init>(Lapps/babycaretimer/NumberPicker;Lapps/babycaretimer/NumberPicker$1;)V

    .line 152
    .local v1, inputFilter:Landroid/text/InputFilter;
    new-instance v3, Lapps/babycaretimer/NumberPicker$NumberRangeKeyListener;

    invoke-direct {v3, p0, v7}, Lapps/babycaretimer/NumberPicker$NumberRangeKeyListener;-><init>(Lapps/babycaretimer/NumberPicker;Lapps/babycaretimer/NumberPicker$1;)V

    iput-object v3, p0, Lapps/babycaretimer/NumberPicker;->mNumberInputFilter:Landroid/text/InputFilter;

    .line 153
    const v3, 0x7f0b0013

    invoke-virtual {p0, v3}, Lapps/babycaretimer/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lapps/babycaretimer/NumberPickerButton;

    iput-object v3, p0, Lapps/babycaretimer/NumberPicker;->mIncrementButton:Lapps/babycaretimer/NumberPickerButton;

    .line 154
    iget-object v3, p0, Lapps/babycaretimer/NumberPicker;->mIncrementButton:Lapps/babycaretimer/NumberPickerButton;

    invoke-virtual {v3, p0}, Lapps/babycaretimer/NumberPickerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v3, p0, Lapps/babycaretimer/NumberPicker;->mIncrementButton:Lapps/babycaretimer/NumberPickerButton;

    invoke-virtual {v3, p0}, Lapps/babycaretimer/NumberPickerButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 156
    iget-object v3, p0, Lapps/babycaretimer/NumberPicker;->mIncrementButton:Lapps/babycaretimer/NumberPickerButton;

    invoke-virtual {v3, p0}, Lapps/babycaretimer/NumberPickerButton;->setNumberPicker(Lapps/babycaretimer/NumberPicker;)V

    .line 157
    const v3, 0x7f0b0015

    invoke-virtual {p0, v3}, Lapps/babycaretimer/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lapps/babycaretimer/NumberPickerButton;

    iput-object v3, p0, Lapps/babycaretimer/NumberPicker;->mDecrementButton:Lapps/babycaretimer/NumberPickerButton;

    .line 158
    iget-object v3, p0, Lapps/babycaretimer/NumberPicker;->mDecrementButton:Lapps/babycaretimer/NumberPickerButton;

    invoke-virtual {v3, p0}, Lapps/babycaretimer/NumberPickerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v3, p0, Lapps/babycaretimer/NumberPicker;->mDecrementButton:Lapps/babycaretimer/NumberPickerButton;

    invoke-virtual {v3, p0}, Lapps/babycaretimer/NumberPickerButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 160
    iget-object v3, p0, Lapps/babycaretimer/NumberPicker;->mDecrementButton:Lapps/babycaretimer/NumberPickerButton;

    invoke-virtual {v3, p0}, Lapps/babycaretimer/NumberPickerButton;->setNumberPicker(Lapps/babycaretimer/NumberPicker;)V

    .line 161
    const v3, 0x7f0b0014

    invoke-virtual {p0, v3}, Lapps/babycaretimer/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lapps/babycaretimer/NumberPicker;->mText:Landroid/widget/EditText;

    .line 162
    iget-object v3, p0, Lapps/babycaretimer/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 163
    iget-object v3, p0, Lapps/babycaretimer/NumberPicker;->mText:Landroid/widget/EditText;

    new-array v4, v5, [Landroid/text/InputFilter;

    aput-object v1, v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 164
    iget-object v3, p0, Lapps/babycaretimer/NumberPicker;->mText:Landroid/widget/EditText;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 165
    invoke-virtual {p0}, Lapps/babycaretimer/NumberPicker;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 166
    invoke-virtual {p0, v6}, Lapps/babycaretimer/NumberPicker;->setEnabled(Z)V

    .line 168
    :cond_0
    return-void

    .line 148
    .end local v1           #inputFilter:Landroid/text/InputFilter;
    :cond_1
    const v3, 0x7f030008

    invoke-virtual {v0, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0
.end method

.method static synthetic access$000(Lapps/babycaretimer/NumberPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lapps/babycaretimer/NumberPicker;->mIncrement:Z

    return v0
.end method

.method static synthetic access$100(Lapps/babycaretimer/NumberPicker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 44
    iget-wide v0, p0, Lapps/babycaretimer/NumberPicker;->mSpeed:J

    return-wide v0
.end method

.method static synthetic access$200(Lapps/babycaretimer/NumberPicker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lapps/babycaretimer/NumberPicker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lapps/babycaretimer/NumberPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lapps/babycaretimer/NumberPicker;->mDecrement:Z

    return v0
.end method

.method static synthetic access$600(Lapps/babycaretimer/NumberPicker;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lapps/babycaretimer/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lapps/babycaretimer/NumberPicker;)Landroid/text/InputFilter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lapps/babycaretimer/NumberPicker;->mNumberInputFilter:Landroid/text/InputFilter;

    return-object v0
.end method

.method static synthetic access$800()[C
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lapps/babycaretimer/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$900(Lapps/babycaretimer/NumberPicker;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lapps/babycaretimer/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 276
    iget-object v0, p0, Lapps/babycaretimer/NumberPicker;->mFormatter:Lapps/babycaretimer/NumberPicker$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lapps/babycaretimer/NumberPicker;->mFormatter:Lapps/babycaretimer/NumberPicker$Formatter;

    invoke-interface {v0, p1}, Lapps/babycaretimer/NumberPicker$Formatter;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2
    .parameter "str"

    .prologue
    .line 510
    iget-object v1, p0, Lapps/babycaretimer/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 511
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 532
    :goto_0
    return v1

    .line 513
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lapps/babycaretimer/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 516
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 517
    iget-object v1, p0, Lapps/babycaretimer/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 518
    iget v1, p0, Lapps/babycaretimer/NumberPicker;->mStart:I

    add-int/2addr v1, v0

    goto :goto_0

    .line 513
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 526
    :cond_2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 527
    :catch_0
    move-exception v1

    .line 532
    iget v1, p0, Lapps/babycaretimer/NumberPicker;->mStart:I

    goto :goto_0
.end method

.method private validateCurrentView(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 333
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lapps/babycaretimer/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    .line 334
    .local v0, val:I
    iget v1, p0, Lapps/babycaretimer/NumberPicker;->mStart:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lapps/babycaretimer/NumberPicker;->mEnd:I

    if-gt v0, v1, :cond_0

    .line 335
    iget v1, p0, Lapps/babycaretimer/NumberPicker;->mCurrent:I

    if-eq v1, v0, :cond_0

    .line 336
    iget v1, p0, Lapps/babycaretimer/NumberPicker;->mCurrent:I

    iput v1, p0, Lapps/babycaretimer/NumberPicker;->mPrevious:I

    .line 337
    iput v0, p0, Lapps/babycaretimer/NumberPicker;->mCurrent:I

    .line 338
    invoke-virtual {p0}, Lapps/babycaretimer/NumberPicker;->notifyChange()V

    .line 341
    :cond_0
    invoke-virtual {p0}, Lapps/babycaretimer/NumberPicker;->updateView()V

    .line 342
    return-void
.end method

.method private validateInput(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 366
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, str:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    invoke-virtual {p0}, Lapps/babycaretimer/NumberPicker;->updateView()V

    .line 376
    :goto_0
    return-void

    .line 374
    :cond_0
    invoke-direct {p0, v0}, Lapps/babycaretimer/NumberPicker;->validateCurrentView(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelDecrement()V
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x0

    iput-boolean v0, p0, Lapps/babycaretimer/NumberPicker;->mDecrement:Z

    .line 411
    return-void
.end method

.method public cancelIncrement()V
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lapps/babycaretimer/NumberPicker;->mIncrement:Z

    .line 404
    return-void
.end method

.method protected changeCurrent(I)V
    .locals 1
    .parameter "current"

    .prologue
    .line 289
    iget v0, p0, Lapps/babycaretimer/NumberPicker;->mEnd:I

    if-le p1, v0, :cond_1

    .line 290
    iget p1, p0, Lapps/babycaretimer/NumberPicker;->mStart:I

    .line 294
    :cond_0
    :goto_0
    iget v0, p0, Lapps/babycaretimer/NumberPicker;->mCurrent:I

    iput v0, p0, Lapps/babycaretimer/NumberPicker;->mPrevious:I

    .line 295
    iput p1, p0, Lapps/babycaretimer/NumberPicker;->mCurrent:I

    .line 297
    invoke-virtual {p0}, Lapps/babycaretimer/NumberPicker;->notifyChange()V

    .line 298
    invoke-virtual {p0}, Lapps/babycaretimer/NumberPicker;->updateView()V

    .line 299
    return-void

    .line 291
    :cond_1
    iget v0, p0, Lapps/babycaretimer/NumberPicker;->mStart:I

    if-ge p1, v0, :cond_0

    .line 292
    iget p1, p0, Lapps/babycaretimer/NumberPicker;->mEnd:I

    goto :goto_0
.end method

.method public getCurrent()I
    .locals 1

    .prologue
    .line 539
    iget v0, p0, Lapps/babycaretimer/NumberPicker;->mCurrent:I

    return v0
.end method

.method protected notifyChange()V
    .locals 3

    .prologue
    .line 305
    iget-object v0, p0, Lapps/babycaretimer/NumberPicker;->mListener:Lapps/babycaretimer/NumberPicker$OnChangedListener;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lapps/babycaretimer/NumberPicker;->mListener:Lapps/babycaretimer/NumberPicker$OnChangedListener;

    iget v1, p0, Lapps/babycaretimer/NumberPicker;->mPrevious:I

    iget v2, p0, Lapps/babycaretimer/NumberPicker;->mCurrent:I

    invoke-interface {v0, p0, v1, v2}, Lapps/babycaretimer/NumberPicker$OnChangedListener;->onChanged(Lapps/babycaretimer/NumberPicker;II)V

    .line 308
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 258
    iget-object v0, p0, Lapps/babycaretimer/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lapps/babycaretimer/NumberPicker;->validateInput(Landroid/view/View;)V

    .line 259
    iget-object v0, p0, Lapps/babycaretimer/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lapps/babycaretimer/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 262
    :cond_0
    const v0, 0x7f0b0013

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 263
    iget v0, p0, Lapps/babycaretimer/NumberPicker;->mCurrent:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lapps/babycaretimer/NumberPicker;->changeCurrent(I)V

    .line 267
    :cond_1
    :goto_0
    return-void

    .line 264
    :cond_2
    const v0, 0x7f0b0015

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 265
    iget v0, p0, Lapps/babycaretimer/NumberPicker;->mCurrent:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lapps/babycaretimer/NumberPicker;->changeCurrent(I)V

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 355
    if-nez p2, :cond_0

    .line 356
    invoke-direct {p0, p1}, Lapps/babycaretimer/NumberPicker;->validateInput(Landroid/view/View;)V

    .line 358
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 387
    iget-object v0, p0, Lapps/babycaretimer/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 389
    const v0, 0x7f0b0013

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 390
    iput-boolean v2, p0, Lapps/babycaretimer/NumberPicker;->mIncrement:Z

    .line 391
    iget-object v0, p0, Lapps/babycaretimer/NumberPicker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lapps/babycaretimer/NumberPicker;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 396
    :cond_0
    :goto_0
    return v2

    .line 392
    :cond_1
    const v0, 0x7f0b0015

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 393
    iput-boolean v2, p0, Lapps/babycaretimer/NumberPicker;->mDecrement:Z

    .line 394
    iget-object v0, p0, Lapps/babycaretimer/NumberPicker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lapps/babycaretimer/NumberPicker;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setCurrent(I)V
    .locals 0
    .parameter "current"

    .prologue
    .line 238
    iput p1, p0, Lapps/babycaretimer/NumberPicker;->mCurrent:I

    .line 239
    invoke-virtual {p0}, Lapps/babycaretimer/NumberPicker;->updateView()V

    .line 240
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 178
    iget-object v0, p0, Lapps/babycaretimer/NumberPicker;->mIncrementButton:Lapps/babycaretimer/NumberPickerButton;

    invoke-virtual {v0, p1}, Lapps/babycaretimer/NumberPickerButton;->setEnabled(Z)V

    .line 179
    iget-object v0, p0, Lapps/babycaretimer/NumberPicker;->mDecrementButton:Lapps/babycaretimer/NumberPickerButton;

    invoke-virtual {v0, p1}, Lapps/babycaretimer/NumberPickerButton;->setEnabled(Z)V

    .line 180
    iget-object v0, p0, Lapps/babycaretimer/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 181
    return-void
.end method

.method public setFormatter(Lapps/babycaretimer/NumberPicker$Formatter;)V
    .locals 0
    .parameter "formatter"

    .prologue
    .line 198
    iput-object p1, p0, Lapps/babycaretimer/NumberPicker;->mFormatter:Lapps/babycaretimer/NumberPicker$Formatter;

    .line 199
    return-void
.end method

.method public setOnChangeListener(Lapps/babycaretimer/NumberPicker$OnChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 189
    iput-object p1, p0, Lapps/babycaretimer/NumberPicker;->mListener:Lapps/babycaretimer/NumberPicker$OnChangedListener;

    .line 190
    return-void
.end method

.method public setRange(II)V
    .locals 0
    .parameter "start"
    .parameter "end"

    .prologue
    .line 209
    iput p1, p0, Lapps/babycaretimer/NumberPicker;->mStart:I

    .line 210
    iput p2, p0, Lapps/babycaretimer/NumberPicker;->mEnd:I

    .line 211
    iput p1, p0, Lapps/babycaretimer/NumberPicker;->mCurrent:I

    .line 212
    invoke-virtual {p0}, Lapps/babycaretimer/NumberPicker;->updateView()V

    .line 213
    return-void
.end method

.method public setRange(II[Ljava/lang/String;)V
    .locals 0
    .parameter "start"
    .parameter "end"
    .parameter "displayedValues"

    .prologue
    .line 225
    iput-object p3, p0, Lapps/babycaretimer/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 226
    iput p1, p0, Lapps/babycaretimer/NumberPicker;->mStart:I

    .line 227
    iput p2, p0, Lapps/babycaretimer/NumberPicker;->mEnd:I

    .line 228
    iput p1, p0, Lapps/babycaretimer/NumberPicker;->mCurrent:I

    .line 229
    invoke-virtual {p0}, Lapps/babycaretimer/NumberPicker;->updateView()V

    .line 230
    return-void
.end method

.method public setSpeed(J)V
    .locals 0
    .parameter "speed"

    .prologue
    .line 249
    iput-wide p1, p0, Lapps/babycaretimer/NumberPicker;->mSpeed:J

    .line 250
    return-void
.end method

.method protected updateView()V
    .locals 4

    .prologue
    .line 319
    iget-object v0, p0, Lapps/babycaretimer/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lapps/babycaretimer/NumberPicker;->mText:Landroid/widget/EditText;

    iget v1, p0, Lapps/babycaretimer/NumberPicker;->mCurrent:I

    invoke-direct {p0, v1}, Lapps/babycaretimer/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 324
    :goto_0
    iget-object v0, p0, Lapps/babycaretimer/NumberPicker;->mText:Landroid/widget/EditText;

    iget-object v1, p0, Lapps/babycaretimer/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 325
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lapps/babycaretimer/NumberPicker;->mText:Landroid/widget/EditText;

    iget-object v1, p0, Lapps/babycaretimer/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget v2, p0, Lapps/babycaretimer/NumberPicker;->mCurrent:I

    iget v3, p0, Lapps/babycaretimer/NumberPicker;->mStart:I

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
