.class Lapps/babycaretimer/preferences/MainPreferenceActivity$1;
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
    .line 168
    iput-object p1, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity$1;->this$0:Lapps/babycaretimer/preferences/MainPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    .line 170
    iget-object v4, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity$1;->this$0:Lapps/babycaretimer/preferences/MainPreferenceActivity;

    #getter for: Lapps/babycaretimer/preferences/MainPreferenceActivity;->_debug:Z
    invoke-static {v4}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->access$000(Lapps/babycaretimer/preferences/MainPreferenceActivity;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Rate This App Button Clicked()"

    invoke-static {v4}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 172
    :cond_0
    :try_start_0
    const-string v2, ""

    .line 173
    .local v2, rateAppURL:Ljava/lang/String;
    invoke-static {}, Lapps/babycaretimer/log/Log;->getShowAndroidRateAppLink()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v2, "http://market.android.com/details?id=apps.babycaretimer"

    .line 174
    :cond_1
    invoke-static {}, Lapps/babycaretimer/log/Log;->getShowAmazonRateAppLink()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v2, "http://www.amazon.com/gp/mas/dl/android?p=apps.babycaretimer"

    .line 175
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 176
    .local v1, intent:Landroid/content/Intent;
    const/high16 v4, 0x1080

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 177
    iget-object v4, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity$1;->this$0:Lapps/babycaretimer/preferences/MainPreferenceActivity;

    invoke-virtual {v4, v1}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    const/4 v3, 0x1

    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #rateAppURL:Ljava/lang/String;
    :goto_0
    return v3

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, ex:Ljava/lang/Exception;
    iget-object v4, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity$1;->this$0:Lapps/babycaretimer/preferences/MainPreferenceActivity;

    #getter for: Lapps/babycaretimer/preferences/MainPreferenceActivity;->_debug:Z
    invoke-static {v4}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->access$000(Lapps/babycaretimer/preferences/MainPreferenceActivity;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MainPreferenceActivity.setupCustomPreferences() Rate This App Button ERROR: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    .line 180
    :cond_3
    iget-object v4, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity$1;->this$0:Lapps/babycaretimer/preferences/MainPreferenceActivity;

    #getter for: Lapps/babycaretimer/preferences/MainPreferenceActivity;->_context:Landroid/content/Context;
    invoke-static {v4}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->access$100(Lapps/babycaretimer/preferences/MainPreferenceActivity;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity$1;->this$0:Lapps/babycaretimer/preferences/MainPreferenceActivity;

    #getter for: Lapps/babycaretimer/preferences/MainPreferenceActivity;->_context:Landroid/content/Context;
    invoke-static {v5}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->access$100(Lapps/babycaretimer/preferences/MainPreferenceActivity;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f080029

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
