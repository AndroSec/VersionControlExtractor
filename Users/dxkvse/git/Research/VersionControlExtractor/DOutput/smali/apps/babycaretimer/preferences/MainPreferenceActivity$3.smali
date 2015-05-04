.class Lapps/babycaretimer/preferences/MainPreferenceActivity$3;
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
    .line 206
    iput-object p1, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity$3;->this$0:Lapps/babycaretimer/preferences/MainPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preference"

    .prologue
    const v6, 0x7f08003e

    const v5, 0x7f080005

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 208
    iget-object v0, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity$3;->this$0:Lapps/babycaretimer/preferences/MainPreferenceActivity;

    #getter for: Lapps/babycaretimer/preferences/MainPreferenceActivity;->_debug:Z
    invoke-static {v0}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->access$000(Lapps/babycaretimer/preferences/MainPreferenceActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "About Button Clicked()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 209
    :cond_0
    iget-object v0, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity$3;->this$0:Lapps/babycaretimer/preferences/MainPreferenceActivity;

    #getter for: Lapps/babycaretimer/preferences/MainPreferenceActivity;->_preferences:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->access$200(Lapps/babycaretimer/preferences/MainPreferenceActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "app_theme"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity$3;->this$0:Lapps/babycaretimer/preferences/MainPreferenceActivity;

    iget-object v1, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity$3;->this$0:Lapps/babycaretimer/preferences/MainPreferenceActivity;

    #getter for: Lapps/babycaretimer/preferences/MainPreferenceActivity;->_context:Landroid/content/Context;
    invoke-static {v1}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->access$100(Lapps/babycaretimer/preferences/MainPreferenceActivity;)Landroid/content/Context;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity$3;->this$0:Lapps/babycaretimer/preferences/MainPreferenceActivity;

    #getter for: Lapps/babycaretimer/preferences/MainPreferenceActivity;->_appVersion:Ljava/lang/String;
    invoke-static {v3}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->access$300(Lapps/babycaretimer/preferences/MainPreferenceActivity;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020017

    iget-object v3, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity$3;->this$0:Lapps/babycaretimer/preferences/MainPreferenceActivity;

    #getter for: Lapps/babycaretimer/preferences/MainPreferenceActivity;->_context:Landroid/content/Context;
    invoke-static {v3}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->access$100(Lapps/babycaretimer/preferences/MainPreferenceActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lapps/babycaretimer/preferences/MainPreferenceActivity;->displayHTMLAlertDialog(Ljava/lang/String;ILjava/lang/String;)Z
    invoke-static {v0, v1, v2, v3}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->access$400(Lapps/babycaretimer/preferences/MainPreferenceActivity;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    .line 212
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity$3;->this$0:Lapps/babycaretimer/preferences/MainPreferenceActivity;

    iget-object v1, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity$3;->this$0:Lapps/babycaretimer/preferences/MainPreferenceActivity;

    #getter for: Lapps/babycaretimer/preferences/MainPreferenceActivity;->_context:Landroid/content/Context;
    invoke-static {v1}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->access$100(Lapps/babycaretimer/preferences/MainPreferenceActivity;)Landroid/content/Context;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity$3;->this$0:Lapps/babycaretimer/preferences/MainPreferenceActivity;

    #getter for: Lapps/babycaretimer/preferences/MainPreferenceActivity;->_appVersion:Ljava/lang/String;
    invoke-static {v3}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->access$300(Lapps/babycaretimer/preferences/MainPreferenceActivity;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020018

    iget-object v3, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity$3;->this$0:Lapps/babycaretimer/preferences/MainPreferenceActivity;

    #getter for: Lapps/babycaretimer/preferences/MainPreferenceActivity;->_context:Landroid/content/Context;
    invoke-static {v3}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->access$100(Lapps/babycaretimer/preferences/MainPreferenceActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lapps/babycaretimer/preferences/MainPreferenceActivity;->displayHTMLAlertDialog(Ljava/lang/String;ILjava/lang/String;)Z
    invoke-static {v0, v1, v2, v3}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->access$400(Lapps/babycaretimer/preferences/MainPreferenceActivity;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
