.class synthetic Lat/bitfire/gfxtablet/NetEvent$1;
.super Ljava/lang/Object;
.source "NetEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/bitfire/gfxtablet/NetEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$at$bitfire$gfxtablet$NetEvent$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    invoke-static {}, Lat/bitfire/gfxtablet/NetEvent$Type;->values()[Lat/bitfire/gfxtablet/NetEvent$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lat/bitfire/gfxtablet/NetEvent$1;->$SwitchMap$at$bitfire$gfxtablet$NetEvent$Type:[I

    :try_start_0
    sget-object v0, Lat/bitfire/gfxtablet/NetEvent$1;->$SwitchMap$at$bitfire$gfxtablet$NetEvent$Type:[I

    sget-object v1, Lat/bitfire/gfxtablet/NetEvent$Type;->TYPE_MOTION:Lat/bitfire/gfxtablet/NetEvent$Type;

    invoke-virtual {v1}, Lat/bitfire/gfxtablet/NetEvent$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lat/bitfire/gfxtablet/NetEvent$1;->$SwitchMap$at$bitfire$gfxtablet$NetEvent$Type:[I

    sget-object v1, Lat/bitfire/gfxtablet/NetEvent$Type;->TYPE_BUTTON:Lat/bitfire/gfxtablet/NetEvent$Type;

    invoke-virtual {v1}, Lat/bitfire/gfxtablet/NetEvent$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
