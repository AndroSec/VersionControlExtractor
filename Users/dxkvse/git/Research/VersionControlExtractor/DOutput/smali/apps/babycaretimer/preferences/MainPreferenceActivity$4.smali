.class Lapps/babycaretimer/preferences/MainPreferenceActivity$4;
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
    .line 218
    iput-object p1, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity$4;->this$0:Lapps/babycaretimer/preferences/MainPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preference"

    .prologue
    .line 220
    iget-object v0, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity$4;->this$0:Lapps/babycaretimer/preferences/MainPreferenceActivity;

    #getter for: Lapps/babycaretimer/preferences/MainPreferenceActivity;->_debug:Z
    invoke-static {v0}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->access$000(Lapps/babycaretimer/preferences/MainPreferenceActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "License Button Clicked()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 221
    :cond_0
    iget-object v0, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity$4;->this$0:Lapps/babycaretimer/preferences/MainPreferenceActivity;

    iget-object v1, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity$4;->this$0:Lapps/babycaretimer/preferences/MainPreferenceActivity;

    #getter for: Lapps/babycaretimer/preferences/MainPreferenceActivity;->_context:Landroid/content/Context;
    invoke-static {v1}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->access$100(Lapps/babycaretimer/preferences/MainPreferenceActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080002

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020015

    iget-object v3, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity$4;->this$0:Lapps/babycaretimer/preferences/MainPreferenceActivity;

    #getter for: Lapps/babycaretimer/preferences/MainPreferenceActivity;->_context:Landroid/content/Context;
    invoke-static {v3}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->access$100(Lapps/babycaretimer/preferences/MainPreferenceActivity;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080003

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lapps/babycaretimer/preferences/MainPreferenceActivity;->displayHTMLAlertDialog(Ljava/lang/String;ILjava/lang/String;)Z
    invoke-static {v0, v1, v2, v3}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->access$400(Lapps/babycaretimer/preferences/MainPreferenceActivity;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method
