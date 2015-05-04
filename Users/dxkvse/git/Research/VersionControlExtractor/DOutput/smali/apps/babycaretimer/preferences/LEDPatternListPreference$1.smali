.class Lapps/babycaretimer/preferences/LEDPatternListPreference$1;
.super Ljava/lang/Object;
.source "LEDPatternListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapps/babycaretimer/preferences/LEDPatternListPreference;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapps/babycaretimer/preferences/LEDPatternListPreference;

.field final synthetic val$customOffLEDPatternEditText:Landroid/widget/EditText;

.field final synthetic val$customOnLEDPatternEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lapps/babycaretimer/preferences/LEDPatternListPreference;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lapps/babycaretimer/preferences/LEDPatternListPreference$1;->this$0:Lapps/babycaretimer/preferences/LEDPatternListPreference;

    iput-object p2, p0, Lapps/babycaretimer/preferences/LEDPatternListPreference$1;->val$customOnLEDPatternEditText:Landroid/widget/EditText;

    iput-object p3, p0, Lapps/babycaretimer/preferences/LEDPatternListPreference$1;->val$customOffLEDPatternEditText:Landroid/widget/EditText;

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

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lapps/babycaretimer/preferences/LEDPatternListPreference$1;->val$customOnLEDPatternEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lapps/babycaretimer/preferences/LEDPatternListPreference$1;->val$customOffLEDPatternEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, customLEDPattern:Ljava/lang/String;
    iget-object v2, p0, Lapps/babycaretimer/preferences/LEDPatternListPreference$1;->this$0:Lapps/babycaretimer/preferences/LEDPatternListPreference;

    #calls: Lapps/babycaretimer/preferences/LEDPatternListPreference;->validateLEDPattern(Ljava/lang/String;)Z
    invoke-static {v2, v0}, Lapps/babycaretimer/preferences/LEDPatternListPreference;->access$000(Lapps/babycaretimer/preferences/LEDPatternListPreference;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    iget-object v2, p0, Lapps/babycaretimer/preferences/LEDPatternListPreference$1;->this$0:Lapps/babycaretimer/preferences/LEDPatternListPreference;

    #getter for: Lapps/babycaretimer/preferences/LEDPatternListPreference;->_preferences:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lapps/babycaretimer/preferences/LEDPatternListPreference;->access$100(Lapps/babycaretimer/preferences/LEDPatternListPreference;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 110
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "notification_led_pattern_custom"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 111
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 112
    iget-object v2, p0, Lapps/babycaretimer/preferences/LEDPatternListPreference$1;->this$0:Lapps/babycaretimer/preferences/LEDPatternListPreference;

    #getter for: Lapps/babycaretimer/preferences/LEDPatternListPreference;->_context:Landroid/content/Context;
    invoke-static {v2}, Lapps/babycaretimer/preferences/LEDPatternListPreference;->access$200(Lapps/babycaretimer/preferences/LEDPatternListPreference;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lapps/babycaretimer/preferences/LEDPatternListPreference$1;->this$0:Lapps/babycaretimer/preferences/LEDPatternListPreference;

    #getter for: Lapps/babycaretimer/preferences/LEDPatternListPreference;->_context:Landroid/content/Context;
    invoke-static {v3}, Lapps/babycaretimer/preferences/LEDPatternListPreference;->access$200(Lapps/babycaretimer/preferences/LEDPatternListPreference;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080086

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 116
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v2, p0, Lapps/babycaretimer/preferences/LEDPatternListPreference$1;->this$0:Lapps/babycaretimer/preferences/LEDPatternListPreference;

    #getter for: Lapps/babycaretimer/preferences/LEDPatternListPreference;->_context:Landroid/content/Context;
    invoke-static {v2}, Lapps/babycaretimer/preferences/LEDPatternListPreference;->access$200(Lapps/babycaretimer/preferences/LEDPatternListPreference;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lapps/babycaretimer/preferences/LEDPatternListPreference$1;->this$0:Lapps/babycaretimer/preferences/LEDPatternListPreference;

    #getter for: Lapps/babycaretimer/preferences/LEDPatternListPreference;->_context:Landroid/content/Context;
    invoke-static {v3}, Lapps/babycaretimer/preferences/LEDPatternListPreference;->access$200(Lapps/babycaretimer/preferences/LEDPatternListPreference;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080087

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
