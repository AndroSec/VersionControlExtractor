.class Lapps/babycaretimer/preferences/MainPreferenceActivity$2;
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
    .line 188
    iput-object p1, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity$2;->this$0:Lapps/babycaretimer/preferences/MainPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    .line 190
    iget-object v3, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity$2;->this$0:Lapps/babycaretimer/preferences/MainPreferenceActivity;

    #getter for: Lapps/babycaretimer/preferences/MainPreferenceActivity;->_debug:Z
    invoke-static {v3}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->access$000(Lapps/babycaretimer/preferences/MainPreferenceActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Email Developer Button Clicked()"

    invoke-static {v3}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 192
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    const-string v4, "mailto:babycaretimer@gmail.com"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 193
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "subject"

    const-string v4, "Baby Care Timer App Feedback"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    const/high16 v3, 0x1080

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 195
    iget-object v3, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity$2;->this$0:Lapps/babycaretimer/preferences/MainPreferenceActivity;

    invoke-virtual {v3, v1}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    const/4 v2, 0x1

    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return v2

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, ex:Ljava/lang/Exception;
    iget-object v3, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity$2;->this$0:Lapps/babycaretimer/preferences/MainPreferenceActivity;

    #getter for: Lapps/babycaretimer/preferences/MainPreferenceActivity;->_debug:Z
    invoke-static {v3}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->access$000(Lapps/babycaretimer/preferences/MainPreferenceActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MainPreferenceActivity.setupCustomPreferences() Email Developer Button ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    .line 198
    :cond_1
    iget-object v3, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity$2;->this$0:Lapps/babycaretimer/preferences/MainPreferenceActivity;

    #getter for: Lapps/babycaretimer/preferences/MainPreferenceActivity;->_context:Landroid/content/Context;
    invoke-static {v3}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->access$100(Lapps/babycaretimer/preferences/MainPreferenceActivity;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity$2;->this$0:Lapps/babycaretimer/preferences/MainPreferenceActivity;

    #getter for: Lapps/babycaretimer/preferences/MainPreferenceActivity;->_context:Landroid/content/Context;
    invoke-static {v4}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->access$100(Lapps/babycaretimer/preferences/MainPreferenceActivity;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080028

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
