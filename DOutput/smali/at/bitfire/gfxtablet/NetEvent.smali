.class public Lat/bitfire/gfxtablet/NetEvent;
.super Ljava/lang/Object;
.source "NetEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/bitfire/gfxtablet/NetEvent$1;,
        Lat/bitfire/gfxtablet/NetEvent$Type;
    }
.end annotation


# static fields
.field static final protocol_version:S = 0x1s

.field static final signature:Ljava/lang/String; = "GfxTablet"


# instance fields
.field button:B

.field button_down:B

.field pressure:S

.field type:Lat/bitfire/gfxtablet/NetEvent$Type;

.field x:S

.field y:S


# direct methods
.method public constructor <init>(Lat/bitfire/gfxtablet/NetEvent$Type;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lat/bitfire/gfxtablet/NetEvent;->type:Lat/bitfire/gfxtablet/NetEvent$Type;

    .line 29
    return-void
.end method

.method public constructor <init>(Lat/bitfire/gfxtablet/NetEvent$Type;SSS)V
    .locals 0
    .parameter "type"
    .parameter "x"
    .parameter "y"
    .parameter "pressure"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lat/bitfire/gfxtablet/NetEvent;->type:Lat/bitfire/gfxtablet/NetEvent$Type;

    .line 33
    iput-short p2, p0, Lat/bitfire/gfxtablet/NetEvent;->x:S

    .line 34
    iput-short p3, p0, Lat/bitfire/gfxtablet/NetEvent;->y:S

    .line 35
    iput-short p4, p0, Lat/bitfire/gfxtablet/NetEvent;->pressure:S

    .line 36
    return-void
.end method

.method public constructor <init>(Lat/bitfire/gfxtablet/NetEvent$Type;SSSIZ)V
    .locals 1
    .parameter "type"
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "button"
    .parameter "button_down"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lat/bitfire/gfxtablet/NetEvent;-><init>(Lat/bitfire/gfxtablet/NetEvent$Type;SSS)V

    .line 40
    int-to-byte v0, p5

    iput-byte v0, p0, Lat/bitfire/gfxtablet/NetEvent;->button:B

    .line 41
    if-eqz p6, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    iput-byte v0, p0, Lat/bitfire/gfxtablet/NetEvent;->button_down:B

    .line 42
    return-void

    .line 41
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getPressure()S
    .locals 1

    .prologue
    .line 24
    iget-short v0, p0, Lat/bitfire/gfxtablet/NetEvent;->pressure:S

    return v0
.end method

.method public getX()S
    .locals 1

    .prologue
    .line 22
    iget-short v0, p0, Lat/bitfire/gfxtablet/NetEvent;->x:S

    return v0
.end method

.method public getY()S
    .locals 1

    .prologue
    .line 23
    iget-short v0, p0, Lat/bitfire/gfxtablet/NetEvent;->y:S

    return v0
.end method

.method public toByteArray()[B
    .locals 4

    .prologue
    .line 45
    iget-object v2, p0, Lat/bitfire/gfxtablet/NetEvent;->type:Lat/bitfire/gfxtablet/NetEvent$Type;

    sget-object v3, Lat/bitfire/gfxtablet/NetEvent$Type;->TYPE_DISCONNECT:Lat/bitfire/gfxtablet/NetEvent$Type;

    if-ne v2, v3, :cond_0

    .line 46
    const/4 v2, 0x0

    .line 75
    :goto_0
    return-object v2

    .line 48
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 49
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 52
    .local v1, dos:Ljava/io/DataOutputStream;
    :try_start_0
    const-string v2, "GfxTablet"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 53
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 55
    sget-object v2, Lat/bitfire/gfxtablet/NetEvent$1;->$SwitchMap$at$bitfire$gfxtablet$NetEvent$Type:[I

    iget-object v3, p0, Lat/bitfire/gfxtablet/NetEvent;->type:Lat/bitfire/gfxtablet/NetEvent$Type;

    invoke-virtual {v3}, Lat/bitfire/gfxtablet/NetEvent$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 64
    :goto_1
    iget-short v2, p0, Lat/bitfire/gfxtablet/NetEvent;->x:S

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 65
    iget-short v2, p0, Lat/bitfire/gfxtablet/NetEvent;->y:S

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 66
    iget-short v2, p0, Lat/bitfire/gfxtablet/NetEvent;->pressure:S

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 68
    iget-object v2, p0, Lat/bitfire/gfxtablet/NetEvent;->type:Lat/bitfire/gfxtablet/NetEvent$Type;

    sget-object v3, Lat/bitfire/gfxtablet/NetEvent$Type;->TYPE_BUTTON:Lat/bitfire/gfxtablet/NetEvent$Type;

    if-ne v2, v3, :cond_1

    .line 69
    iget-byte v2, p0, Lat/bitfire/gfxtablet/NetEvent;->button:B

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 70
    iget-byte v2, p0, Lat/bitfire/gfxtablet/NetEvent;->button_down:B

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_1
    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    goto :goto_0

    .line 57
    :pswitch_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_1

    .line 72
    :catch_0
    move-exception v2

    goto :goto_2

    .line 60
    :pswitch_1
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
