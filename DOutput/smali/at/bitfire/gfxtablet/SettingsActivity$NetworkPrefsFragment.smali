.class public Lat/bitfire/gfxtablet/SettingsActivity$NetworkPrefsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/bitfire/gfxtablet/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkPrefsFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lat/bitfire/gfxtablet/SettingsActivity$NetworkPrefsFragment;->addPreferencesFromResource(I)V

    .line 42
    return-void
.end method
