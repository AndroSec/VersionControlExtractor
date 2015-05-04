.class Lat/bitfire/gfxtablet/CanvasView$ConfigureNetworkingTask;
.super Landroid/os/AsyncTask;
.source "CanvasView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/bitfire/gfxtablet/CanvasView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigureNetworkingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lat/bitfire/gfxtablet/CanvasView;


# direct methods
.method private constructor <init>(Lat/bitfire/gfxtablet/CanvasView;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lat/bitfire/gfxtablet/CanvasView$ConfigureNetworkingTask;->this$0:Lat/bitfire/gfxtablet/CanvasView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lat/bitfire/gfxtablet/CanvasView;Lat/bitfire/gfxtablet/CanvasView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lat/bitfire/gfxtablet/CanvasView$ConfigureNetworkingTask;-><init>(Lat/bitfire/gfxtablet/CanvasView;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .parameter "params"

    .prologue
    .line 119
    iget-object v0, p0, Lat/bitfire/gfxtablet/CanvasView$ConfigureNetworkingTask;->this$0:Lat/bitfire/gfxtablet/CanvasView;

    iget-object v0, v0, Lat/bitfire/gfxtablet/CanvasView;->netClient:Lat/bitfire/gfxtablet/NetworkClient;

    invoke-virtual {v0}, Lat/bitfire/gfxtablet/NetworkClient;->configureNetworking()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lat/bitfire/gfxtablet/CanvasView$ConfigureNetworkingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .parameter "success"

    .prologue
    const/4 v2, 0x1

    .line 123
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lat/bitfire/gfxtablet/CanvasView$ConfigureNetworkingTask;->this$0:Lat/bitfire/gfxtablet/CanvasView;

    invoke-virtual {v0, v2}, Lat/bitfire/gfxtablet/CanvasView;->setEnabled(Z)V

    .line 130
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lat/bitfire/gfxtablet/CanvasView$ConfigureNetworkingTask;->this$0:Lat/bitfire/gfxtablet/CanvasView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lat/bitfire/gfxtablet/CanvasView;->setEnabled(Z)V

    .line 127
    iget-object v0, p0, Lat/bitfire/gfxtablet/CanvasView$ConfigureNetworkingTask;->this$0:Lat/bitfire/gfxtablet/CanvasView;

    invoke-virtual {v0}, Lat/bitfire/gfxtablet/CanvasView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Unknown host name, please configure"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 128
    iget-object v0, p0, Lat/bitfire/gfxtablet/CanvasView$ConfigureNetworkingTask;->this$0:Lat/bitfire/gfxtablet/CanvasView;

    invoke-virtual {v0}, Lat/bitfire/gfxtablet/CanvasView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lat/bitfire/gfxtablet/CanvasView$ConfigureNetworkingTask;->this$0:Lat/bitfire/gfxtablet/CanvasView;

    invoke-virtual {v2}, Lat/bitfire/gfxtablet/CanvasView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lat/bitfire/gfxtablet/SettingsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lat/bitfire/gfxtablet/CanvasView$ConfigureNetworkingTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
