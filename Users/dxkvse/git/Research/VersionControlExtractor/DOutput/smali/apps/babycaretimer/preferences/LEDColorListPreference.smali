.class public Lapps/babycaretimer/preferences/LEDColorListPreference;
.super Landroid/preference/ListPreference;
.source "LEDColorListPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private _context:Landroid/content/Context;

.field private _debug:Z

.field private _preferences:Landroid/content/SharedPreferences;

.field private blueSeekBar:Landroid/widget/SeekBar;

.field private blueTextView:Landroid/widget/TextView;

.field private greenSeekBar:Landroid/widget/SeekBar;

.field private greenTextView:Landroid/widget/TextView;

.field private previewImageView:Landroid/widget/ImageView;

.field private redSeekBar:Landroid/widget/SeekBar;

.field private redTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->_debug:Z

    .line 34
    iput-object v1, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->_context:Landroid/content/Context;

    .line 35
    iput-object v1, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->_preferences:Landroid/content/SharedPreferences;

    .line 36
    iput-object v1, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->redSeekBar:Landroid/widget/SeekBar;

    .line 37
    iput-object v1, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->greenSeekBar:Landroid/widget/SeekBar;

    .line 38
    iput-object v1, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->blueSeekBar:Landroid/widget/SeekBar;

    .line 39
    iput-object v1, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->redTextView:Landroid/widget/TextView;

    .line 40
    iput-object v1, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->greenTextView:Landroid/widget/TextView;

    .line 41
    iput-object v1, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->blueTextView:Landroid/widget/TextView;

    .line 42
    iput-object v1, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->previewImageView:Landroid/widget/ImageView;

    .line 55
    invoke-static {}, Lapps/babycaretimer/log/Log;->getDebug()Z

    move-result v0

    iput-boolean v0, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->_debug:Z

    .line 56
    iget-boolean v0, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "LEDColorListPreference.LEDColorListPreference()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 57
    :cond_0
    iput-object p1, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->_context:Landroid/content/Context;

    .line 58
    iget-object v0, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->_context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->_preferences:Landroid/content/SharedPreferences;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->_debug:Z

    .line 34
    iput-object v1, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->_context:Landroid/content/Context;

    .line 35
    iput-object v1, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->_preferences:Landroid/content/SharedPreferences;

    .line 36
    iput-object v1, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->redSeekBar:Landroid/widget/SeekBar;

    .line 37
    iput-object v1, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->greenSeekBar:Landroid/widget/SeekBar;

    .line 38
    iput-object v1, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->blueSeekBar:Landroid/widget/SeekBar;

    .line 39
    iput-object v1, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->redTextView:Landroid/widget/TextView;

    .line 40
    iput-object v1, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->greenTextView:Landroid/widget/TextView;

    .line 41
    iput-object v1, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->blueTextView:Landroid/widget/TextView;

    .line 42
    iput-object v1, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->previewImageView:Landroid/widget/ImageView;

    .line 68
    invoke-static {}, Lapps/babycaretimer/log/Log;->getDebug()Z

    move-result v0

    iput-boolean v0, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->_debug:Z

    .line 69
    iget-boolean v0, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "LEDColorListPreference.LEDColorListPreference()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 70
    :cond_0
    iput-object p1, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->_context:Landroid/content/Context;

    .line 71
    iget-object v0, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->_context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->_preferences:Landroid/content/SharedPreferences;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lapps/babycaretimer/preferences/LEDColorListPreference;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->redSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$100(Lapps/babycaretimer/preferences/LEDColorListPreference;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->greenSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$200(Lapps/babycaretimer/preferences/LEDColorListPreference;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->blueSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$300(Lapps/babycaretimer/preferences/LEDColorListPreference;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->_preferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$400(Lapps/babycaretimer/preferences/LEDColorListPreference;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->_context:Landroid/content/Context;

    return-object v0
.end method

.method private showDialog()V
    .locals 11

    .prologue
    .line 102
    iget-boolean v8, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->_debug:Z

    if-eqz v8, :cond_0

    const-string v8, "LEDColorListPreference.showDialog()"

    invoke-static {v8}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 103
    :cond_0
    iget-object v8, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->_context:Landroid/content/Context;

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 104
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v8, 0x7f030005

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 107
    .local v7, view:Landroid/view/View;
    const/4 v5, 0x0

    .line 109
    .local v5, ledCustomColor:I
    :try_start_0
    iget-object v8, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->_preferences:Landroid/content/SharedPreferences;

    const-string v9, "notification_led_color_custom"

    const-string v10, "yellow"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 113
    :goto_0
    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v6

    .line 114
    .local v6, red:I
    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 115
    .local v2, green:I
    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 118
    .local v0, blue:I
    const v8, 0x7f0b000c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/SeekBar;

    iput-object v8, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->redSeekBar:Landroid/widget/SeekBar;

    .line 119
    const v8, 0x7f0b000e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/SeekBar;

    iput-object v8, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->greenSeekBar:Landroid/widget/SeekBar;

    .line 120
    const v8, 0x7f0b0010

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/SeekBar;

    iput-object v8, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->blueSeekBar:Landroid/widget/SeekBar;

    .line 121
    const v8, 0x7f0b000a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->previewImageView:Landroid/widget/ImageView;

    .line 122
    const v8, 0x7f0b000b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->redTextView:Landroid/widget/TextView;

    .line 123
    const v8, 0x7f0b000d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->greenTextView:Landroid/widget/TextView;

    .line 124
    const v8, 0x7f0b000f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->blueTextView:Landroid/widget/TextView;

    .line 126
    iget-object v8, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->redSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v8, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 127
    iget-object v8, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->greenSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v8, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 128
    iget-object v8, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->blueSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v8, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 130
    iget-object v8, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->redSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v8, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 131
    iget-object v8, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->greenSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v8, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 132
    iget-object v8, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->blueSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v8, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 134
    iget-object v8, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->redTextView:Landroid/widget/TextView;

    iget-object v9, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->redSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    invoke-direct {p0, v8, v9}, Lapps/babycaretimer/preferences/LEDColorListPreference;->updateTextView(Landroid/widget/TextView;I)V

    .line 135
    iget-object v8, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->greenTextView:Landroid/widget/TextView;

    iget-object v9, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->greenSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    invoke-direct {p0, v8, v9}, Lapps/babycaretimer/preferences/LEDColorListPreference;->updateTextView(Landroid/widget/TextView;I)V

    .line 136
    iget-object v8, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->blueTextView:Landroid/widget/TextView;

    iget-object v9, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->blueSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    invoke-direct {p0, v8, v9}, Lapps/babycaretimer/preferences/LEDColorListPreference;->updateTextView(Landroid/widget/TextView;I)V

    .line 137
    invoke-direct {p0}, Lapps/babycaretimer/preferences/LEDColorListPreference;->updateColorImageView()V

    .line 140
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->_context:Landroid/content/Context;

    invoke-direct {v4, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 141
    .local v4, ledColorAlertBuilder:Landroid/app/AlertDialog$Builder;
    const v8, 0x7f020015

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 142
    const v8, 0x7f080088

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 143
    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 144
    const v8, 0x7f080009

    new-instance v9, Lapps/babycaretimer/preferences/LEDColorListPreference$1;

    invoke-direct {v9, p0}, Lapps/babycaretimer/preferences/LEDColorListPreference$1;-><init>(Lapps/babycaretimer/preferences/LEDColorListPreference;)V

    invoke-virtual {v4, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 154
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 155
    return-void

    .line 110
    .end local v0           #blue:I
    .end local v2           #green:I
    .end local v4           #ledColorAlertBuilder:Landroid/app/AlertDialog$Builder;
    .end local v6           #red:I
    :catch_0
    move-exception v1

    .line 111
    .local v1, ex:Ljava/lang/Exception;
    const-string v8, "yellow"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0
.end method

.method private updateColorImageView()V
    .locals 4

    .prologue
    .line 193
    iget-boolean v0, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "LEDColorListPreference.updateColorImageView()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 194
    :cond_0
    iget-object v0, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->previewImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->redSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->greenSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget-object v3, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->blueSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 195
    return-void
.end method

.method private updateTextView(Landroid/widget/TextView;I)V
    .locals 1
    .parameter "textView"
    .parameter "progress"

    .prologue
    .line 185
    iget-boolean v0, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "LEDColorListPreference.updateTextView()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 186
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "result"

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 86
    iget-boolean v0, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "LEDColorListPreference.onDialogClosed()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 87
    :cond_0
    if-eqz p1, :cond_1

    .line 88
    iget-object v0, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "notification_led_color"

    const-string v2, "yellow"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "custom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    invoke-direct {p0}, Lapps/babycaretimer/preferences/LEDColorListPreference;->showDialog()V

    .line 92
    :cond_1
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .parameter "seekbar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 165
    iget-boolean v1, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->_debug:Z

    if-eqz v1, :cond_0

    const-string v1, "LEDColorListPreference.onProgressChanged()"

    invoke-static {v1}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 166
    :cond_0
    const/4 v0, 0x0

    .line 167
    .local v0, textView:Landroid/widget/TextView;
    iget-object v1, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->redSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    iget-object v0, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->redTextView:Landroid/widget/TextView;

    .line 174
    :goto_0
    invoke-direct {p0, v0, p2}, Lapps/babycaretimer/preferences/LEDColorListPreference;->updateTextView(Landroid/widget/TextView;I)V

    .line 175
    invoke-direct {p0}, Lapps/babycaretimer/preferences/LEDColorListPreference;->updateColorImageView()V

    .line 176
    return-void

    .line 169
    :cond_1
    iget-object v1, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->greenSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 170
    iget-object v0, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->greenTextView:Landroid/widget/TextView;

    goto :goto_0

    .line 172
    :cond_2
    iget-object v0, p0, Lapps/babycaretimer/preferences/LEDColorListPreference;->blueTextView:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 197
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 198
    return-void
.end method
