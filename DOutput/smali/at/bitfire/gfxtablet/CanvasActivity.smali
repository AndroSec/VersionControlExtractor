.class public Lat/bitfire/gfxtablet/CanvasActivity;
.super Landroid/app/Activity;
.source "CanvasActivity.java"


# instance fields
.field canvas:Lat/bitfire/gfxtablet/CanvasView;

.field netClient:Lat/bitfire/gfxtablet/NetworkClient;

.field prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v1, 0x7f040001

    invoke-static {p0, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 25
    const/high16 v1, 0x7f04

    invoke-static {p0, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 27
    const/high16 v1, 0x7f03

    invoke-virtual {p0, v1}, Lat/bitfire/gfxtablet/CanvasActivity;->setContentView(I)V

    .line 28
    const/high16 v1, 0x7f08

    invoke-virtual {p0, v1}, Lat/bitfire/gfxtablet/CanvasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 30
    .local v0, layout:Landroid/widget/LinearLayout;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lat/bitfire/gfxtablet/NetworkClient;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-direct {v2, v3}, Lat/bitfire/gfxtablet/NetworkClient;-><init>(Landroid/content/SharedPreferences;)V

    iput-object v2, p0, Lat/bitfire/gfxtablet/CanvasActivity;->netClient:Lat/bitfire/gfxtablet/NetworkClient;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 32
    new-instance v1, Lat/bitfire/gfxtablet/CanvasView;

    iget-object v2, p0, Lat/bitfire/gfxtablet/CanvasActivity;->netClient:Lat/bitfire/gfxtablet/NetworkClient;

    invoke-direct {v1, p0, v2}, Lat/bitfire/gfxtablet/CanvasView;-><init>(Landroid/content/Context;Lat/bitfire/gfxtablet/NetworkClient;)V

    iput-object v1, p0, Lat/bitfire/gfxtablet/CanvasActivity;->canvas:Lat/bitfire/gfxtablet/CanvasView;

    .line 33
    iget-object v1, p0, Lat/bitfire/gfxtablet/CanvasActivity;->canvas:Lat/bitfire/gfxtablet/CanvasView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 34
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 44
    invoke-virtual {p0}, Lat/bitfire/gfxtablet/CanvasActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lat/bitfire/gfxtablet/CanvasActivity;->netClient:Lat/bitfire/gfxtablet/NetworkClient;

    invoke-virtual {v0}, Lat/bitfire/gfxtablet/NetworkClient;->getQueue()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    new-instance v1, Lat/bitfire/gfxtablet/NetEvent;

    sget-object v2, Lat/bitfire/gfxtablet/NetEvent$Type;->TYPE_DISCONNECT:Lat/bitfire/gfxtablet/NetEvent$Type;

    invoke-direct {v1, v2}, Lat/bitfire/gfxtablet/NetEvent;-><init>(Lat/bitfire/gfxtablet/NetEvent$Type;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 40
    return-void
.end method

.method public showAbout(Landroid/view/MenuItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 49
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://rfc2822.github.com/GfxTablet"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lat/bitfire/gfxtablet/CanvasActivity;->startActivity(Landroid/content/Intent;)V

    .line 50
    return-void
.end method

.method public showSettings(Landroid/view/MenuItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 53
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lat/bitfire/gfxtablet/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lat/bitfire/gfxtablet/CanvasActivity;->startActivity(Landroid/content/Intent;)V

    .line 54
    return-void
.end method
