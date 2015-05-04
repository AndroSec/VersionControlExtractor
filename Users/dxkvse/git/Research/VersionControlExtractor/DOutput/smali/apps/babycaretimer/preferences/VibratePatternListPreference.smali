.class public Lapps/babycaretimer/preferences/VibratePatternListPreference;
.super Landroid/preference/ListPreference;
.source "VibratePatternListPreference.java"


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

    iput-boolean v0, p0, Lapps/babycaretimer/preferences/VibratePatternListPreference;->_debug:Z

    .line 30
    iput-object v1, p0, Lapps/babycaretimer/preferences/VibratePatternListPreference;->_context:Landroid/content/Context;

    .line 31
    iput-object v1, p0, Lapps/babycaretimer/preferences/VibratePatternListPreference;->_preferences:Landroid/content/SharedPreferences;

    .line 44
    invoke-static {}, Lapps/babycaretimer/log/Log;->getDebug()Z

    move-result v0

    iput-boolean v0, p0, Lapps/babycaretimer/preferences/VibratePatternListPreference;->_debug:Z

    .line 45
    iget-boolean v0, p0, Lapps/babycaretimer/preferences/VibratePatternListPreference;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "VibratePatternListPreference.VibratePatternListPreference()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 46
    :cond_0
    iput-object p1, p0, Lapps/babycaretimer/preferences/VibratePatternListPreference;->_context:Landroid/content/Context;

    .line 47
    iget-object v0, p0, Lapps/babycaretimer/preferences/VibratePatternListPreference;->_context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lapps/babycaretimer/preferences/VibratePatternListPreference;->_preferences:Landroid/content/SharedPreferences;

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

    iput-boolean v0, p0, Lapps/babycaretimer/preferences/VibratePatternListPreference;->_debug:Z

    .line 30
    iput-object v1, p0, Lapps/babycaretimer/preferences/VibratePatternListPreference;->_context:Landroid/content/Context;

    .line 31
    iput-object v1, p0, Lapps/babycaretimer/preferences/VibratePatternListPreference;->_preferences:Landroid/content/SharedPreferences;

    .line 58
    invoke-static {}, Lapps/babycaretimer/log/Log;->getDebug()Z

    move-result v0

    iput-boolean v0, p0, Lapps/babycaretimer/preferences/VibratePatternListPreference;->_debug:Z

    .line 59
    iget-boolean v0, p0, Lapps/babycaretimer/preferences/VibratePatternListPreference;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "VibratePatternListPreference.VibratePatternListPreference()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 60
    :cond_0
    iput-object p1, p0, Lapps/babycaretimer/preferences/VibratePatternListPreference;->_context:Landroid/content/Context;

    .line 61
    iget-object v0, p0, Lapps/babycaretimer/preferences/VibratePatternListPreference;->_context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lapps/babycaretimer/preferences/VibratePatternListPreference;->_preferences:Landroid/content/SharedPreferences;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lapps/babycaretimer/preferences/VibratePatternListPreference;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lapps/babycaretimer/preferences/VibratePatternListPreference;->validateVibratePattern(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lapps/babycaretimer/preferences/VibratePatternListPreference;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lapps/babycaretimer/preferences/VibratePatternListPreference;->_preferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lapps/babycaretimer/preferences/VibratePatternListPreference;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lapps/babycaretimer/preferences/VibratePatternListPreference;->_context:Landroid/content/Context;

    return-object v0
.end method

.method private showDialog()V
    .locals 7

    .prologue
    .line 92
    iget-boolean v4, p0, Lapps/babycaretimer/preferences/VibratePatternListPreference;->_debug:Z

    if-eqz v4, :cond_0

    const-string v4, "VibratePatternListPreference.showDialog()"

    invoke-static {v4}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 93
    :cond_0
    iget-object v4, p0, Lapps/babycaretimer/preferences/VibratePatternListPreference;->_context:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 94
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f03000e

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 95
    .local v3, view:Landroid/view/View;
    const v4, 0x7f0b003b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 96
    .local v0, customVibratePatternEditText:Landroid/widget/EditText;
    iget-object v4, p0, Lapps/babycaretimer/preferences/VibratePatternListPreference;->_preferences:Landroid/content/SharedPreferences;

    const-string v5, "notification_vibrate_pattern_custom"

    const-string v6, "0,800,200,800,200,800,200"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 97
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lapps/babycaretimer/preferences/VibratePatternListPreference;->_context:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 98
    .local v2, vibratePatternAlertBuilder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f020015

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 99
    const v4, 0x7f080078

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 100
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 101
    const v4, 0x7f080009

    new-instance v5, Lapps/babycaretimer/preferences/VibratePatternListPreference$1;

    invoke-direct {v5, p0, v0}, Lapps/babycaretimer/preferences/VibratePatternListPreference$1;-><init>(Lapps/babycaretimer/preferences/VibratePatternListPreference;Landroid/widget/EditText;)V

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 114
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 115
    return-void
.end method

.method private validateVibratePattern(Ljava/lang/String;)Z
    .locals 9
    .parameter "vibratePattern"

    .prologue
    const/4 v6, 0x0

    .line 125
    iget-boolean v7, p0, Lapps/babycaretimer/preferences/VibratePatternListPreference;->_debug:Z

    if-eqz v7, :cond_0

    const-string v7, "VibratePatternListPreference.parseVibratePattern()"

    invoke-static {v7}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 126
    :cond_0
    const-string v7, ","

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 127
    .local v5, vibratePatternArray:[Ljava/lang/String;
    array-length v0, v5

    .line 128
    .local v0, arraySize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 129
    const-wide/16 v3, -0x1

    .line 131
    .local v3, vibrateLength:J
    :try_start_0
    aget-object v7, v5, v2

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 135
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-gez v7, :cond_1

    .line 139
    .end local v3           #vibrateLength:J
    :goto_1
    return v6

    .line 132
    .restart local v3       #vibrateLength:J
    :catch_0
    move-exception v1

    .line 133
    .local v1, ex:Ljava/lang/Exception;
    goto :goto_1

    .line 128
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    .end local v3           #vibrateLength:J
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
    iget-boolean v0, p0, Lapps/babycaretimer/preferences/VibratePatternListPreference;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "VibratePatternListPreference.onDialogClosed()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 77
    :cond_0
    if-eqz p1, :cond_1

    .line 78
    iget-object v0, p0, Lapps/babycaretimer/preferences/VibratePatternListPreference;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "notification_vibrate_pattern"

    const-string v2, "0,800,200,800,200,800,200"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "custom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    invoke-direct {p0}, Lapps/babycaretimer/preferences/VibratePatternListPreference;->showDialog()V

    .line 82
    :cond_1
    return-void
.end method
