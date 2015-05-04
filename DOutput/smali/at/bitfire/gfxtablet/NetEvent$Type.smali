.class final enum Lat/bitfire/gfxtablet/NetEvent$Type;
.super Ljava/lang/Enum;
.source "NetEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/bitfire/gfxtablet/NetEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lat/bitfire/gfxtablet/NetEvent$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lat/bitfire/gfxtablet/NetEvent$Type;

.field public static final enum TYPE_BUTTON:Lat/bitfire/gfxtablet/NetEvent$Type;

.field public static final enum TYPE_DISCONNECT:Lat/bitfire/gfxtablet/NetEvent$Type;

.field public static final enum TYPE_MOTION:Lat/bitfire/gfxtablet/NetEvent$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lat/bitfire/gfxtablet/NetEvent$Type;

    const-string v1, "TYPE_MOTION"

    invoke-direct {v0, v1, v2}, Lat/bitfire/gfxtablet/NetEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lat/bitfire/gfxtablet/NetEvent$Type;->TYPE_MOTION:Lat/bitfire/gfxtablet/NetEvent$Type;

    .line 10
    new-instance v0, Lat/bitfire/gfxtablet/NetEvent$Type;

    const-string v1, "TYPE_BUTTON"

    invoke-direct {v0, v1, v3}, Lat/bitfire/gfxtablet/NetEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lat/bitfire/gfxtablet/NetEvent$Type;->TYPE_BUTTON:Lat/bitfire/gfxtablet/NetEvent$Type;

    .line 13
    new-instance v0, Lat/bitfire/gfxtablet/NetEvent$Type;

    const-string v1, "TYPE_DISCONNECT"

    invoke-direct {v0, v1, v4}, Lat/bitfire/gfxtablet/NetEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lat/bitfire/gfxtablet/NetEvent$Type;->TYPE_DISCONNECT:Lat/bitfire/gfxtablet/NetEvent$Type;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lat/bitfire/gfxtablet/NetEvent$Type;

    sget-object v1, Lat/bitfire/gfxtablet/NetEvent$Type;->TYPE_MOTION:Lat/bitfire/gfxtablet/NetEvent$Type;

    aput-object v1, v0, v2

    sget-object v1, Lat/bitfire/gfxtablet/NetEvent$Type;->TYPE_BUTTON:Lat/bitfire/gfxtablet/NetEvent$Type;

    aput-object v1, v0, v3

    sget-object v1, Lat/bitfire/gfxtablet/NetEvent$Type;->TYPE_DISCONNECT:Lat/bitfire/gfxtablet/NetEvent$Type;

    aput-object v1, v0, v4

    sput-object v0, Lat/bitfire/gfxtablet/NetEvent$Type;->$VALUES:[Lat/bitfire/gfxtablet/NetEvent$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lat/bitfire/gfxtablet/NetEvent$Type;
    .locals 1
    .parameter "name"

    .prologue
    .line 8
    const-class v0, Lat/bitfire/gfxtablet/NetEvent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lat/bitfire/gfxtablet/NetEvent$Type;

    return-object v0
.end method

.method public static values()[Lat/bitfire/gfxtablet/NetEvent$Type;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lat/bitfire/gfxtablet/NetEvent$Type;->$VALUES:[Lat/bitfire/gfxtablet/NetEvent$Type;

    invoke-virtual {v0}, [Lat/bitfire/gfxtablet/NetEvent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lat/bitfire/gfxtablet/NetEvent$Type;

    return-object v0
.end method
