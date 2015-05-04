.class public Lapps/babycaretimer/preferences/MainPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "MainPreferenceActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapps/babycaretimer/preferences/MainPreferenceActivity$importPreferencesAsyncTask;,
        Lapps/babycaretimer/preferences/MainPreferenceActivity$exportPreferencesAsyncTask;
    }
.end annotation


# static fields
.field private static final LANDSCAPE_SCREEN_ENABLED_KEY:Ljava/lang/String; = "landscape_screen_enabled"

.field private static final RATE_APP_AMAZON_URL:Ljava/lang/String; = "http://www.amazon.com/gp/mas/dl/android?p=apps.babycaretimer"

.field private static final RATE_APP_ANDROID_URL:Ljava/lang/String; = "http://market.android.com/details?id=apps.babycaretimer"


# instance fields
.field private _appVersion:Ljava/lang/String;

.field private _context:Landroid/content/Context;

.field private _debug:Z

.field private _preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_debug:Z

    .line 65
    iput-object v1, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_context:Landroid/content/Context;

    .line 66
    iput-object v1, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_preferences:Landroid/content/SharedPreferences;

    .line 67
    iput-object v1, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_appVersion:Ljava/lang/String;

    .line 373
    return-void
.end method

.method static synthetic access$000(Lapps/babycaretimer/preferences/MainPreferenceActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_debug:Z

    return v0
.end method

.method static synthetic access$100(Lapps/babycaretimer/preferences/MainPreferenceActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lapps/babycaretimer/preferences/MainPreferenceActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_preferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$300(Lapps/babycaretimer/preferences/MainPreferenceActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_appVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lapps/babycaretimer/preferences/MainPreferenceActivity;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->displayHTMLAlertDialog(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lapps/babycaretimer/preferences/MainPreferenceActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->exportApplicationPreferences()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lapps/babycaretimer/preferences/MainPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->setupImportPreferences()V

    return-void
.end method

.method static synthetic access$900(Lapps/babycaretimer/preferences/MainPreferenceActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->importApplicationPreferences()Z

    move-result v0

    return v0
.end method

.method private checkPreferencesFileExists(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "directory"
    .parameter "file"

    .prologue
    .line 503
    iget-boolean v2, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_debug:Z

    if-eqz v2, :cond_0

    const-string v2, "MainPreferenceActivity.checkPreferencesFileExists()"

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 504
    :cond_0
    invoke-static {p1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 505
    .local v1, preferencesFilePath:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 506
    .local v0, preferencesFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 507
    const/4 v2, 0x1

    .line 509
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private displayHTMLAlertDialog(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 8
    .parameter "title"
    .parameter "iconResource"
    .parameter "content"

    .prologue
    .line 463
    iget-boolean v6, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_debug:Z

    if-eqz v6, :cond_0

    const-string v6, "MainPreferenceActivity.displayHTMLAlertDialog()"

    invoke-static {v6}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 465
    :cond_0
    :try_start_0
    iget-object v6, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_context:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 466
    .local v4, layoutInflater:Landroid/view/LayoutInflater;
    const v7, 0x7f030004

    const v6, 0x7f0b0008

    invoke-virtual {p0, v6}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v4, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 467
    .local v5, view:Landroid/view/View;
    const v6, 0x7f0b0009

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 468
    .local v2, contentTextView:Landroid/widget/TextView;
    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 470
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_context:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 471
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 472
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 473
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 474
    const v6, 0x7f080009

    new-instance v7, Lapps/babycaretimer/preferences/MainPreferenceActivity$7;

    invoke-direct {v7, p0}, Lapps/babycaretimer/preferences/MainPreferenceActivity$7;-><init>(Lapps/babycaretimer/preferences/MainPreferenceActivity;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 479
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 480
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    const/4 v6, 0x1

    .end local v0           #alertDialog:Landroid/app/AlertDialog;
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #contentTextView:Landroid/widget/TextView;
    .end local v4           #layoutInflater:Landroid/view/LayoutInflater;
    .end local v5           #view:Landroid/view/View;
    :goto_0
    return v6

    .line 481
    :catch_0
    move-exception v3

    .line 482
    .local v3, ex:Ljava/lang/Exception;
    iget-boolean v6, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_debug:Z

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MainPreferenceActivity.displayHTMLAlertDialog() ERROR: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    .line 483
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private exportApplicationPreferences()Z
    .locals 14

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 318
    iget-boolean v12, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_debug:Z

    if-eqz v12, :cond_0

    const-string v12, "MainPreferenceActivity.exportApplicationPreferences()"

    invoke-static {v12}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 320
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    .line 321
    .local v8, state:Ljava/lang/String;
    const-string v12, "mounted"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 332
    const-string v12, "Baby Care Timer/Preferences"

    invoke-static {v12}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 333
    .local v7, preferencesFilePath:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v12, "BabyCareTimerPreferences.txt"

    invoke-direct {v6, v7, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 335
    .local v6, preferencesFile:Ljava/io/File;
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 337
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 338
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 340
    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 342
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v12, Ljava/io/FileWriter;

    const/4 v13, 0x1

    invoke-direct {v12, v6, v13}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v12}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 343
    .local v1, buf:Ljava/io/BufferedWriter;
    iget-object v12, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v12}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 344
    .local v0, applicationPreferencesMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 345
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 346
    .local v5, key:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 347
    .local v9, value:Ljava/lang/Object;
    instance-of v12, v9, Ljava/lang/String;

    if-eqz v12, :cond_8

    .line 348
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "|string"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 358
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 361
    .end local v0           #applicationPreferencesMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v1           #buf:Ljava/io/BufferedWriter;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #key:Ljava/lang/String;
    .end local v9           #value:Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 362
    .local v3, ex:Ljava/lang/Exception;
    iget-boolean v10, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_debug:Z

    if-eqz v10, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MainPreferenceActivity.exportApplicationPreferences() Wrtie File ERROR: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    :cond_3
    move v10, v11

    .line 365
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v6           #preferencesFile:Ljava/io/File;
    .end local v7           #preferencesFilePath:Ljava/io/File;
    :goto_2
    return v10

    .line 323
    :cond_4
    const-string v10, "mounted_ro"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 325
    iget-boolean v10, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_debug:Z

    if-eqz v10, :cond_5

    const-string v10, "MainPreferenceActivity.exportApplicationPreferences() External Storage Read Only State"

    invoke-static {v10}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    :cond_5
    move v10, v11

    .line 326
    goto :goto_2

    .line 329
    :cond_6
    iget-boolean v10, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_debug:Z

    if-eqz v10, :cond_7

    const-string v10, "MainPreferenceActivity.exportApplicationPreferences() External Storage Can\'t Write Or Read State"

    invoke-static {v10}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    :cond_7
    move v10, v11

    .line 330
    goto :goto_2

    .line 349
    .restart local v0       #applicationPreferencesMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    .restart local v1       #buf:Ljava/io/BufferedWriter;
    .restart local v2       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #key:Ljava/lang/String;
    .restart local v6       #preferencesFile:Ljava/io/File;
    .restart local v7       #preferencesFilePath:Ljava/io/File;
    .restart local v9       #value:Ljava/lang/Object;
    :cond_8
    :try_start_1
    instance-of v12, v9, Ljava/lang/Boolean;

    if-eqz v12, :cond_9

    .line 350
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "|boolean"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_1

    .line 351
    :cond_9
    instance-of v12, v9, Ljava/lang/Integer;

    if-eqz v12, :cond_a

    .line 352
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "|int"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto/16 :goto_1

    .line 353
    :cond_a
    instance-of v12, v9, Ljava/lang/Long;

    if-eqz v12, :cond_b

    .line 354
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "|long"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto/16 :goto_1

    .line 355
    :cond_b
    instance-of v12, v9, Ljava/lang/Float;

    if-eqz v12, :cond_2

    .line 356
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "|float"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto/16 :goto_1

    .line 360
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v5           #key:Ljava/lang/String;
    .end local v9           #value:Ljava/lang/Object;
    :cond_c
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method private getApplicationVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 519
    iget-boolean v2, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_debug:Z

    if-eqz v2, :cond_0

    const-string v2, "MainPreferenceActivity.getApplicationVersion()"

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 520
    :cond_0
    const/4 v1, 0x0

    .line 522
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 523
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    :goto_0
    return-object v2

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_0
.end method

.method private importApplicationPreferences()Z
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 415
    iget-boolean v10, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_debug:Z

    if-eqz v10, :cond_0

    const-string v10, "MainPreferenceActivity.importApplicationPreferences()"

    invoke-static {v10}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 417
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    .line 418
    .local v7, state:Ljava/lang/String;
    const-string v10, "mounted"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 427
    :cond_1
    const-string v10, "Baby Care Timer/Preferences/"

    const-string v11, "BabyCareTimerPreferences.txt"

    invoke-direct {p0, v10, v11}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->checkPreferencesFileExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 428
    iget-boolean v9, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_debug:Z

    if-eqz v9, :cond_2

    const-string v9, "MainPreferenceActivity.importApplicationPreferences() Preference file does not exist."

    invoke-static {v9}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 456
    :cond_2
    :goto_0
    return v8

    .line 420
    :cond_3
    const-string v10, "mounted_ro"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 424
    iget-boolean v9, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_debug:Z

    if-eqz v9, :cond_2

    const-string v9, "MainPreferenceActivity.importApplicationPreferences() External Storage Can\'t Write Or Read State"

    invoke-static {v9}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 432
    :cond_4
    :try_start_0
    const-string v10, "Baby Care Timer/Preferences/"

    invoke-static {v10}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 433
    .local v6, preferencesFilePath:Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v10, "BabyCareTimerPreferences.txt"

    invoke-direct {v5, v6, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 434
    .local v5, preferencesFile:Ljava/io/File;
    iget-object v10, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 435
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 437
    .local v0, br:Ljava/io/BufferedReader;
    :cond_5
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, line:Ljava/lang/String;
    if-eqz v3, :cond_a

    .line 438
    const-string v10, "\\|"

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 439
    .local v4, preferenceInfo:[Ljava/lang/String;
    const/4 v10, 0x2

    aget-object v10, v4, v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "boolean"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 440
    const/4 v10, 0x0

    aget-object v10, v4, v10

    const/4 v11, 0x1

    aget-object v11, v4, v11

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-interface {v1, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 452
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #preferenceInfo:[Ljava/lang/String;
    .end local v5           #preferencesFile:Ljava/io/File;
    .end local v6           #preferencesFilePath:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 453
    .local v2, ex:Ljava/io/IOException;
    iget-boolean v9, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_debug:Z

    if-eqz v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MainPreferenceActivity.importApplicationPreferences() ERROR: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 441
    .end local v2           #ex:Ljava/io/IOException;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v1       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v3       #line:Ljava/lang/String;
    .restart local v4       #preferenceInfo:[Ljava/lang/String;
    .restart local v5       #preferencesFile:Ljava/io/File;
    .restart local v6       #preferencesFilePath:Ljava/io/File;
    :cond_6
    const/4 v10, 0x2

    :try_start_1
    aget-object v10, v4, v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "string"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 442
    const/4 v10, 0x0

    aget-object v10, v4, v10

    const/4 v11, 0x1

    aget-object v11, v4, v11

    invoke-interface {v1, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 443
    :cond_7
    const/4 v10, 0x2

    aget-object v10, v4, v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "int"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 444
    const/4 v10, 0x0

    aget-object v10, v4, v10

    const/4 v11, 0x1

    aget-object v11, v4, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v1, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 445
    :cond_8
    const/4 v10, 0x2

    aget-object v10, v4, v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "long"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 446
    const/4 v10, 0x0

    aget-object v10, v4, v10

    const/4 v11, 0x1

    aget-object v11, v4, v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-interface {v1, v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    .line 447
    :cond_9
    const/4 v10, 0x2

    aget-object v10, v4, v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "float"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 448
    const/4 v10, 0x0

    aget-object v10, v4, v10

    const/4 v11, 0x1

    aget-object v11, v4, v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    invoke-interface {v1, v10, v11}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    .line 451
    .end local v4           #preferenceInfo:[Ljava/lang/String;
    :cond_a
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v8, v9

    .line 456
    goto/16 :goto_0
.end method

.method private setupCustomPreferences()V
    .locals 7

    .prologue
    .line 165
    iget-boolean v6, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_debug:Z

    if-eqz v6, :cond_0

    const-string v6, "MainPreferenceActivity.setupCustomPreferences()"

    invoke-static {v6}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 167
    :cond_0
    const-string v6, "rate_app"

    invoke-virtual {p0, v6}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 168
    .local v5, rateAppPref:Landroid/preference/Preference;
    new-instance v6, Lapps/babycaretimer/preferences/MainPreferenceActivity$1;

    invoke-direct {v6, p0}, Lapps/babycaretimer/preferences/MainPreferenceActivity$1;-><init>(Lapps/babycaretimer/preferences/MainPreferenceActivity;)V

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 187
    const-string v6, "email_developer"

    invoke-virtual {p0, v6}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 188
    .local v1, emailDeveloperPref:Landroid/preference/Preference;
    new-instance v6, Lapps/babycaretimer/preferences/MainPreferenceActivity$2;

    invoke-direct {v6, p0}, Lapps/babycaretimer/preferences/MainPreferenceActivity$2;-><init>(Lapps/babycaretimer/preferences/MainPreferenceActivity;)V

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 205
    const-string v6, "application_about"

    invoke-virtual {p0, v6}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 206
    .local v0, aboutPreferencesPref:Landroid/preference/Preference;
    new-instance v6, Lapps/babycaretimer/preferences/MainPreferenceActivity$3;

    invoke-direct {v6, p0}, Lapps/babycaretimer/preferences/MainPreferenceActivity$3;-><init>(Lapps/babycaretimer/preferences/MainPreferenceActivity;)V

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 217
    const-string v6, "application_license"

    invoke-virtual {p0, v6}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 218
    .local v4, licensePreferencesPref:Landroid/preference/Preference;
    new-instance v6, Lapps/babycaretimer/preferences/MainPreferenceActivity$4;

    invoke-direct {v6, p0}, Lapps/babycaretimer/preferences/MainPreferenceActivity$4;-><init>(Lapps/babycaretimer/preferences/MainPreferenceActivity;)V

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 225
    const-string v6, "export_preferences"

    invoke-virtual {p0, v6}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 226
    .local v2, exportPreferencesPref:Landroid/preference/Preference;
    new-instance v6, Lapps/babycaretimer/preferences/MainPreferenceActivity$5;

    invoke-direct {v6, p0}, Lapps/babycaretimer/preferences/MainPreferenceActivity$5;-><init>(Lapps/babycaretimer/preferences/MainPreferenceActivity;)V

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 240
    const-string v6, "import_preferences"

    invoke-virtual {p0, v6}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 241
    .local v3, importPreferencesPref:Landroid/preference/Preference;
    new-instance v6, Lapps/babycaretimer/preferences/MainPreferenceActivity$6;

    invoke-direct {v6, p0}, Lapps/babycaretimer/preferences/MainPreferenceActivity$6;-><init>(Lapps/babycaretimer/preferences/MainPreferenceActivity;)V

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 254
    return-void
.end method

.method private setupImportPreferences()V
    .locals 3

    .prologue
    .line 492
    iget-boolean v1, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_debug:Z

    if-eqz v1, :cond_0

    const-string v1, "MainPreferenceActivity.setupImportPreferences()"

    invoke-static {v1}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 493
    :cond_0
    const-string v1, "import_preferences"

    invoke-virtual {p0, v1}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 494
    .local v0, importPreference:Landroid/preference/Preference;
    const-string v1, "Baby Care Timer/Preferences/"

    const-string v2, "BabyCareTimerPreferences.txt"

    invoke-direct {p0, v1, v2}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->checkPreferencesFileExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 495
    return-void
.end method

.method private setupRateAppPreference()V
    .locals 4

    .prologue
    .line 260
    iget-boolean v3, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_debug:Z

    if-eqz v3, :cond_0

    const-string v3, "MainPreferenceActivity.setupRateAppPreference()"

    invoke-static {v3}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 261
    :cond_0
    const/4 v2, 0x0

    .line 262
    .local v2, showRateAppCategory:Z
    invoke-static {}, Lapps/babycaretimer/log/Log;->getShowAndroidRateAppLink()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 263
    :cond_1
    invoke-static {}, Lapps/babycaretimer/log/Log;->getShowAmazonRateAppLink()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .line 264
    :cond_2
    if-nez v2, :cond_3

    .line 265
    invoke-virtual {p0}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 266
    .local v0, mainPreferences:Landroid/preference/PreferenceScreen;
    const-string v3, "rate_app_category"

    invoke-virtual {p0, v3}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 267
    .local v1, rateAppCategory:Landroid/preference/PreferenceCategory;
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 269
    .end local v0           #mainPreferences:Landroid/preference/PreferenceScreen;
    .end local v1           #rateAppCategory:Landroid/preference/PreferenceCategory;
    :cond_3
    return-void
.end method

.method private updateNotificationSoundSettings()V
    .locals 6

    .prologue
    .line 533
    iget-boolean v2, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_debug:Z

    if-eqz v2, :cond_0

    const-string v2, "MainPreferenceActivity.updateNotificationSoundSettings()"

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 534
    :cond_0
    iget-boolean v2, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_debug:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MainPreferenceActivity.updateNotificationSoundSettings() SOUND SETTING: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_preferences:Landroid/content/SharedPreferences;

    const-string v4, "notification_sound"

    const-string v5, "content://settings/system/alarm_alert"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 536
    :cond_1
    :try_start_0
    const-string v2, "notification_in_call_sound_enabled"

    invoke-virtual {p0, v2}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 537
    .local v0, alarmNotificationInCallSoundCheckbox:Landroid/preference/CheckBoxPreference;
    iget-object v2, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_preferences:Landroid/content/SharedPreferences;

    const-string v3, "notification_sound"

    const-string v4, "content://settings/system/alarm_alert"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 538
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 545
    .end local v0           #alarmNotificationInCallSoundCheckbox:Landroid/preference/CheckBoxPreference;
    :cond_2
    :goto_0
    return-void

    .line 540
    .restart local v0       #alarmNotificationInCallSoundCheckbox:Landroid/preference/CheckBoxPreference;
    :cond_3
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 542
    .end local v0           #alarmNotificationInCallSoundCheckbox:Landroid/preference/CheckBoxPreference;
    :catch_0
    move-exception v1

    .line 543
    .local v1, ex:Ljava/lang/Exception;
    iget-boolean v2, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_debug:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MainPreferenceActivity.updateVibrateSettings() ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-static {}, Lapps/babycaretimer/log/Log;->getDebug()Z

    move-result v0

    iput-boolean v0, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_debug:Z

    .line 82
    iget-boolean v0, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "MainPreferenceActivity.onCreate()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 83
    :cond_0
    iput-object p0, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_context:Landroid/content/Context;

    .line 84
    iget-object v0, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_preferences:Landroid/content/SharedPreferences;

    .line 87
    iget-object v0, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "landscape_screen_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->setRequestedOrientation(I)V

    .line 90
    :cond_1
    const/high16 v0, 0x7f05

    invoke-virtual {p0, v0}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->addPreferencesFromResource(I)V

    .line 91
    invoke-direct {p0}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->getApplicationVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_appVersion:Ljava/lang/String;

    .line 92
    invoke-direct {p0}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->setupCustomPreferences()V

    .line 93
    invoke-direct {p0}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->setupRateAppPreference()V

    .line 94
    invoke-direct {p0}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->setupImportPreferences()V

    .line 95
    invoke-direct {p0}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->updateNotificationSoundSettings()V

    .line 96
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 153
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 154
    iget-boolean v0, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "MainPreferenceActivity.onDestroy()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 155
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 135
    iget-boolean v0, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "MainPreferenceActivity.onPause()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 136
    :cond_0
    iget-object v0, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 137
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 122
    invoke-static {}, Lapps/babycaretimer/log/Log;->getDebug()Z

    move-result v0

    iput-boolean v0, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_debug:Z

    .line 123
    iget-boolean v0, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "MainPreferenceActivity.onResume()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 124
    :cond_0
    iget-object v0, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 125
    invoke-direct {p0}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->setupImportPreferences()V

    .line 126
    invoke-direct {p0}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->updateNotificationSoundSettings()V

    .line 127
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 105
    iget-boolean v0, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_debug:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainPreferenceActivity.onSharedPreferenceChanged() Key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 106
    :cond_0
    const-string v0, "notification_sound"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    invoke-direct {p0}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->updateNotificationSoundSettings()V

    .line 110
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 145
    iget-boolean v0, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "MainPreferenceActivity.onStop()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 146
    :cond_0
    return-void
.end method

.method public reloadPreferenceActivity()V
    .locals 4

    .prologue
    .line 551
    iget-boolean v2, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_debug:Z

    if-eqz v2, :cond_0

    const-string v2, "MainPreferenceActivity.reloadPreferenceActivity()"

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 553
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 554
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->overridePendingTransition(II)V

    .line 555
    const/high16 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 556
    invoke-virtual {p0}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->finish()V

    .line 557
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->overridePendingTransition(II)V

    .line 558
    invoke-virtual {p0, v1}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 559
    :catch_0
    move-exception v0

    .line 560
    .local v0, ex:Ljava/lang/Exception;
    iget-boolean v2, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity;->_debug:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MainPreferenceActivity.reloadPreferenceActivity() ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
