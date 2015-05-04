.class Lapps/babycaretimer/preferences/MainPreferenceActivity$importPreferencesAsyncTask;
.super Landroid/os/AsyncTask;
.source "MainPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapps/babycaretimer/preferences/MainPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "importPreferencesAsyncTask"
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
.field private dialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lapps/babycaretimer/preferences/MainPreferenceActivity;


# direct methods
.method private constructor <init>(Lapps/babycaretimer/preferences/MainPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity$importPreferencesAsyncTask;->this$0:Lapps/babycaretimer/preferences/MainPreferenceActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lapps/babycaretimer/preferences/MainPreferenceActivity;Lapps/babycaretimer/preferences/MainPreferenceActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 373
    invoke-direct {p0, p1}, Lapps/babycaretimer/preferences/MainPreferenceActivity$importPreferencesAsyncTask;-><init>(Lapps/babycaretimer/preferences/MainPreferenceActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .parameter "params"

    .prologue
    .line 389
    iget-object v0, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity$importPreferencesAsyncTask;->this$0:Lapps/babycaretimer/preferences/MainPreferenceActivity;

    #getter for: Lapps/babycaretimer/preferences/MainPreferenceActivity;->_debug:Z
    invoke-static {v0}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->access$000(Lapps/babycaretimer/preferences/MainPreferenceActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MainPreferenceActivity.importPreferencesAsyncTask.doInBackground()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 390
    :cond_0
    iget-object v0, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity$importPreferencesAsyncTask;->this$0:Lapps/babycaretimer/preferences/MainPreferenceActivity;

    #calls: Lapps/babycaretimer/preferences/MainPreferenceActivity;->importApplicationPreferences()Z
    invoke-static {v0}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->access$900(Lapps/babycaretimer/preferences/MainPreferenceActivity;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 373
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lapps/babycaretimer/preferences/MainPreferenceActivity$importPreferencesAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .parameter "successful"

    .prologue
    const/4 v3, 0x1

    .line 398
    iget-object v0, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity$importPreferencesAsyncTask;->this$0:Lapps/babycaretimer/preferences/MainPreferenceActivity;

    #getter for: Lapps/babycaretimer/preferences/MainPreferenceActivity;->_debug:Z
    invoke-static {v0}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->access$000(Lapps/babycaretimer/preferences/MainPreferenceActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MainPreferenceActivity.importPreferencesAsyncTask.onPostExecute()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 399
    :cond_0
    iget-object v0, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity$importPreferencesAsyncTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 400
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity$importPreferencesAsyncTask;->this$0:Lapps/babycaretimer/preferences/MainPreferenceActivity;

    #getter for: Lapps/babycaretimer/preferences/MainPreferenceActivity;->_context:Landroid/content/Context;
    invoke-static {v0}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->access$100(Lapps/babycaretimer/preferences/MainPreferenceActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity$importPreferencesAsyncTask;->this$0:Lapps/babycaretimer/preferences/MainPreferenceActivity;

    #getter for: Lapps/babycaretimer/preferences/MainPreferenceActivity;->_context:Landroid/content/Context;
    invoke-static {v1}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->access$100(Lapps/babycaretimer/preferences/MainPreferenceActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08004c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 405
    :goto_0
    iget-object v0, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity$importPreferencesAsyncTask;->this$0:Lapps/babycaretimer/preferences/MainPreferenceActivity;

    invoke-virtual {v0}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->reloadPreferenceActivity()V

    .line 406
    return-void

    .line 403
    :cond_1
    iget-object v0, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity$importPreferencesAsyncTask;->this$0:Lapps/babycaretimer/preferences/MainPreferenceActivity;

    #getter for: Lapps/babycaretimer/preferences/MainPreferenceActivity;->_context:Landroid/content/Context;
    invoke-static {v0}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->access$100(Lapps/babycaretimer/preferences/MainPreferenceActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity$importPreferencesAsyncTask;->this$0:Lapps/babycaretimer/preferences/MainPreferenceActivity;

    #getter for: Lapps/babycaretimer/preferences/MainPreferenceActivity;->_context:Landroid/content/Context;
    invoke-static {v1}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->access$100(Lapps/babycaretimer/preferences/MainPreferenceActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08004d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 373
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lapps/babycaretimer/preferences/MainPreferenceActivity$importPreferencesAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 380
    iget-object v0, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity$importPreferencesAsyncTask;->this$0:Lapps/babycaretimer/preferences/MainPreferenceActivity;

    #getter for: Lapps/babycaretimer/preferences/MainPreferenceActivity;->_debug:Z
    invoke-static {v0}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->access$000(Lapps/babycaretimer/preferences/MainPreferenceActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MainPreferenceActivity.importPreferencesAsyncTask.onPreExecute()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 381
    :cond_0
    iget-object v0, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity$importPreferencesAsyncTask;->this$0:Lapps/babycaretimer/preferences/MainPreferenceActivity;

    const-string v1, ""

    iget-object v2, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity$importPreferencesAsyncTask;->this$0:Lapps/babycaretimer/preferences/MainPreferenceActivity;

    #getter for: Lapps/babycaretimer/preferences/MainPreferenceActivity;->_context:Landroid/content/Context;
    invoke-static {v2}, Lapps/babycaretimer/preferences/MainPreferenceActivity;->access$100(Lapps/babycaretimer/preferences/MainPreferenceActivity;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08004b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lapps/babycaretimer/preferences/MainPreferenceActivity$importPreferencesAsyncTask;->dialog:Landroid/app/ProgressDialog;

    .line 382
    return-void
.end method
