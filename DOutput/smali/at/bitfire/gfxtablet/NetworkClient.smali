.class public Lat/bitfire/gfxtablet/NetworkClient;
.super Ljava/lang/Object;
.source "NetworkClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static GFXTABLET_PORT:I


# instance fields
.field destAddress:Ljava/net/InetAddress;

.field motionQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lat/bitfire/gfxtablet/NetEvent;",
            ">;"
        }
    .end annotation
.end field

.field preferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const v0, 0x9cb6

    sput v0, Lat/bitfire/gfxtablet/NetworkClient;->GFXTABLET_PORT:I

    return-void
.end method

.method constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 1
    .parameter "preferences"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lat/bitfire/gfxtablet/NetworkClient;->motionQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 24
    iput-object p1, p0, Lat/bitfire/gfxtablet/NetworkClient;->preferences:Landroid/content/SharedPreferences;

    .line 25
    return-void
.end method


# virtual methods
.method configureNetworking()Z
    .locals 5

    .prologue
    .line 29
    :try_start_0
    iget-object v2, p0, Lat/bitfire/gfxtablet/NetworkClient;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "host_preference"

    const-string v4, "unknown.invalid"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, hostName:Ljava/lang/String;
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lat/bitfire/gfxtablet/NetworkClient;->destAddress:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    const/4 v2, 0x1

    .end local v1           #hostName:Ljava/lang/String;
    :goto_0
    return v2

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, e:Ljava/net/UnknownHostException;
    const/4 v2, 0x0

    iput-object v2, p0, Lat/bitfire/gfxtablet/NetworkClient;->destAddress:Ljava/net/InetAddress;

    .line 33
    const/4 v2, 0x0

    goto :goto_0
.end method

.method getQueue()Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lat/bitfire/gfxtablet/NetEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lat/bitfire/gfxtablet/NetworkClient;->motionQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method public run()V
    .locals 8

    .prologue
    .line 41
    :try_start_0
    new-instance v4, Ljava/net/DatagramSocket;

    invoke-direct {v4}, Ljava/net/DatagramSocket;-><init>()V

    .line 44
    .local v4, socket:Ljava/net/DatagramSocket;
    :cond_0
    :goto_0
    iget-object v5, p0, Lat/bitfire/gfxtablet/NetworkClient;->motionQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lat/bitfire/gfxtablet/NetEvent;

    .line 47
    .local v2, event:Lat/bitfire/gfxtablet/NetEvent;
    iget-object v5, v2, Lat/bitfire/gfxtablet/NetEvent;->type:Lat/bitfire/gfxtablet/NetEvent$Type;

    sget-object v6, Lat/bitfire/gfxtablet/NetEvent$Type;->TYPE_DISCONNECT:Lat/bitfire/gfxtablet/NetEvent$Type;

    if-ne v5, v6, :cond_1

    .line 60
    .end local v2           #event:Lat/bitfire/gfxtablet/NetEvent;
    .end local v4           #socket:Ljava/net/DatagramSocket;
    :goto_1
    return-void

    .line 50
    .restart local v2       #event:Lat/bitfire/gfxtablet/NetEvent;
    .restart local v4       #socket:Ljava/net/DatagramSocket;
    :cond_1
    iget-object v5, p0, Lat/bitfire/gfxtablet/NetworkClient;->destAddress:Ljava/net/InetAddress;

    if-eqz v5, :cond_0

    .line 53
    invoke-virtual {v2}, Lat/bitfire/gfxtablet/NetEvent;->toByteArray()[B

    move-result-object v0

    .line 54
    .local v0, data:[B
    new-instance v3, Ljava/net/DatagramPacket;

    array-length v5, v0

    iget-object v6, p0, Lat/bitfire/gfxtablet/NetworkClient;->destAddress:Ljava/net/InetAddress;

    sget v7, Lat/bitfire/gfxtablet/NetworkClient;->GFXTABLET_PORT:I

    invoke-direct {v3, v0, v5, v6, v7}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 55
    .local v3, pkt:Ljava/net/DatagramPacket;
    invoke-virtual {v4, v3}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    .end local v0           #data:[B
    .end local v2           #event:Lat/bitfire/gfxtablet/NetEvent;
    .end local v3           #pkt:Ljava/net/DatagramPacket;
    .end local v4           #socket:Ljava/net/DatagramSocket;
    :catch_0
    move-exception v1

    .line 58
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "GfxTablet"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "motionQueue failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
