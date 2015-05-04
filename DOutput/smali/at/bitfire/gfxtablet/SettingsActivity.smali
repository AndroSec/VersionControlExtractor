.class public Lat/bitfire/gfxtablet/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/bitfire/gfxtablet/SettingsActivity$DrawingPrefsFragment;,
        Lat/bitfire/gfxtablet/SettingsActivity$NetworkPrefsFragment;
    }
.end annotation


# static fields
.field public static final KEY_PREF_HOST:Ljava/lang/String; = "host_preference"

.field public static final KEY_PREF_STYLUS_ONLY:Ljava/lang/String; = "stylus_only_preference"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method public onBuildHeaders(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const v0, 0x7f040002

    invoke-virtual {p0, v0, p1}, Lat/bitfire/gfxtablet/SettingsActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 27
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Lat/bitfire/gfxtablet/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 22
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 31
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 32
    invoke-virtual {p0}, Lat/bitfire/gfxtablet/SettingsActivity;->finish()V

    .line 33
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
