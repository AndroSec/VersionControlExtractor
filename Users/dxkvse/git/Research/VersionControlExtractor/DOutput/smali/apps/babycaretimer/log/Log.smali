.class public Lapps/babycaretimer/log/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static final _debug:Z = true

.field private static final _debugFileOnDisk:Z = false

.field private static final _logTag:Ljava/lang/String; = "BabyCareTimer"

.field private static final _showAmazonRateAppLink:Z = false

.field private static final _showAndroidRateAppLink:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 85
    invoke-static {}, Lapps/babycaretimer/log/Log;->getLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 121
    invoke-static {}, Lapps/babycaretimer/log/Log;->getLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void
.end method

.method public static getDebug()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public static getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "BabyCareTimer"

    return-object v0
.end method

.method public static getShowAmazonRateAppLink()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public static getShowAndroidRateAppLink()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 97
    invoke-static {}, Lapps/babycaretimer/log/Log;->getLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 73
    invoke-static {}, Lapps/babycaretimer/log/Log;->getLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 109
    invoke-static {}, Lapps/babycaretimer/log/Log;->getLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method

.method private static writeToCustomLog(ILjava/lang/String;)V
    .locals 8
    .parameter "logType"
    .parameter "msg"

    .prologue
    .line 137
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, state:Ljava/lang/String;
    const-string v5, "mounted"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 149
    const/4 v3, 0x0

    .line 150
    .local v3, logFilePath:Ljava/io/File;
    packed-switch p0, :pswitch_data_0

    .line 172
    :goto_0
    new-instance v2, Ljava/io/File;

    const-string v5, "BabyCareTimerLog.txt"

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 174
    .local v2, logFile:Ljava/io/File;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 175
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    const/4 v6, 0x1

    invoke-direct {v5, v2, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    invoke-direct {v0, v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 176
    .local v0, buf:Ljava/io/BufferedWriter;
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 177
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 178
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v0           #buf:Ljava/io/BufferedWriter;
    .end local v2           #logFile:Ljava/io/File;
    .end local v3           #logFilePath:Ljava/io/File;
    :goto_1
    return-void

    .line 140
    :cond_0
    const-string v5, "mounted_ro"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 142
    invoke-static {}, Lapps/babycaretimer/log/Log;->getLogTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Log.writeToCustomLog() External Storage Read Only State"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 146
    :cond_1
    invoke-static {}, Lapps/babycaretimer/log/Log;->getLogTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Log.writeToCustomLog() External Storage Can\'t Write Or Read State"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 152
    .restart local v3       #logFilePath:Ljava/io/File;
    :pswitch_0
    const-string v5, "Baby Care Timer/Logs/V"

    invoke-static {v5}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 153
    goto :goto_0

    .line 156
    :pswitch_1
    const-string v5, "Baby Care Timer/Logs/D"

    invoke-static {v5}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 157
    goto :goto_0

    .line 160
    :pswitch_2
    const-string v5, "Baby Care Timer/Logs/I"

    invoke-static {v5}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 161
    goto :goto_0

    .line 164
    :pswitch_3
    const-string v5, "Baby Care Timer/Logs/W"

    invoke-static {v5}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 165
    goto :goto_0

    .line 168
    :pswitch_4
    const-string v5, "Baby Care Timer/Logs/E"

    invoke-static {v5}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    goto :goto_0

    .line 179
    .restart local v2       #logFile:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 180
    .local v1, ex:Ljava/lang/Exception;
    invoke-static {}, Lapps/babycaretimer/log/Log;->getLogTag()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Log.writeToCustomLog WRITE ERROR: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
