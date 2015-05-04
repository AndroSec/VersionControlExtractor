.class Lapps/babycaretimer/preferences/LEDColorListPreference$1;
.super Ljava/lang/Object;
.source "LEDColorListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapps/babycaretimer/preferences/LEDColorListPreference;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapps/babycaretimer/preferences/LEDColorListPreference;


# direct methods
.method constructor <init>(Lapps/babycaretimer/preferences/LEDColorListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lapps/babycaretimer/preferences/LEDColorListPreference$1;->this$0:Lapps/babycaretimer/preferences/LEDColorListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 146
    iget-object v3, p0, Lapps/babycaretimer/preferences/LEDColorListPreference$1;->this$0:Lapps/babycaretimer/preferences/LEDColorListPreference;

    #getter for: Lapps/babycaretimer/preferences/LEDColorListPreference;->redSeekBar:Landroid/widget/SeekBar;
    invoke-static {v3}, Lapps/babycaretimer/preferences/LEDColorListPreference;->access$000(Lapps/babycaretimer/preferences/LEDColorListPreference;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    iget-object v4, p0, Lapps/babycaretimer/preferences/LEDColorListPreference$1;->this$0:Lapps/babycaretimer/preferences/LEDColorListPreference;

    #getter for: Lapps/babycaretimer/preferences/LEDColorListPreference;->greenSeekBar:Landroid/widget/SeekBar;
    invoke-static {v4}, Lapps/babycaretimer/preferences/LEDColorListPreference;->access$100(Lapps/babycaretimer/preferences/LEDColorListPreference;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    iget-object v5, p0, Lapps/babycaretimer/preferences/LEDColorListPreference$1;->this$0:Lapps/babycaretimer/preferences/LEDColorListPreference;

    #getter for: Lapps/babycaretimer/preferences/LEDColorListPreference;->blueSeekBar:Landroid/widget/SeekBar;
    invoke-static {v5}, Lapps/babycaretimer/preferences/LEDColorListPreference;->access$200(Lapps/babycaretimer/preferences/LEDColorListPreference;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 147
    .local v0, customColor:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, customLEDColor:Ljava/lang/String;
    iget-object v3, p0, Lapps/babycaretimer/preferences/LEDColorListPreference$1;->this$0:Lapps/babycaretimer/preferences/LEDColorListPreference;

    #getter for: Lapps/babycaretimer/preferences/LEDColorListPreference;->_preferences:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lapps/babycaretimer/preferences/LEDColorListPreference;->access$300(Lapps/babycaretimer/preferences/LEDColorListPreference;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 149
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "notification_led_color_custom"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 150
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 151
    iget-object v3, p0, Lapps/babycaretimer/preferences/LEDColorListPreference$1;->this$0:Lapps/babycaretimer/preferences/LEDColorListPreference;

    #getter for: Lapps/babycaretimer/preferences/LEDColorListPreference;->_context:Landroid/content/Context;
    invoke-static {v3}, Lapps/babycaretimer/preferences/LEDColorListPreference;->access$400(Lapps/babycaretimer/preferences/LEDColorListPreference;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lapps/babycaretimer/preferences/LEDColorListPreference$1;->this$0:Lapps/babycaretimer/preferences/LEDColorListPreference;

    #getter for: Lapps/babycaretimer/preferences/LEDColorListPreference;->_context:Landroid/content/Context;
    invoke-static {v4}, Lapps/babycaretimer/preferences/LEDColorListPreference;->access$400(Lapps/babycaretimer/preferences/LEDColorListPreference;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f08008d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 152
    return-void
.end method
