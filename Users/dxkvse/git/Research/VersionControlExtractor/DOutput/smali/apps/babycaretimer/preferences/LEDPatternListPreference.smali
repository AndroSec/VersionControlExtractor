.class public Lapps/babycaretimer/preferences/LEDPatternListPreference;
.super Landroid/preference/ListPreference;
.source "LEDPatternListPreference.java"


# instance fields
.field private _context:Landroid/content/Context;

.field private _debug:Z

.field private _preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lapps/babycaretimer/preferences/LEDPatternListPreference;->_debug:Z

    .line 30
    iput-object v1, p0, Lapps/babycaretimer/preferences/LEDPatternListPreference;->_context:Landroid/content/Context;

    .line 31
    iput-object v1, p0, Lapps/babycaretimer/preferences/LEDPatternListPreference;->_preferences:Landroid/content/SharedPreferences;

    .line 44
    invoke-static {}, Lapps/babycaretimer/log/Log;->getDebug()Z

    move-result v0

    iput-boolean v0, p0, Lapps/babycaretimer/preferences/LEDPatternListPreference;->_debug:Z

    .line 45
    iget-boolean v0, p0, Lapps/babycaretimer/preferences/LEDPatternListPreference;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "LEDPatternListPreference.LEDPatternListPreference()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 46
    :cond_0
    iput-object p1, p0, Lapps/babycaretimer/preferences/LEDPatternListPreference;->_context:Landroid/content/Context;

    .line 47
    iget-object v0, p0, Lapps/babycaretimer/preferences/LEDPatternListPreference;->_context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lapps/babycaretimer/preferences/LEDPatternListPreference;->_preferences:Landroid/content/SharedPreferences;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lapps/babycaretimer/preferences/LEDPatternListPreference;->_debug:Z

    .line 30
    iput-object v1, p0, Lapps/babycaretimer/preferences/LEDPatternListPreference;->_context:Landroid/content/Context;

    .line 31
    iput-object v1, p0, Lapps/babycaretimer/preferences/LEDPatternListPreference;->_preferences:Landroid/content/SharedPreferences;

    .line 58
    invoke-static {}, Lapps/babycaretimer/log/Log;->getDebug()Z

    move-result v0

    iput-boolean v0, p0, Lapps/babycaretimer/preferences/LEDPatternListPreference;->_debug:Z

    .line 59
    iget-boolean v0, p0, Lapps/babycaretimer/preferences/LEDPatternListPreference;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "LEDPatternListPreference.LEDPatternListPreference()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 60
    :cond_0
    iput-object p1, p0, Lapps/babycaretimer/preferences/LEDPatternListPreference;->_context:Landroid/content/Context;

    .line 61
    iget-object v0, p0, Lapps/babycaretimer/preferences/LEDPatternListPreference;->_context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lapps/babycaretimer/preferences/LEDPatternListPreference;->_preferences:Landroid/content/SharedPreferences;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lapps/babycaretimer/preferences/LEDPatternListPreference;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lapps/babycaretimer/preferences/LEDPatternListPreference;->validateLEDPattern(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lapps/babycaretimer/preferences/LEDPatternListPreference;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lapps/babycaretimer/preferences/LEDPatternListPreference;->_preferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lapps/babycaretimer/preferences/LEDPatternListPreference;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lapps/babycaretimer/preferences/LEDPatternListPreference;->_context:Landroid/content/Context;

    return-object v0
.end method

.method private showDialog()V
    .locals 10

    .prologue
    .line 92
    iget-boolean v7, p0, Lapps/babycaretimer/preferences/LEDPatternListPreference;->_debug:Z

    if-eqz v7, :cond_0

    const-string v7, "LEDPatternListPreference.showDialog()"

    invoke-static {v7}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 93
    :cond_0
    iget-object v7, p0, Lapps/babycaretimer/preferences/LEDPatternListPreference;->_context:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 94
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f030006

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 95
    .local v6, view:Landroid/view/View;
    iget-object v7, p0, Lapps/babycaretimer/preferences/LEDPatternListPreference;->_preferences:Landroid/content/SharedPreferences;

    const-string v8, "notification_led_pattern_custom"

    const-string v9, "1000,1000"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, ledCustomPattern:Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, ledCustomPatternArray:[Ljava/lang/String;
    const v7, 0x7f0b0011

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 98
    .local v1, customOnLEDPatternEditText:Landroid/widget/EditText;
    const v7, 0x7f0b0012

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 99
    .local v0, customOffLEDPatternEditText:Landroid/widget/EditText;
    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 100
    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 101
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lapps/babycaretimer/preferences/LEDPatternListPreference;->_context:Landroid/content/Context;

    invoke-direct {v5, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 102
    .local v5, ledPatternAlertBuilder:Landroid/app/AlertDialog$Builder;
    const v7, 0x7f020015

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 103
    const v7, 0x7f080081

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 104
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 105
    const v7, 0x7f080009

    new-instance v8, Lapps/babycaretimer/preferences/LEDPatternListPreference$1;

    invoke-direct {v8, p0, v1, v0}, Lapps/babycaretimer/preferences/LEDPatternListPreference$1;-><init>(Lapps/babycaretimer/preferences/LEDPatternListPreference;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 118
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 119
    return-void
.end method

.method private validateLEDPattern(Ljava/lang/String;)Z
    .locals 9
    .parameter "ledPattern"

    .prologue
    const/4 v6, 0x0

    .line 129
    iget-boolean v7, p0, Lapps/babycaretimer/preferences/LEDPatternListPreference;->_debug:Z

    if-eqz v7, :cond_0

    const-string v7, "LEDPatternListPreference.parseLEDPattern()"

    invoke-static {v7}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 130
    :cond_0
    const-string v7, ","

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 131
    .local v5, ledPatternArray:[Ljava/lang/String;
    array-length v0, v5

    .line 132
    .local v0, arraySize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 133
    const-wide/16 v3, 0x0

    .line 135
    .local v3, ledLength:J
    :try_start_0
    aget-object v7, v5, v2

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 139
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-gez v7, :cond_1

    .line 143
    .end local v3           #ledLength:J
    :goto_1
    return v6

    .line 136
    .restart local v3       #ledLength:J
    :catch_0
    move-exception v1

    .line 137
    .local v1, ex:Ljava/lang/Exception;
    goto :goto_1

    .line 132
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    .end local v3           #ledLength:J
    :cond_2
    const/4 v6, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "result"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 76
    iget-boolean v0, p0, Lapps/babycaretimer/preferences/LEDPatternListPreference;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "LEDPatternListPreference.onDialogClosed()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 77
    :cond_0
    if-eqz p1, :cond_1

    .line 78
    iget-object v0, p0, Lapps/babycaretimer/preferences/LEDPatternListPreference;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "notification_led_pattern"

    const-string v2, "1000,1000"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "custom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    invoke-direct {p0}, Lapps/babycaretimer/preferences/LEDPatternListPreference;->showDialog()V

    .line 82
    :cond_1
    return-void
.end method
