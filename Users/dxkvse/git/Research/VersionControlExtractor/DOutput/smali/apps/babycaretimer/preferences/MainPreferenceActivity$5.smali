.class Lapps/babycaretimer/preferences/MainPreferenceActivity$5;
.super Ljava/lang/Object;
.source "MainPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapps/babycaretimer/preferences/MainPreferenceActivity;->setupCustomPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapps/babycaretimer/preferences/MainPreferenceActivity;


# direct methods
.method constructor <init>(Lapps/babycaretimer/preferences/MainPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity$5;->this$0:Lapps/babycaretimer/preferences/MainPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    .line 228
    iget-object v2, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity$5;->this$0:Lapps/babycaretimer/preferences/MainPreferenceActivity;

    #getter for: Lapps/babycaretimer/preferences/MainPreferenceActivity;->_debug:Z
    invoke-static {v2}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->access$000(Lapps/babycaretimer/preferences/MainPreferenceActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Export Preferences Button Clicked()"

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 231
    :cond_0
    :try_start_0
    new-instance v2, Lapps/babycaretimer/preferences/MainPreferenceActivity$exportPreferencesAsyncTask;

    iget-object v3, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity$5;->this$0:Lapps/babycaretimer/preferences/MainPreferenceActivity;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lapps/babycaretimer/preferences/MainPreferenceActivity$exportPreferencesAsyncTask;-><init>(Lapps/babycaretimer/preferences/MainPreferenceActivity;Lapps/babycaretimer/preferences/MainPreferenceActivity$1;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lapps/babycaretimer/preferences/MainPreferenceActivity$exportPreferencesAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, ex:Ljava/lang/Exception;
    iget-object v2, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity$5;->this$0:Lapps/babycaretimer/preferences/MainPreferenceActivity;

    #getter for: Lapps/babycaretimer/preferences/MainPreferenceActivity;->_debug:Z
    invoke-static {v2}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->access$000(Lapps/babycaretimer/preferences/MainPreferenceActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MainPreferenceActivity.setupCustomPreferences() Export Preferences Button ERROR: "

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
