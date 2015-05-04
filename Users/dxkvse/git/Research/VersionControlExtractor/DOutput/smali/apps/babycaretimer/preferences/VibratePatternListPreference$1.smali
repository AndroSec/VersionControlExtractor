.class Lapps/babycaretimer/preferences/VibratePatternListPreference$1;
.super Ljava/lang/Object;
.source "VibratePatternListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapps/babycaretimer/preferences/VibratePatternListPreference;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapps/babycaretimer/preferences/VibratePatternListPreference;

.field final synthetic val$customVibratePatternEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lapps/babycaretimer/preferences/VibratePatternListPreference;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lapps/babycaretimer/preferences/VibratePatternListPreference$1;->this$0:Lapps/babycaretimer/preferences/VibratePatternListPreference;

    iput-object p2, p0, Lapps/babycaretimer/preferences/VibratePatternListPreference$1;->val$customVibratePatternEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v5, 0x1

    .line 103
    iget-object v2, p0, Lapps/babycaretimer/preferences/VibratePatternListPreference$1;->val$customVibratePatternEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, customVibratePattern:Ljava/lang/String;
    iget-object v2, p0, Lapps/babycaretimer/preferences/VibratePatternListPreference$1;->this$0:Lapps/babycaretimer/preferences/VibratePatternListPreference;

    #calls: Lapps/babycaretimer/preferences/VibratePatternListPreference;->validateVibratePattern(Ljava/lang/String;)Z
    invoke-static {v2, v0}, Lapps/babycaretimer/preferences/VibratePatternListPreference;->access$000(Lapps/babycaretimer/preferences/VibratePatternListPreference;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    iget-object v2, p0, Lapps/babycaretimer/preferences/VibratePatternListPreference$1;->this$0:Lapps/babycaretimer/preferences/VibratePatternListPreference;

    #getter for: Lapps/babycaretimer/preferences/VibratePatternListPreference;->_preferences:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lapps/babycaretimer/preferences/VibratePatternListPreference;->access$100(Lapps/babycaretimer/preferences/VibratePatternListPreference;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 106
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "notification_vibrate_pattern_custom"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 107
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 108
    iget-object v2, p0, Lapps/babycaretimer/preferences/VibratePatternListPreference$1;->this$0:Lapps/babycaretimer/preferences/VibratePatternListPreference;

    #getter for: Lapps/babycaretimer/preferences/VibratePatternListPreference;->_context:Landroid/content/Context;
    invoke-static {v2}, Lapps/babycaretimer/preferences/VibratePatternListPreference;->access$200(Lapps/babycaretimer/preferences/VibratePatternListPreference;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lapps/babycaretimer/preferences/VibratePatternListPreference$1;->this$0:Lapps/babycaretimer/preferences/VibratePatternListPreference;

    #getter for: Lapps/babycaretimer/preferences/VibratePatternListPreference;->_context:Landroid/content/Context;
    invoke-static {v3}, Lapps/babycaretimer/preferences/VibratePatternListPreference;->access$200(Lapps/babycaretimer/preferences/VibratePatternListPreference;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08007b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 112
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v2, p0, Lapps/babycaretimer/preferences/VibratePatternListPreference$1;->this$0:Lapps/babycaretimer/preferences/VibratePatternListPreference;

    #getter for: Lapps/babycaretimer/preferences/VibratePatternListPreference;->_context:Landroid/content/Context;
    invoke-static {v2}, Lapps/babycaretimer/preferences/VibratePatternListPreference;->access$200(Lapps/babycaretimer/preferences/VibratePatternListPreference;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lapps/babycaretimer/preferences/VibratePatternListPreference$1;->this$0:Lapps/babycaretimer/preferences/VibratePatternListPreference;

    #getter for: Lapps/babycaretimer/preferences/VibratePatternListPreference;->_context:Landroid/content/Context;
    invoke-static {v3}, Lapps/babycaretimer/preferences/VibratePatternListPreference;->access$200(Lapps/babycaretimer/preferences/VibratePatternListPreference;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08007c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
