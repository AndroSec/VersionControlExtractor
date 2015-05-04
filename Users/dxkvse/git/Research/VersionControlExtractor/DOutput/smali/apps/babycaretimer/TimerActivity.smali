.class public Lapps/babycaretimer/TimerActivity;
.super Landroid/app/Activity;
.source "TimerActivity.java"


# static fields
.field private static final BOTTLE_CANCEL_ALARM_CONTEXT_MENU:I = 0x7f0b003d

.field private static final BOTTLE_LINEAR_LAYOUT_ID:I = 0x7f0b0024

.field private static final BOTTLE_RESTART_TIMER_CONTEXT_MENU:I = 0x7f0b003e

.field private static final BOTTLE_SET_ALARM_CONTEXT_MENU:I = 0x7f0b003c

.field private static final BOTTLE_STOP_TIMER_CONTEXT_MENU:I = 0x7f0b003f

.field private static final CUSTOM_CANCEL_ALARM_CONTEXT_MENU:I = 0x7f0b0041

.field private static final CUSTOM_LINEAR_LAYOUT_ID:I = 0x7f0b002c

.field private static final CUSTOM_RESTART_TIMER_CONTEXT_MENU:I = 0x7f0b0042

.field private static final CUSTOM_SET_ALARM_CONTEXT_MENU:I = 0x7f0b0040

.field private static final CUSTOM_STOP_TIMER_CONTEXT_MENU:I = 0x7f0b0043

.field private static final DIAPER_CANCEL_ALARM_CONTEXT_MENU:I = 0x7f0b0045

.field private static final DIAPER_LINEAR_LAYOUT_ID:I = 0x7f0b0020

.field private static final DIAPER_RESTART_TIMER_CONTEXT_MENU:I = 0x7f0b0046

.field private static final DIAPER_SET_ALARM_CONTEXT_MENU:I = 0x7f0b0044

.field private static final DIAPER_STOP_TIMER_CONTEXT_MENU:I = 0x7f0b0047

.field private static final MENU_ITEM_SETTINGS:I = 0x7f0b0048

.field private static final SLEEP_CANCEL_ALARM_CONTEXT_MENU:I = 0x7f0b004a

.field private static final SLEEP_LINEAR_LAYOUT_ID:I = 0x7f0b0028

.field private static final SLEEP_RESTART_TIMER_CONTEXT_MENU:I = 0x7f0b004b

.field private static final SLEEP_SET_ALARM_CONTEXT_MENU:I = 0x7f0b0049

.field private static final SLEEP_STOP_TIMER_CONTEXT_MENU:I = 0x7f0b004c


# instance fields
.field private _LTextView:Landroid/widget/TextView;

.field private _RTextView:Landroid/widget/TextView;

.field private _appTheme:Ljava/lang/String;

.field private _blinkEnabled:Z

.field private _bottleAlarmActive:Z

.field private _bottleAlarmRecurring:Z

.field private _bottleAlarmSnooze:Z

.field private _bottleAlarmTextView:Landroid/widget/TextView;

.field private _bottleAlarmTime:J

.field private _bottleBaseTime:J

.field private _bottleCount:I

.field private _bottleImageButton:Landroid/widget/ImageButton;

.field private _bottleImageView:Landroid/widget/ImageView;

.field private _bottleLinearLayout:Landroid/widget/LinearLayout;

.field private _bottleTextView:Landroid/widget/TextView;

.field private _bottleTimerActive:Z

.field private _bottleTimerOffset:J

.field private _bottleTimerStartTime:J

.field private _bottleTotalTextView:Landroid/widget/TextView;

.field private _breastFeedingSide:I

.field private _confirmResetCounters:Z

.field private _context:Landroid/content/Context;

.field private _customAlarmActive:Z

.field private _customAlarmRecurring:Z

.field private _customAlarmSnooze:Z

.field private _customAlarmTextView:Landroid/widget/TextView;

.field private _customAlarmTime:J

.field private _customBaseTime:J

.field private _customCount:I

.field private _customImageButton:Landroid/widget/ImageButton;

.field private _customImageView:Landroid/widget/ImageView;

.field private _customLinearLayout:Landroid/widget/LinearLayout;

.field private _customTextView:Landroid/widget/TextView;

.field private _customTimerActive:Z

.field private _customTimerOffset:J

.field private _customTimerStartTime:J

.field private _customTotalTextView:Landroid/widget/TextView;

.field private _debug:Z

.field private _diaperAlarmActive:Z

.field private _diaperAlarmRecurring:Z

.field private _diaperAlarmSnooze:Z

.field private _diaperAlarmTextView:Landroid/widget/TextView;

.field private _diaperAlarmTime:J

.field private _diaperBaseTime:J

.field private _diaperCount:I

.field private _diaperImageButton:Landroid/widget/ImageButton;

.field private _diaperImageView:Landroid/widget/ImageView;

.field private _diaperLinearLayout:Landroid/widget/LinearLayout;

.field private _diaperTextView:Landroid/widget/TextView;

.field private _diaperTimerActive:Z

.field private _diaperTimerOffset:J

.field private _diaperTimerStartTime:J

.field private _diaperTotalTextView:Landroid/widget/TextView;

.field private _hapticFeedbackEnabled:Z

.field private _landscapeScreenEnabled:Z

.field private _masterBlink:Z

.field private _masterChronometer:Landroid/widget/Chronometer;

.field private _onCreateFlag:Z

.field private _preferences:Landroid/content/SharedPreferences;

.field private _secondsEnabled:Z

.field private _seekBar:Landroid/widget/SeekBar;

.field private _sleepAlarmActive:Z

.field private _sleepAlarmRecurring:Z

.field private _sleepAlarmSnooze:Z

.field private _sleepAlarmTextView:Landroid/widget/TextView;

.field private _sleepAlarmTime:J

.field private _sleepBaseTime:J

.field private _sleepCount:I

.field private _sleepImageButton:Landroid/widget/ImageButton;

.field private _sleepImageView:Landroid/widget/ImageView;

.field private _sleepLinearLayout:Landroid/widget/LinearLayout;

.field private _sleepTextView:Landroid/widget/TextView;

.field private _sleepTimerActive:Z

.field private _sleepTimerOffset:J

.field private _sleepTimerStartTime:J

.field private _sleepTotalTextView:Landroid/widget/TextView;

.field private _totalSleepTime:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 87
    iput-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    .line 88
    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    .line 89
    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_preferences:Landroid/content/SharedPreferences;

    .line 91
    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_diaperImageButton:Landroid/widget/ImageButton;

    .line 92
    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_bottleImageButton:Landroid/widget/ImageButton;

    .line 93
    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_sleepImageButton:Landroid/widget/ImageButton;

    .line 94
    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_customImageButton:Landroid/widget/ImageButton;

    .line 96
    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_diaperTextView:Landroid/widget/TextView;

    .line 97
    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_bottleTextView:Landroid/widget/TextView;

    .line 98
    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_sleepTextView:Landroid/widget/TextView;

    .line 99
    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_customTextView:Landroid/widget/TextView;

    .line 101
    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_diaperAlarmTextView:Landroid/widget/TextView;

    .line 102
    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_bottleAlarmTextView:Landroid/widget/TextView;

    .line 103
    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_sleepAlarmTextView:Landroid/widget/TextView;

    .line 104
    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_customAlarmTextView:Landroid/widget/TextView;

    .line 106
    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_LTextView:Landroid/widget/TextView;

    .line 107
    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_RTextView:Landroid/widget/TextView;

    .line 109
    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_diaperTotalTextView:Landroid/widget/TextView;

    .line 110
    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_bottleTotalTextView:Landroid/widget/TextView;

    .line 111
    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_sleepTotalTextView:Landroid/widget/TextView;

    .line 112
    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_customTotalTextView:Landroid/widget/TextView;

    .line 114
    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_diaperLinearLayout:Landroid/widget/LinearLayout;

    .line 115
    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_bottleLinearLayout:Landroid/widget/LinearLayout;

    .line 116
    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_sleepLinearLayout:Landroid/widget/LinearLayout;

    .line 117
    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_customLinearLayout:Landroid/widget/LinearLayout;

    .line 119
    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_diaperImageView:Landroid/widget/ImageView;

    .line 120
    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_bottleImageView:Landroid/widget/ImageView;

    .line 121
    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_sleepImageView:Landroid/widget/ImageView;

    .line 122
    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_customImageView:Landroid/widget/ImageView;

    .line 124
    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_seekBar:Landroid/widget/SeekBar;

    .line 126
    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_masterChronometer:Landroid/widget/Chronometer;

    .line 128
    iput-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_masterBlink:Z

    .line 130
    iput-boolean v4, p0, Lapps/babycaretimer/TimerActivity;->_onCreateFlag:Z

    .line 133
    iput-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_landscapeScreenEnabled:Z

    .line 134
    iput-boolean v4, p0, Lapps/babycaretimer/TimerActivity;->_hapticFeedbackEnabled:Z

    .line 135
    iput-boolean v4, p0, Lapps/babycaretimer/TimerActivity;->_confirmResetCounters:Z

    .line 136
    const-string v0, "0"

    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_appTheme:Ljava/lang/String;

    .line 137
    iput-boolean v4, p0, Lapps/babycaretimer/TimerActivity;->_secondsEnabled:Z

    .line 138
    iput-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_blinkEnabled:Z

    .line 140
    iput v1, p0, Lapps/babycaretimer/TimerActivity;->_breastFeedingSide:I

    .line 142
    iput-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_diaperAlarmActive:Z

    .line 143
    iput-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_bottleAlarmActive:Z

    .line 144
    iput-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_sleepAlarmActive:Z

    .line 145
    iput-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_customAlarmActive:Z

    .line 147
    iput-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_diaperAlarmSnooze:Z

    .line 148
    iput-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_bottleAlarmSnooze:Z

    .line 149
    iput-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_sleepAlarmSnooze:Z

    .line 150
    iput-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_customAlarmSnooze:Z

    .line 152
    iput-wide v2, p0, Lapps/babycaretimer/TimerActivity;->_diaperAlarmTime:J

    .line 153
    iput-wide v2, p0, Lapps/babycaretimer/TimerActivity;->_bottleAlarmTime:J

    .line 154
    iput-wide v2, p0, Lapps/babycaretimer/TimerActivity;->_sleepAlarmTime:J

    .line 155
    iput-wide v2, p0, Lapps/babycaretimer/TimerActivity;->_customAlarmTime:J

    .line 157
    iput-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_diaperAlarmRecurring:Z

    .line 158
    iput-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_bottleAlarmRecurring:Z

    .line 159
    iput-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_sleepAlarmRecurring:Z

    .line 160
    iput-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_customAlarmRecurring:Z

    .line 162
    iput-wide v2, p0, Lapps/babycaretimer/TimerActivity;->_diaperBaseTime:J

    .line 163
    iput-wide v2, p0, Lapps/babycaretimer/TimerActivity;->_bottleBaseTime:J

    .line 164
    iput-wide v2, p0, Lapps/babycaretimer/TimerActivity;->_sleepBaseTime:J

    .line 165
    iput-wide v2, p0, Lapps/babycaretimer/TimerActivity;->_customBaseTime:J

    .line 167
    iput v1, p0, Lapps/babycaretimer/TimerActivity;->_diaperCount:I

    .line 168
    iput v1, p0, Lapps/babycaretimer/TimerActivity;->_bottleCount:I

    .line 169
    iput v1, p0, Lapps/babycaretimer/TimerActivity;->_sleepCount:I

    .line 170
    iput v1, p0, Lapps/babycaretimer/TimerActivity;->_customCount:I

    .line 172
    iput-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_diaperTimerActive:Z

    .line 173
    iput-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_bottleTimerActive:Z

    .line 174
    iput-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_sleepTimerActive:Z

    .line 175
    iput-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_customTimerActive:Z

    .line 177
    iput-wide v2, p0, Lapps/babycaretimer/TimerActivity;->_diaperTimerOffset:J

    .line 178
    iput-wide v2, p0, Lapps/babycaretimer/TimerActivity;->_bottleTimerOffset:J

    .line 179
    iput-wide v2, p0, Lapps/babycaretimer/TimerActivity;->_sleepTimerOffset:J

    .line 180
    iput-wide v2, p0, Lapps/babycaretimer/TimerActivity;->_customTimerOffset:J

    .line 182
    iput-wide v2, p0, Lapps/babycaretimer/TimerActivity;->_diaperTimerStartTime:J

    .line 183
    iput-wide v2, p0, Lapps/babycaretimer/TimerActivity;->_bottleTimerStartTime:J

    .line 184
    iput-wide v2, p0, Lapps/babycaretimer/TimerActivity;->_sleepTimerStartTime:J

    .line 185
    iput-wide v2, p0, Lapps/babycaretimer/TimerActivity;->_customTimerStartTime:J

    .line 187
    iput-wide v2, p0, Lapps/babycaretimer/TimerActivity;->_totalSleepTime:J

    return-void
.end method

.method static synthetic access$000(Lapps/babycaretimer/TimerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->resetDiaperCounter()V

    return-void
.end method

.method static synthetic access$100(Lapps/babycaretimer/TimerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->resetBottleCounter()V

    return-void
.end method

.method static synthetic access$1000(Lapps/babycaretimer/TimerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->startSleepChronometer()V

    return-void
.end method

.method static synthetic access$1100(Lapps/babycaretimer/TimerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->updateSleepTotalSummary()V

    return-void
.end method

.method static synthetic access$1200(Lapps/babycaretimer/TimerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->startCustomChronometer()V

    return-void
.end method

.method static synthetic access$1300(Lapps/babycaretimer/TimerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->updateCustomTotalSummary()V

    return-void
.end method

.method static synthetic access$1400(Lapps/babycaretimer/TimerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_confirmResetCounters:Z

    return v0
.end method

.method static synthetic access$1500(Lapps/babycaretimer/TimerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lapps/babycaretimer/TimerActivity;->setSeekBar(I)V

    return-void
.end method

.method static synthetic access$1600(Lapps/babycaretimer/TimerActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_appTheme:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lapps/babycaretimer/TimerActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lapps/babycaretimer/TimerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->updateTimerTextViews()V

    return-void
.end method

.method static synthetic access$1900(Lapps/babycaretimer/TimerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_diaperAlarmActive:Z

    return v0
.end method

.method static synthetic access$200(Lapps/babycaretimer/TimerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->resetSleepCounter()V

    return-void
.end method

.method static synthetic access$2000(Lapps/babycaretimer/TimerActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 53
    iget-wide v0, p0, Lapps/babycaretimer/TimerActivity;->_diaperAlarmTime:J

    return-wide v0
.end method

.method static synthetic access$2100(Lapps/babycaretimer/TimerActivity;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lapps/babycaretimer/TimerActivity;->startSetAlarmActivity(IJ)V

    return-void
.end method

.method static synthetic access$2200(Lapps/babycaretimer/TimerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_bottleAlarmActive:Z

    return v0
.end method

.method static synthetic access$2300(Lapps/babycaretimer/TimerActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 53
    iget-wide v0, p0, Lapps/babycaretimer/TimerActivity;->_bottleAlarmTime:J

    return-wide v0
.end method

.method static synthetic access$2400(Lapps/babycaretimer/TimerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_sleepAlarmActive:Z

    return v0
.end method

.method static synthetic access$2500(Lapps/babycaretimer/TimerActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 53
    iget-wide v0, p0, Lapps/babycaretimer/TimerActivity;->_sleepAlarmTime:J

    return-wide v0
.end method

.method static synthetic access$2600(Lapps/babycaretimer/TimerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_customAlarmActive:Z

    return v0
.end method

.method static synthetic access$2700(Lapps/babycaretimer/TimerActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 53
    iget-wide v0, p0, Lapps/babycaretimer/TimerActivity;->_customAlarmTime:J

    return-wide v0
.end method

.method static synthetic access$2800(Lapps/babycaretimer/TimerActivity;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_seekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$300(Lapps/babycaretimer/TimerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->resetCustomCounter()V

    return-void
.end method

.method static synthetic access$400(Lapps/babycaretimer/TimerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    return v0
.end method

.method static synthetic access$500(Lapps/babycaretimer/TimerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lapps/babycaretimer/TimerActivity;->customPerformHapticFeedback(I)V

    return-void
.end method

.method static synthetic access$600(Lapps/babycaretimer/TimerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->startDiaperChronometer()V

    return-void
.end method

.method static synthetic access$700(Lapps/babycaretimer/TimerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->updateDiaperTotalSummary()V

    return-void
.end method

.method static synthetic access$800(Lapps/babycaretimer/TimerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->startBottleChronometer()V

    return-void
.end method

.method static synthetic access$900(Lapps/babycaretimer/TimerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->updateBottleTotalSummary()V

    return-void
.end method

.method private cancelAlarm(I)V
    .locals 5
    .parameter "alarmType"

    .prologue
    .line 1459
    iget-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v2, :cond_0

    const-string v2, "TimerActivity.cancelAlarm()"

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 1461
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1522
    :cond_1
    :goto_0
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->setupAlarmTextViews()V

    .line 1523
    iget-object v2, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    iget-object v3, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const v4, 0x7f080026

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1524
    return-void

    .line 1463
    :pswitch_0
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_diaperAlarmActive:Z

    .line 1464
    const/4 v2, 0x0

    iput-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_diaperAlarmSnooze:Z

    .line 1465
    const/4 v2, 0x0

    iput-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_diaperAlarmRecurring:Z

    .line 1466
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lapps/babycaretimer/TimerActivity;->_diaperAlarmTime:J

    .line 1468
    iget-object v2, p0, Lapps/babycaretimer/TimerActivity;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1469
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "diaper_alarm_active"

    iget-boolean v3, p0, Lapps/babycaretimer/TimerActivity;->_diaperAlarmActive:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1470
    const-string v2, "diaper_alarm_snooze"

    iget-boolean v3, p0, Lapps/babycaretimer/TimerActivity;->_diaperAlarmSnooze:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1471
    const-string v2, "diaper_alarm_recurring"

    iget-boolean v3, p0, Lapps/babycaretimer/TimerActivity;->_diaperAlarmRecurring:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1472
    const-string v2, "diaper_alarm_time"

    iget-wide v3, p0, Lapps/babycaretimer/TimerActivity;->_diaperAlarmTime:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1473
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1519
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v1

    .line 1520
    .local v1, ex:Ljava/lang/Exception;
    iget-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimerActivity.cancelAlarm() ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1477
    .end local v1           #ex:Ljava/lang/Exception;
    :pswitch_1
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_bottleAlarmActive:Z

    .line 1478
    const/4 v2, 0x0

    iput-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_bottleAlarmSnooze:Z

    .line 1479
    const/4 v2, 0x0

    iput-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_bottleAlarmRecurring:Z

    .line 1480
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lapps/babycaretimer/TimerActivity;->_bottleAlarmTime:J

    .line 1482
    iget-object v2, p0, Lapps/babycaretimer/TimerActivity;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1483
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "bottle_alarm_active"

    iget-boolean v3, p0, Lapps/babycaretimer/TimerActivity;->_bottleAlarmActive:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1484
    const-string v2, "bottle_alarm_snooze"

    iget-boolean v3, p0, Lapps/babycaretimer/TimerActivity;->_bottleAlarmSnooze:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1485
    const-string v2, "bottle_alarm_recurring"

    iget-boolean v3, p0, Lapps/babycaretimer/TimerActivity;->_bottleAlarmRecurring:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1486
    const-string v2, "bottle_alarm_time"

    iget-wide v3, p0, Lapps/babycaretimer/TimerActivity;->_bottleAlarmTime:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1487
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 1491
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :pswitch_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_sleepAlarmActive:Z

    .line 1492
    const/4 v2, 0x0

    iput-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_sleepAlarmSnooze:Z

    .line 1493
    const/4 v2, 0x0

    iput-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_sleepAlarmRecurring:Z

    .line 1494
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lapps/babycaretimer/TimerActivity;->_sleepAlarmTime:J

    .line 1496
    iget-object v2, p0, Lapps/babycaretimer/TimerActivity;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1497
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "sleep_alarm_active"

    iget-boolean v3, p0, Lapps/babycaretimer/TimerActivity;->_sleepAlarmActive:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1498
    const-string v2, "sleep_alarm_snooze"

    iget-boolean v3, p0, Lapps/babycaretimer/TimerActivity;->_sleepAlarmSnooze:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1499
    const-string v2, "sleep_alarm_recurring"

    iget-boolean v3, p0, Lapps/babycaretimer/TimerActivity;->_sleepAlarmRecurring:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1500
    const-string v2, "sleep_alarm_time"

    iget-wide v3, p0, Lapps/babycaretimer/TimerActivity;->_sleepAlarmTime:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1501
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 1505
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :pswitch_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_customAlarmActive:Z

    .line 1506
    const/4 v2, 0x0

    iput-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_customAlarmSnooze:Z

    .line 1507
    const/4 v2, 0x0

    iput-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_customAlarmRecurring:Z

    .line 1508
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lapps/babycaretimer/TimerActivity;->_customAlarmTime:J

    .line 1510
    iget-object v2, p0, Lapps/babycaretimer/TimerActivity;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1511
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "custom_alarm_active"

    iget-boolean v3, p0, Lapps/babycaretimer/TimerActivity;->_customAlarmActive:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1512
    const-string v2, "custom_alarm_snooze"

    iget-boolean v3, p0, Lapps/babycaretimer/TimerActivity;->_customAlarmSnooze:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1513
    const-string v2, "custom_alarm_recurring"

    iget-boolean v3, p0, Lapps/babycaretimer/TimerActivity;->_customAlarmRecurring:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1514
    const-string v2, "custom_alarm_time"

    iget-wide v3, p0, Lapps/babycaretimer/TimerActivity;->_customAlarmTime:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1515
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1461
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private customPerformHapticFeedback(I)V
    .locals 3
    .parameter "hapticFeedbackConstant"

    .prologue
    .line 592
    iget-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v1, :cond_0

    const-string v1, "TimerActivity.customPerformHapticFeedback()"

    invoke-static {v1}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 593
    :cond_0
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lapps/babycaretimer/TimerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 595
    .local v0, vibrator:Landroid/os/Vibrator;
    iget-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_hapticFeedbackEnabled:Z

    if-eqz v1, :cond_2

    .line 596
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 598
    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 600
    :cond_1
    if-nez p1, :cond_2

    .line 602
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 605
    :cond_2
    return-void
.end method

.method private displayHTMLAlertDialog(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 8
    .parameter "title"
    .parameter "iconResource"
    .parameter "content"

    .prologue
    .line 1738
    iget-boolean v6, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v6, :cond_0

    const-string v6, "TimerActivity.displayHTMLAlertDialog()"

    invoke-static {v6}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 1740
    :cond_0
    :try_start_0
    iget-object v6, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 1741
    .local v4, layoutInflater:Landroid/view/LayoutInflater;
    const v7, 0x7f030004

    const v6, 0x7f0b0008

    invoke-virtual {p0, v6}, Lapps/babycaretimer/TimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v4, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1742
    .local v5, view:Landroid/view/View;
    const v6, 0x7f0b0009

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1743
    .local v2, contentTextView:Landroid/widget/TextView;
    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1744
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1745
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1746
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1747
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1748
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1749
    const v6, 0x7f080009

    new-instance v7, Lapps/babycaretimer/TimerActivity$26;

    invoke-direct {v7, p0}, Lapps/babycaretimer/TimerActivity$26;-><init>(Lapps/babycaretimer/TimerActivity;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1754
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1755
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1760
    const/4 v6, 0x1

    .end local v0           #alertDialog:Landroid/app/AlertDialog;
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #contentTextView:Landroid/widget/TextView;
    .end local v4           #layoutInflater:Landroid/view/LayoutInflater;
    .end local v5           #view:Landroid/view/View;
    :goto_0
    return v6

    .line 1756
    :catch_0
    move-exception v3

    .line 1757
    .local v3, ex:Ljava/lang/Exception;
    iget-boolean v6, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TimerActivity.displayHTMLAlertDialog() ERROR: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    .line 1758
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private formatAlarmTime(J)Ljava/lang/String;
    .locals 10
    .parameter "alarmTime"

    .prologue
    const-wide/16 v8, 0xe10

    .line 1569
    iget-boolean v6, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v6, :cond_0

    const-string v6, "TimerActivity.formatAlarmTime()"

    invoke-static {v6}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 1570
    :cond_0
    const-wide/16 v6, 0x3e8

    div-long v4, p1, v6

    .line 1571
    .local v4, timeValue:J
    div-long v0, v4, v8

    .line 1572
    .local v0, hours:J
    mul-long v6, v0, v8

    sub-long/2addr v4, v6

    .line 1573
    const-wide/16 v6, 0x3c

    div-long v2, v4, v6

    .line 1574
    .local v2, minutes:J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, v2, v3}, Lapps/babycaretimer/TimerActivity;->formatNumber(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private formatNumber(J)Ljava/lang/String;
    .locals 2
    .parameter "number"

    .prologue
    .line 1585
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "TimerActivity.formatNumber()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 1586
    :cond_0
    const-wide/16 v0, 0xa

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 1587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1589
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initCounters()V
    .locals 1

    .prologue
    .line 1097
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "TimerActivity.initCounters()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 1098
    :cond_0
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->updateTotalSummary()V

    .line 1099
    return-void
.end method

.method private initLongPressView(Landroid/view/View;)V
    .locals 2
    .parameter "timerView"

    .prologue
    .line 801
    iget-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v1, :cond_0

    const-string v1, "TimerActivity.initLongPressView()"

    invoke-static {v1}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 802
    :cond_0
    new-instance v0, Lapps/babycaretimer/TimerActivity$19;

    invoke-direct {v0, p0}, Lapps/babycaretimer/TimerActivity$19;-><init>(Lapps/babycaretimer/TimerActivity;)V

    .line 848
    .local v0, viewOnTouchListener:Landroid/view/View$OnTouchListener;
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 849
    return-void
.end method

.method private launchPreferenceScreen()V
    .locals 3

    .prologue
    .line 1337
    iget-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v1, :cond_0

    const-string v1, "TimerActivity.launchPreferenceScreen()"

    invoke-static {v1}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 1338
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const-class v2, Lapps/babycaretimer/preferences/MainPreferenceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1339
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lapps/babycaretimer/TimerActivity;->startActivity(Landroid/content/Intent;)V

    .line 1340
    return-void
.end method

.method private loadUserPreferences()V
    .locals 5

    .prologue
    .line 1766
    iget-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v1, :cond_0

    const-string v1, "TimerActivity.loadUserPreferences()"

    invoke-static {v1}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 1769
    :cond_0
    :try_start_0
    iget-object v1, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lapps/babycaretimer/TimerActivity;->_preferences:Landroid/content/SharedPreferences;

    .line 1770
    iget-object v1, p0, Lapps/babycaretimer/TimerActivity;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "landscape_screen_enabled"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_landscapeScreenEnabled:Z

    .line 1771
    iget-object v1, p0, Lapps/babycaretimer/TimerActivity;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "haptic_feedback_enabled"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_hapticFeedbackEnabled:Z

    .line 1772
    iget-object v1, p0, Lapps/babycaretimer/TimerActivity;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "confirm_reset_counters_enabled"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_confirmResetCounters:Z

    .line 1773
    iget-object v1, p0, Lapps/babycaretimer/TimerActivity;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "app_theme"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lapps/babycaretimer/TimerActivity;->_appTheme:Ljava/lang/String;

    .line 1774
    iget-object v1, p0, Lapps/babycaretimer/TimerActivity;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "display_seconds_enabled"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_secondsEnabled:Z

    .line 1775
    iget-object v1, p0, Lapps/babycaretimer/TimerActivity;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "blink_colon_enabled"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_blinkEnabled:Z

    .line 1776
    iget-object v1, p0, Lapps/babycaretimer/TimerActivity;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "breast_feeding_side"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lapps/babycaretimer/TimerActivity;->_breastFeedingSide:I

    .line 1778
    iget-object v1, p0, Lapps/babycaretimer/TimerActivity;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "diaper_count"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lapps/babycaretimer/TimerActivity;->_diaperCount:I

    .line 1779
    iget-object v1, p0, Lapps/babycaretimer/TimerActivity;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "bottle_count"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lapps/babycaretimer/TimerActivity;->_bottleCount:I

    .line 1780
    iget-object v1, p0, Lapps/babycaretimer/TimerActivity;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "sleep_count"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lapps/babycaretimer/TimerActivity;->_sleepCount:I

    .line 1781
    iget-object v1, p0, Lapps/babycaretimer/TimerActivity;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "custom_count"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lapps/babycaretimer/TimerActivity;->_customCount:I

    .line 1783
    iget-object v1, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lapps/babycaretimer/common/Common;->getBaseTime(Landroid/content/Context;I)J

    move-result-wide v1

    iput-wide v1, p0, Lapps/babycaretimer/TimerActivity;->_diaperBaseTime:J

    .line 1784
    iget-object v1, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lapps/babycaretimer/common/Common;->getBaseTime(Landroid/content/Context;I)J

    move-result-wide v1

    iput-wide v1, p0, Lapps/babycaretimer/TimerActivity;->_bottleBaseTime:J

    .line 1785
    iget-object v1, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lapps/babycaretimer/common/Common;->getBaseTime(Landroid/content/Context;I)J

    move-result-wide v1

    iput-wide v1, p0, Lapps/babycaretimer/TimerActivity;->_sleepBaseTime:J

    .line 1786
    iget-object v1, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lapps/babycaretimer/common/Common;->getBaseTime(Landroid/content/Context;I)J

    move-result-wide v1

    iput-wide v1, p0, Lapps/babycaretimer/TimerActivity;->_customBaseTime:J

    .line 1788
    iget-object v1, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lapps/babycaretimer/common/Common;->isAlarmActive(Landroid/content/Context;I)Z

    move-result v1

    iput-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_diaperAlarmActive:Z

    .line 1789
    iget-object v1, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lapps/babycaretimer/common/Common;->isAlarmActive(Landroid/content/Context;I)Z

    move-result v1

    iput-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_bottleAlarmActive:Z

    .line 1790
    iget-object v1, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lapps/babycaretimer/common/Common;->isAlarmActive(Landroid/content/Context;I)Z

    move-result v1

    iput-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_sleepAlarmActive:Z

    .line 1791
    iget-object v1, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lapps/babycaretimer/common/Common;->isAlarmActive(Landroid/content/Context;I)Z

    move-result v1

    iput-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_customAlarmActive:Z

    .line 1793
    iget-object v1, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lapps/babycaretimer/common/Common;->getAlarmTime(Landroid/content/Context;I)J

    move-result-wide v1

    iput-wide v1, p0, Lapps/babycaretimer/TimerActivity;->_diaperAlarmTime:J

    .line 1794
    iget-object v1, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lapps/babycaretimer/common/Common;->getAlarmTime(Landroid/content/Context;I)J

    move-result-wide v1

    iput-wide v1, p0, Lapps/babycaretimer/TimerActivity;->_bottleAlarmTime:J

    .line 1795
    iget-object v1, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lapps/babycaretimer/common/Common;->getAlarmTime(Landroid/content/Context;I)J

    move-result-wide v1

    iput-wide v1, p0, Lapps/babycaretimer/TimerActivity;->_sleepAlarmTime:J

    .line 1796
    iget-object v1, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lapps/babycaretimer/common/Common;->getAlarmTime(Landroid/content/Context;I)J

    move-result-wide v1

    iput-wide v1, p0, Lapps/babycaretimer/TimerActivity;->_customAlarmTime:J

    .line 1798
    iget-object v1, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lapps/babycaretimer/common/Common;->isAlarmSnoozed(Landroid/content/Context;I)Z

    move-result v1

    iput-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_diaperAlarmSnooze:Z

    .line 1799
    iget-object v1, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lapps/babycaretimer/common/Common;->isAlarmSnoozed(Landroid/content/Context;I)Z

    move-result v1

    iput-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_bottleAlarmSnooze:Z

    .line 1800
    iget-object v1, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lapps/babycaretimer/common/Common;->isAlarmSnoozed(Landroid/content/Context;I)Z

    move-result v1

    iput-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_sleepAlarmSnooze:Z

    .line 1801
    iget-object v1, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lapps/babycaretimer/common/Common;->isAlarmSnoozed(Landroid/content/Context;I)Z

    move-result v1

    iput-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_customAlarmSnooze:Z

    .line 1803
    iget-object v1, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lapps/babycaretimer/common/Common;->isAlarmRecurring(Landroid/content/Context;I)Z

    move-result v1

    iput-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_diaperAlarmRecurring:Z

    .line 1804
    iget-object v1, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lapps/babycaretimer/common/Common;->isAlarmRecurring(Landroid/content/Context;I)Z

    move-result v1

    iput-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_bottleAlarmRecurring:Z

    .line 1805
    iget-object v1, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lapps/babycaretimer/common/Common;->isAlarmRecurring(Landroid/content/Context;I)Z

    move-result v1

    iput-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_sleepAlarmRecurring:Z

    .line 1806
    iget-object v1, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lapps/babycaretimer/common/Common;->isAlarmRecurring(Landroid/content/Context;I)Z

    move-result v1

    iput-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_customAlarmRecurring:Z

    .line 1808
    iget-object v1, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lapps/babycaretimer/common/Common;->isTimerActive(Landroid/content/Context;I)Z

    move-result v1

    iput-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_diaperTimerActive:Z

    .line 1809
    iget-object v1, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lapps/babycaretimer/common/Common;->isTimerActive(Landroid/content/Context;I)Z

    move-result v1

    iput-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_bottleTimerActive:Z

    .line 1810
    iget-object v1, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lapps/babycaretimer/common/Common;->isTimerActive(Landroid/content/Context;I)Z

    move-result v1

    iput-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_sleepTimerActive:Z

    .line 1811
    iget-object v1, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lapps/babycaretimer/common/Common;->isTimerActive(Landroid/content/Context;I)Z

    move-result v1

    iput-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_customTimerActive:Z

    .line 1813
    iget-object v1, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lapps/babycaretimer/common/Common;->getTimerStartTime(Landroid/content/Context;I)J

    move-result-wide v1

    iput-wide v1, p0, Lapps/babycaretimer/TimerActivity;->_diaperTimerStartTime:J

    .line 1814
    iget-object v1, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lapps/babycaretimer/common/Common;->getTimerStartTime(Landroid/content/Context;I)J

    move-result-wide v1

    iput-wide v1, p0, Lapps/babycaretimer/TimerActivity;->_bottleTimerStartTime:J

    .line 1815
    iget-object v1, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lapps/babycaretimer/common/Common;->getTimerStartTime(Landroid/content/Context;I)J

    move-result-wide v1

    iput-wide v1, p0, Lapps/babycaretimer/TimerActivity;->_sleepTimerStartTime:J

    .line 1816
    iget-object v1, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lapps/babycaretimer/common/Common;->getTimerStartTime(Landroid/content/Context;I)J

    move-result-wide v1

    iput-wide v1, p0, Lapps/babycaretimer/TimerActivity;->_customTimerStartTime:J

    .line 1818
    iget-object v1, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lapps/babycaretimer/common/Common;->getTimerOffset(Landroid/content/Context;I)J

    move-result-wide v1

    iput-wide v1, p0, Lapps/babycaretimer/TimerActivity;->_diaperTimerOffset:J

    .line 1819
    iget-object v1, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lapps/babycaretimer/common/Common;->getTimerOffset(Landroid/content/Context;I)J

    move-result-wide v1

    iput-wide v1, p0, Lapps/babycaretimer/TimerActivity;->_bottleTimerOffset:J

    .line 1820
    iget-object v1, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lapps/babycaretimer/common/Common;->getTimerOffset(Landroid/content/Context;I)J

    move-result-wide v1

    iput-wide v1, p0, Lapps/babycaretimer/TimerActivity;->_sleepTimerOffset:J

    .line 1821
    iget-object v1, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lapps/babycaretimer/common/Common;->getTimerOffset(Landroid/content/Context;I)J

    move-result-wide v1

    iput-wide v1, p0, Lapps/babycaretimer/TimerActivity;->_customTimerOffset:J

    .line 1823
    iget-object v1, p0, Lapps/babycaretimer/TimerActivity;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "total_elapsed_time_sleep"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lapps/babycaretimer/TimerActivity;->_totalSleepTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1828
    :cond_1
    :goto_0
    return-void

    .line 1825
    :catch_0
    move-exception v0

    .line 1826
    .local v0, ex:Ljava/lang/Exception;
    iget-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TimerActivity.loadUserPreferences() ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resetBottleCounter()V
    .locals 5

    .prologue
    .line 1363
    iget-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v2, :cond_0

    const-string v2, "TimerActivity.resetBottleCounter()"

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 1365
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    iput v2, p0, Lapps/babycaretimer/TimerActivity;->_bottleCount:I

    .line 1366
    iget-object v2, p0, Lapps/babycaretimer/TimerActivity;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1367
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "bottle_count"

    iget v3, p0, Lapps/babycaretimer/TimerActivity;->_bottleCount:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1368
    const-string v2, "bottle_count_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1369
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1370
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->updateBottleTotalSummary()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1374
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    :goto_0
    return-void

    .line 1371
    :catch_0
    move-exception v1

    .line 1372
    .local v1, ex:Ljava/lang/Exception;
    iget-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimerActivity.resetBottleCounter() ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resetCustomCounter()V
    .locals 5

    .prologue
    .line 1397
    iget-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v2, :cond_0

    const-string v2, "TimerActivity.resetCustomCounter()"

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 1399
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    iput v2, p0, Lapps/babycaretimer/TimerActivity;->_customCount:I

    .line 1400
    iget-object v2, p0, Lapps/babycaretimer/TimerActivity;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1401
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "custom_count"

    iget v3, p0, Lapps/babycaretimer/TimerActivity;->_customCount:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1402
    const-string v2, "custom_count_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1403
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1404
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->updateCustomTotalSummary()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1408
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    :goto_0
    return-void

    .line 1405
    :catch_0
    move-exception v1

    .line 1406
    .local v1, ex:Ljava/lang/Exception;
    iget-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimerActivity.resetCustomCounter() ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resetDiaperCounter()V
    .locals 5

    .prologue
    .line 1346
    iget-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v2, :cond_0

    const-string v2, "TimerActivity.resetDiaperCounter()"

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 1348
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    iput v2, p0, Lapps/babycaretimer/TimerActivity;->_diaperCount:I

    .line 1349
    iget-object v2, p0, Lapps/babycaretimer/TimerActivity;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1350
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "diaper_count"

    iget v3, p0, Lapps/babycaretimer/TimerActivity;->_diaperCount:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1351
    const-string v2, "diaper_count_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1352
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1353
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->updateDiaperTotalSummary()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1357
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    :goto_0
    return-void

    .line 1354
    :catch_0
    move-exception v1

    .line 1355
    .local v1, ex:Ljava/lang/Exception;
    iget-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimerActivity.resetDiaperCounter() ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resetSleepCounter()V
    .locals 5

    .prologue
    .line 1380
    iget-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v2, :cond_0

    const-string v2, "TimerActivity.resetSleepCounter()"

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 1382
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    iput v2, p0, Lapps/babycaretimer/TimerActivity;->_sleepCount:I

    .line 1383
    iget-object v2, p0, Lapps/babycaretimer/TimerActivity;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1384
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "sleep_count"

    iget v3, p0, Lapps/babycaretimer/TimerActivity;->_sleepCount:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1385
    const-string v2, "sleep_count_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1386
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1387
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->updateSleepTotalSummary()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1391
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    :goto_0
    return-void

    .line 1388
    :catch_0
    move-exception v1

    .line 1389
    .local v1, ex:Ljava/lang/Exception;
    iget-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimerActivity.resetSleepCounter() ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private runOnceEula()V
    .locals 7

    .prologue
    .line 1530
    iget-boolean v3, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v3, :cond_0

    const-string v3, "TimerActivity.runOnceEula()"

    invoke-static {v3}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 1531
    :cond_0
    iget-object v3, p0, Lapps/babycaretimer/TimerActivity;->_preferences:Landroid/content/SharedPreferences;

    const-string v4, "runOnceEula"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1532
    .local v2, runOnceEula:Z
    if-eqz v2, :cond_1

    .line 1534
    :try_start_0
    iget-object v3, p0, Lapps/babycaretimer/TimerActivity;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1535
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "runOnceEula"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1536
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1537
    iget-object v3, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const v4, 0x7f080002

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f020015

    iget-object v5, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const v6, 0x7f080003

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lapps/babycaretimer/TimerActivity;->displayHTMLAlertDialog(Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1542
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    :goto_0
    return-void

    .line 1538
    :catch_0
    move-exception v1

    .line 1539
    .local v1, ex:Ljava/lang/Exception;
    iget-boolean v3, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TimerActivity.runOnceEula() ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setAlarm(I)V
    .locals 2
    .parameter "alarmType"

    .prologue
    .line 1599
    iget-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v1, :cond_0

    const-string v1, "TimerActivity.setAlarm()"

    invoke-static {v1}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 1600
    :cond_0
    const/4 v0, 0x0

    .line 1601
    .local v0, isRecurring:Z
    packed-switch p1, :pswitch_data_0

    .line 1619
    :goto_0
    if-eqz v0, :cond_1

    .line 1620
    invoke-direct {p0, p1}, Lapps/babycaretimer/TimerActivity;->setRecurringAlarm(I)V

    .line 1622
    :cond_1
    return-void

    .line 1603
    :pswitch_0
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_diaperAlarmRecurring:Z

    .line 1604
    goto :goto_0

    .line 1607
    :pswitch_1
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_bottleAlarmRecurring:Z

    .line 1608
    goto :goto_0

    .line 1611
    :pswitch_2
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_sleepAlarmRecurring:Z

    .line 1612
    goto :goto_0

    .line 1615
    :pswitch_3
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_customAlarmRecurring:Z

    goto :goto_0

    .line 1601
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setRecurringAlarm(I)V
    .locals 23
    .parameter "alarmType"

    .prologue
    .line 1630
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    const-string v20, "TimerActivity.setRecurringAlarm()"

    invoke-static/range {v20 .. v20}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 1631
    :cond_0
    const-wide/16 v9, 0x0

    .line 1632
    .local v9, baseTime:J
    const-wide/16 v7, 0x0

    .line 1633
    .local v7, alarmTime:J
    const-wide/16 v16, 0x0

    .line 1634
    .local v16, timerOffset:J
    const-wide/16 v18, 0x0

    .line 1635
    .local v18, timerStartTime:J
    packed-switch p1, :pswitch_data_0

    .line 1665
    :goto_0
    const-wide/16 v20, 0x0

    cmp-long v20, v7, v20

    if-nez v20, :cond_2

    .line 1666
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    const-string v20, "TimerActivity.setRecurringAlarm() Alarm time is null. Exiting..."

    invoke-static/range {v20 .. v20}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 1732
    :cond_1
    :goto_1
    return-void

    .line 1637
    :pswitch_0
    move-object/from16 v0, p0

    iget-wide v9, v0, Lapps/babycaretimer/TimerActivity;->_diaperBaseTime:J

    .line 1638
    move-object/from16 v0, p0

    iget-wide v7, v0, Lapps/babycaretimer/TimerActivity;->_diaperAlarmTime:J

    .line 1639
    move-object/from16 v0, p0

    iget-wide v0, v0, Lapps/babycaretimer/TimerActivity;->_diaperTimerOffset:J

    move-wide/from16 v16, v0

    .line 1640
    move-object/from16 v0, p0

    iget-wide v0, v0, Lapps/babycaretimer/TimerActivity;->_diaperTimerStartTime:J

    move-wide/from16 v18, v0

    .line 1641
    goto :goto_0

    .line 1644
    :pswitch_1
    move-object/from16 v0, p0

    iget-wide v9, v0, Lapps/babycaretimer/TimerActivity;->_bottleBaseTime:J

    .line 1645
    move-object/from16 v0, p0

    iget-wide v7, v0, Lapps/babycaretimer/TimerActivity;->_bottleAlarmTime:J

    .line 1646
    move-object/from16 v0, p0

    iget-wide v0, v0, Lapps/babycaretimer/TimerActivity;->_bottleTimerOffset:J

    move-wide/from16 v16, v0

    .line 1647
    move-object/from16 v0, p0

    iget-wide v0, v0, Lapps/babycaretimer/TimerActivity;->_bottleTimerStartTime:J

    move-wide/from16 v18, v0

    .line 1648
    goto :goto_0

    .line 1651
    :pswitch_2
    move-object/from16 v0, p0

    iget-wide v9, v0, Lapps/babycaretimer/TimerActivity;->_sleepBaseTime:J

    .line 1652
    move-object/from16 v0, p0

    iget-wide v7, v0, Lapps/babycaretimer/TimerActivity;->_sleepAlarmTime:J

    .line 1653
    move-object/from16 v0, p0

    iget-wide v0, v0, Lapps/babycaretimer/TimerActivity;->_sleepTimerOffset:J

    move-wide/from16 v16, v0

    .line 1654
    move-object/from16 v0, p0

    iget-wide v0, v0, Lapps/babycaretimer/TimerActivity;->_sleepTimerStartTime:J

    move-wide/from16 v18, v0

    .line 1655
    goto :goto_0

    .line 1658
    :pswitch_3
    move-object/from16 v0, p0

    iget-wide v9, v0, Lapps/babycaretimer/TimerActivity;->_customBaseTime:J

    .line 1659
    move-object/from16 v0, p0

    iget-wide v7, v0, Lapps/babycaretimer/TimerActivity;->_customAlarmTime:J

    .line 1660
    move-object/from16 v0, p0

    iget-wide v0, v0, Lapps/babycaretimer/TimerActivity;->_customTimerOffset:J

    move-wide/from16 v16, v0

    .line 1661
    move-object/from16 v0, p0

    iget-wide v0, v0, Lapps/babycaretimer/TimerActivity;->_customTimerStartTime:J

    move-wide/from16 v18, v0

    goto :goto_0

    .line 1669
    :cond_2
    packed-switch p1, :pswitch_data_1

    .line 1707
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "TimerActivity.setRecurringAlarm() baseTime: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 1708
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "TimerActivity.setRecurringAlarm() timerOffset: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 1709
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "TimerActivity.setRecurringAlarm() timerStartTime: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 1710
    :cond_5
    const-wide/16 v13, 0x0

    .line 1711
    .local v13, elapsedTime:J
    const-wide/16 v20, 0x0

    cmp-long v20, v9, v20

    if-nez v20, :cond_8

    .line 1712
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    add-long v13, v20, v16

    .line 1719
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "TimerActivity.setRecurringAlarm() elapsedTime: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 1720
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    add-long v20, v20, v7

    sub-long v3, v20, v13

    .line 1721
    .local v3, alarmAlertTime:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    move/from16 v20, v0

    if-eqz v20, :cond_7

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "TimerActivity.setRecurringAlarm() AlarmTime: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " ElapsedTime:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " AlarmAlertTime: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 1722
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "alarm"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    .line 1723
    .local v6, alarmManager:Landroid/app/AlarmManager;
    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    move-object/from16 v20, v0

    const-class v21, Lapps/babycaretimer/receivers/AlarmReceiver;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1724
    .local v5, alarmIntent:Landroid/content/Intent;
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 1725
    .local v11, bundle:Landroid/os/Bundle;
    const-string v20, "alarm_type"

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1726
    const-string v20, "alarm_snooze"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1727
    invoke-virtual {v5, v11}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1728
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "apps.babycaretimer.action."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1729
    const/high16 v20, 0x1080

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1730
    move-object/from16 v0, p0

    iget-object v0, v0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 1731
    .local v15, pendingIntent:Landroid/app/PendingIntent;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v6, v0, v3, v4, v15}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 1671
    .end local v3           #alarmAlertTime:J
    .end local v5           #alarmIntent:Landroid/content/Intent;
    .end local v6           #alarmManager:Landroid/app/AlarmManager;
    .end local v11           #bundle:Landroid/os/Bundle;
    .end local v13           #elapsedTime:J
    .end local v15           #pendingIntent:Landroid/app/PendingIntent;
    :pswitch_4
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lapps/babycaretimer/TimerActivity;->_diaperAlarmActive:Z

    .line 1672
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lapps/babycaretimer/TimerActivity;->_diaperAlarmSnooze:Z

    .line 1673
    move-object/from16 v0, p0

    iget-object v0, v0, Lapps/babycaretimer/TimerActivity;->_preferences:Landroid/content/SharedPreferences;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 1674
    .local v12, editor:Landroid/content/SharedPreferences$Editor;
    const-string v20, "diaper_alarm_active"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lapps/babycaretimer/TimerActivity;->_diaperAlarmActive:Z

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1675
    const-string v20, "diaper_alarm_snooze"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lapps/babycaretimer/TimerActivity;->_diaperAlarmSnooze:Z

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1676
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2

    .line 1680
    .end local v12           #editor:Landroid/content/SharedPreferences$Editor;
    :pswitch_5
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lapps/babycaretimer/TimerActivity;->_bottleAlarmActive:Z

    .line 1681
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lapps/babycaretimer/TimerActivity;->_bottleAlarmSnooze:Z

    .line 1682
    move-object/from16 v0, p0

    iget-object v0, v0, Lapps/babycaretimer/TimerActivity;->_preferences:Landroid/content/SharedPreferences;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 1683
    .restart local v12       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v20, "bottle_alarm_active"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lapps/babycaretimer/TimerActivity;->_bottleAlarmActive:Z

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1684
    const-string v20, "bottle_alarm_snooze"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lapps/babycaretimer/TimerActivity;->_bottleAlarmSnooze:Z

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1685
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2

    .line 1689
    .end local v12           #editor:Landroid/content/SharedPreferences$Editor;
    :pswitch_6
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lapps/babycaretimer/TimerActivity;->_sleepAlarmActive:Z

    .line 1690
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lapps/babycaretimer/TimerActivity;->_sleepAlarmSnooze:Z

    .line 1691
    move-object/from16 v0, p0

    iget-object v0, v0, Lapps/babycaretimer/TimerActivity;->_preferences:Landroid/content/SharedPreferences;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 1692
    .restart local v12       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v20, "sleep_alarm_active"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lapps/babycaretimer/TimerActivity;->_sleepAlarmActive:Z

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1693
    const-string v20, "sleep_alarm_snooze"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lapps/babycaretimer/TimerActivity;->_sleepAlarmSnooze:Z

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1694
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2

    .line 1698
    .end local v12           #editor:Landroid/content/SharedPreferences$Editor;
    :pswitch_7
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lapps/babycaretimer/TimerActivity;->_customAlarmActive:Z

    .line 1699
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lapps/babycaretimer/TimerActivity;->_customAlarmSnooze:Z

    .line 1700
    move-object/from16 v0, p0

    iget-object v0, v0, Lapps/babycaretimer/TimerActivity;->_preferences:Landroid/content/SharedPreferences;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 1701
    .restart local v12       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v20, "custom_alarm_active"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lapps/babycaretimer/TimerActivity;->_customAlarmActive:Z

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1702
    const-string v20, "custom_alarm_snooze"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lapps/babycaretimer/TimerActivity;->_customAlarmSnooze:Z

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1703
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2

    .line 1713
    .end local v12           #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v13       #elapsedTime:J
    :cond_8
    const-wide/16 v20, 0x0

    cmp-long v20, v16, v20

    if-nez v20, :cond_9

    .line 1714
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    sub-long v13, v20, v9

    goto/16 :goto_3

    .line 1716
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    const-string v20, "TimerActivity.setRecurringAlarm() BaseTime and TimerOffset are null. Exiting..."

    invoke-static/range {v20 .. v20}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1635
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1669
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private setSeekBar(I)V
    .locals 4
    .parameter "value"

    .prologue
    .line 1126
    iget-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v2, :cond_0

    const-string v2, "TimerActivity.setSeekBar()"

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 1128
    :cond_0
    :try_start_0
    iget-object v2, p0, Lapps/babycaretimer/TimerActivity;->_seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1129
    iput p1, p0, Lapps/babycaretimer/TimerActivity;->_breastFeedingSide:I

    .line 1130
    iget-object v2, p0, Lapps/babycaretimer/TimerActivity;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1131
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "breast_feeding_side"

    iget v3, p0, Lapps/babycaretimer/TimerActivity;->_breastFeedingSide:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1132
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1136
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    :goto_0
    return-void

    .line 1133
    :catch_0
    move-exception v1

    .line 1134
    .local v1, ex:Ljava/lang/Exception;
    iget-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimerActivity.setSeekBar() ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupAlarmTextViews()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f020013

    const v6, 0x7f020011

    const v5, 0x7f02000f

    const/4 v4, 0x0

    .line 869
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "TimerActivity.setupAlarmTextViews()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 870
    :cond_0
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_diaperAlarmActive:Z

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lapps/babycaretimer/TimerActivity;->_diaperAlarmTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 871
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_diaperAlarmTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lapps/babycaretimer/TimerActivity;->_diaperAlarmTime:J

    invoke-direct {p0, v2, v3}, Lapps/babycaretimer/TimerActivity;->formatAlarmTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 872
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_diaperAlarmSnooze:Z

    if-eqz v0, :cond_1

    .line 873
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_diaperAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v7, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 879
    :goto_0
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_diaperAlarmTextView:Landroid/widget/TextView;

    new-instance v1, Lapps/babycaretimer/TimerActivity$21;

    invoke-direct {v1, p0}, Lapps/babycaretimer/TimerActivity$21;-><init>(Lapps/babycaretimer/TimerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 895
    :goto_1
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_bottleAlarmActive:Z

    if-eqz v0, :cond_6

    iget-wide v0, p0, Lapps/babycaretimer/TimerActivity;->_bottleAlarmTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    .line 896
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_bottleAlarmTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lapps/babycaretimer/TimerActivity;->_bottleAlarmTime:J

    invoke-direct {p0, v2, v3}, Lapps/babycaretimer/TimerActivity;->formatAlarmTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 897
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_bottleAlarmSnooze:Z

    if-eqz v0, :cond_4

    .line 898
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_bottleAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v7, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 904
    :goto_2
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_bottleAlarmTextView:Landroid/widget/TextView;

    new-instance v1, Lapps/babycaretimer/TimerActivity$22;

    invoke-direct {v1, p0}, Lapps/babycaretimer/TimerActivity$22;-><init>(Lapps/babycaretimer/TimerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 920
    :goto_3
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_sleepAlarmActive:Z

    if-eqz v0, :cond_9

    iget-wide v0, p0, Lapps/babycaretimer/TimerActivity;->_sleepAlarmTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_9

    .line 921
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_sleepAlarmTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lapps/babycaretimer/TimerActivity;->_sleepAlarmTime:J

    invoke-direct {p0, v2, v3}, Lapps/babycaretimer/TimerActivity;->formatAlarmTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 922
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_sleepAlarmSnooze:Z

    if-eqz v0, :cond_7

    .line 923
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_sleepAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v7, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 929
    :goto_4
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_sleepAlarmTextView:Landroid/widget/TextView;

    new-instance v1, Lapps/babycaretimer/TimerActivity$23;

    invoke-direct {v1, p0}, Lapps/babycaretimer/TimerActivity$23;-><init>(Lapps/babycaretimer/TimerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 945
    :goto_5
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_customAlarmActive:Z

    if-eqz v0, :cond_c

    iget-wide v0, p0, Lapps/babycaretimer/TimerActivity;->_customAlarmTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_c

    .line 946
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_customAlarmTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lapps/babycaretimer/TimerActivity;->_customAlarmTime:J

    invoke-direct {p0, v2, v3}, Lapps/babycaretimer/TimerActivity;->formatAlarmTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 947
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_customAlarmSnooze:Z

    if-eqz v0, :cond_a

    .line 948
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_customAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v7, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 954
    :goto_6
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_customAlarmTextView:Landroid/widget/TextView;

    new-instance v1, Lapps/babycaretimer/TimerActivity$24;

    invoke-direct {v1, p0}, Lapps/babycaretimer/TimerActivity$24;-><init>(Lapps/babycaretimer/TimerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 970
    :goto_7
    return-void

    .line 874
    :cond_1
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_diaperAlarmRecurring:Z

    if-eqz v0, :cond_2

    .line 875
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_diaperAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_0

    .line 877
    :cond_2
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_diaperAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_0

    .line 891
    :cond_3
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_diaperAlarmTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 892
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_diaperAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 893
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_diaperAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 899
    :cond_4
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_bottleAlarmRecurring:Z

    if-eqz v0, :cond_5

    .line 900
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_bottleAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_2

    .line 902
    :cond_5
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_bottleAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_2

    .line 916
    :cond_6
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_bottleAlarmTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 917
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_bottleAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 918
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_bottleAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 924
    :cond_7
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_sleepAlarmRecurring:Z

    if-eqz v0, :cond_8

    .line 925
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_sleepAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_4

    .line 927
    :cond_8
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_sleepAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_4

    .line 941
    :cond_9
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_sleepAlarmTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 942
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_sleepAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 943
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_sleepAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 949
    :cond_a
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_customAlarmRecurring:Z

    if-eqz v0, :cond_b

    .line 950
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_customAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_6

    .line 952
    :cond_b
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_customAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_6

    .line 966
    :cond_c
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_customAlarmTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 967
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_customAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 968
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_customAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7
.end method

.method private setupApp()V
    .locals 2

    .prologue
    .line 611
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "TimerActivity.setupApp()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 612
    :cond_0
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->loadUserPreferences()V

    .line 614
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_landscapeScreenEnabled:Z

    if-nez v0, :cond_1

    .line 615
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lapps/babycaretimer/TimerActivity;->setRequestedOrientation(I)V

    .line 617
    :cond_1
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_appTheme:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 618
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lapps/babycaretimer/TimerActivity;->setContentView(I)V

    .line 622
    :goto_0
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->setupViews()V

    .line 623
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->setupButtons()V

    .line 624
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->setupContextMenus()V

    .line 625
    const v0, 0x7f0b0020

    invoke-virtual {p0, v0}, Lapps/babycaretimer/TimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lapps/babycaretimer/TimerActivity;->initLongPressView(Landroid/view/View;)V

    .line 626
    const v0, 0x7f0b0024

    invoke-virtual {p0, v0}, Lapps/babycaretimer/TimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lapps/babycaretimer/TimerActivity;->initLongPressView(Landroid/view/View;)V

    .line 627
    const v0, 0x7f0b0028

    invoke-virtual {p0, v0}, Lapps/babycaretimer/TimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lapps/babycaretimer/TimerActivity;->initLongPressView(Landroid/view/View;)V

    .line 628
    const v0, 0x7f0b002c

    invoke-virtual {p0, v0}, Lapps/babycaretimer/TimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lapps/babycaretimer/TimerActivity;->initLongPressView(Landroid/view/View;)V

    .line 629
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->initCounters()V

    .line 630
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->setupChronometer()V

    .line 631
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->setupAlarmTextViews()V

    .line 632
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->setupSeekBar()V

    .line 633
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_onCreateFlag:Z

    if-eqz v0, :cond_2

    .line 634
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->runOnceEula()V

    .line 635
    const/4 v0, 0x0

    iput-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_onCreateFlag:Z

    .line 637
    :cond_2
    return-void

    .line 620
    :cond_3
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lapps/babycaretimer/TimerActivity;->setContentView(I)V

    goto :goto_0
.end method

.method private setupButtons()V
    .locals 2

    .prologue
    .line 688
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "TimerActivity.setupButtons()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 689
    :cond_0
    const v0, 0x7f0b0022

    invoke-virtual {p0, v0}, Lapps/babycaretimer/TimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_diaperImageButton:Landroid/widget/ImageButton;

    .line 690
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_diaperImageButton:Landroid/widget/ImageButton;

    new-instance v1, Lapps/babycaretimer/TimerActivity$9;

    invoke-direct {v1, p0}, Lapps/babycaretimer/TimerActivity$9;-><init>(Lapps/babycaretimer/TimerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 698
    const v0, 0x7f0b0026

    invoke-virtual {p0, v0}, Lapps/babycaretimer/TimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_bottleImageButton:Landroid/widget/ImageButton;

    .line 699
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_bottleImageButton:Landroid/widget/ImageButton;

    new-instance v1, Lapps/babycaretimer/TimerActivity$10;

    invoke-direct {v1, p0}, Lapps/babycaretimer/TimerActivity$10;-><init>(Lapps/babycaretimer/TimerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 707
    const v0, 0x7f0b002a

    invoke-virtual {p0, v0}, Lapps/babycaretimer/TimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_sleepImageButton:Landroid/widget/ImageButton;

    .line 708
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_sleepImageButton:Landroid/widget/ImageButton;

    new-instance v1, Lapps/babycaretimer/TimerActivity$11;

    invoke-direct {v1, p0}, Lapps/babycaretimer/TimerActivity$11;-><init>(Lapps/babycaretimer/TimerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 716
    const v0, 0x7f0b002e

    invoke-virtual {p0, v0}, Lapps/babycaretimer/TimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_customImageButton:Landroid/widget/ImageButton;

    .line 717
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_customImageButton:Landroid/widget/ImageButton;

    new-instance v1, Lapps/babycaretimer/TimerActivity$12;

    invoke-direct {v1, p0}, Lapps/babycaretimer/TimerActivity$12;-><init>(Lapps/babycaretimer/TimerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 725
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_diaperImageView:Landroid/widget/ImageView;

    new-instance v1, Lapps/babycaretimer/TimerActivity$13;

    invoke-direct {v1, p0}, Lapps/babycaretimer/TimerActivity$13;-><init>(Lapps/babycaretimer/TimerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 736
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_bottleImageView:Landroid/widget/ImageView;

    new-instance v1, Lapps/babycaretimer/TimerActivity$14;

    invoke-direct {v1, p0}, Lapps/babycaretimer/TimerActivity$14;-><init>(Lapps/babycaretimer/TimerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 747
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_sleepImageView:Landroid/widget/ImageView;

    new-instance v1, Lapps/babycaretimer/TimerActivity$15;

    invoke-direct {v1, p0}, Lapps/babycaretimer/TimerActivity$15;-><init>(Lapps/babycaretimer/TimerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 758
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_customImageView:Landroid/widget/ImageView;

    new-instance v1, Lapps/babycaretimer/TimerActivity$16;

    invoke-direct {v1, p0}, Lapps/babycaretimer/TimerActivity$16;-><init>(Lapps/babycaretimer/TimerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 769
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_LTextView:Landroid/widget/TextView;

    new-instance v1, Lapps/babycaretimer/TimerActivity$17;

    invoke-direct {v1, p0}, Lapps/babycaretimer/TimerActivity$17;-><init>(Lapps/babycaretimer/TimerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 776
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_RTextView:Landroid/widget/TextView;

    new-instance v1, Lapps/babycaretimer/TimerActivity$18;

    invoke-direct {v1, p0}, Lapps/babycaretimer/TimerActivity$18;-><init>(Lapps/babycaretimer/TimerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 783
    return-void
.end method

.method private setupChronometer()V
    .locals 2

    .prologue
    .line 855
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "TimerActivity.setupChronometers()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 856
    :cond_0
    const v0, 0x7f0b001f

    invoke-virtual {p0, v0}, Lapps/babycaretimer/TimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_masterChronometer:Landroid/widget/Chronometer;

    .line 857
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_masterChronometer:Landroid/widget/Chronometer;

    new-instance v1, Lapps/babycaretimer/TimerActivity$20;

    invoke-direct {v1, p0}, Lapps/babycaretimer/TimerActivity$20;-><init>(Lapps/babycaretimer/TimerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    .line 862
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_masterChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    .line 863
    return-void
.end method

.method private setupContextMenus()V
    .locals 1

    .prologue
    .line 789
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "TimerActivity.setupContextMenus()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 790
    :cond_0
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_diaperLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lapps/babycaretimer/TimerActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 791
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_bottleLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lapps/babycaretimer/TimerActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 792
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_sleepLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lapps/babycaretimer/TimerActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 793
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_customLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lapps/babycaretimer/TimerActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 794
    return-void
.end method

.method private setupSeekBar()V
    .locals 2

    .prologue
    .line 1105
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "TimerActivity.setupSeekBar()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 1106
    :cond_0
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_seekBar:Landroid/widget/SeekBar;

    new-instance v1, Lapps/babycaretimer/TimerActivity$25;

    invoke-direct {v1, p0}, Lapps/babycaretimer/TimerActivity$25;-><init>(Lapps/babycaretimer/TimerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1117
    iget v0, p0, Lapps/babycaretimer/TimerActivity;->_breastFeedingSide:I

    invoke-direct {p0, v0}, Lapps/babycaretimer/TimerActivity;->setSeekBar(I)V

    .line 1118
    return-void
.end method

.method private setupViews()V
    .locals 2

    .prologue
    .line 643
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "TimerActivity.setupViews()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 644
    :cond_0
    const v0, 0x7f0b0021

    invoke-virtual {p0, v0}, Lapps/babycaretimer/TimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_diaperTextView:Landroid/widget/TextView;

    .line 645
    const v0, 0x7f0b0025

    invoke-virtual {p0, v0}, Lapps/babycaretimer/TimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_bottleTextView:Landroid/widget/TextView;

    .line 646
    const v0, 0x7f0b0029

    invoke-virtual {p0, v0}, Lapps/babycaretimer/TimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_sleepTextView:Landroid/widget/TextView;

    .line 647
    const v0, 0x7f0b002d

    invoke-virtual {p0, v0}, Lapps/babycaretimer/TimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_customTextView:Landroid/widget/TextView;

    .line 648
    const v0, 0x7f0b0023

    invoke-virtual {p0, v0}, Lapps/babycaretimer/TimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_diaperAlarmTextView:Landroid/widget/TextView;

    .line 649
    const v0, 0x7f0b0027

    invoke-virtual {p0, v0}, Lapps/babycaretimer/TimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_bottleAlarmTextView:Landroid/widget/TextView;

    .line 650
    const v0, 0x7f0b002b

    invoke-virtual {p0, v0}, Lapps/babycaretimer/TimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_sleepAlarmTextView:Landroid/widget/TextView;

    .line 651
    const v0, 0x7f0b002f

    invoke-virtual {p0, v0}, Lapps/babycaretimer/TimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_customAlarmTextView:Landroid/widget/TextView;

    .line 652
    const v0, 0x7f0b0033

    invoke-virtual {p0, v0}, Lapps/babycaretimer/TimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_diaperTotalTextView:Landroid/widget/TextView;

    .line 653
    const v0, 0x7f0b0035

    invoke-virtual {p0, v0}, Lapps/babycaretimer/TimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_bottleTotalTextView:Landroid/widget/TextView;

    .line 654
    const v0, 0x7f0b0037

    invoke-virtual {p0, v0}, Lapps/babycaretimer/TimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_sleepTotalTextView:Landroid/widget/TextView;

    .line 655
    const v0, 0x7f0b0039

    invoke-virtual {p0, v0}, Lapps/babycaretimer/TimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_customTotalTextView:Landroid/widget/TextView;

    .line 656
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_secondsEnabled:Z

    if-eqz v0, :cond_1

    .line 657
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_diaperTextView:Landroid/widget/TextView;

    const-string v1, "00:00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 658
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_bottleTextView:Landroid/widget/TextView;

    const-string v1, "00:00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 659
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_sleepTextView:Landroid/widget/TextView;

    const-string v1, "00:00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 660
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_customTextView:Landroid/widget/TextView;

    const-string v1, "00:00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 667
    :goto_0
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_diaperTotalTextView:Landroid/widget/TextView;

    const-string v1, "Diaper Change Total: 0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_bottleTotalTextView:Landroid/widget/TextView;

    const-string v1, "Bottle Total: 0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 669
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_sleepTotalTextView:Landroid/widget/TextView;

    const-string v1, "Sleep Total: 0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 670
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_customTotalTextView:Landroid/widget/TextView;

    const-string v1, "Custom Total: 0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 671
    const v0, 0x7f0b0031

    invoke-virtual {p0, v0}, Lapps/babycaretimer/TimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_seekBar:Landroid/widget/SeekBar;

    .line 672
    const v0, 0x7f0b0030

    invoke-virtual {p0, v0}, Lapps/babycaretimer/TimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_LTextView:Landroid/widget/TextView;

    .line 673
    const v0, 0x7f0b0032

    invoke-virtual {p0, v0}, Lapps/babycaretimer/TimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_RTextView:Landroid/widget/TextView;

    .line 674
    const v0, 0x7f0b0020

    invoke-virtual {p0, v0}, Lapps/babycaretimer/TimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_diaperLinearLayout:Landroid/widget/LinearLayout;

    .line 675
    const v0, 0x7f0b0024

    invoke-virtual {p0, v0}, Lapps/babycaretimer/TimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_bottleLinearLayout:Landroid/widget/LinearLayout;

    .line 676
    const v0, 0x7f0b0028

    invoke-virtual {p0, v0}, Lapps/babycaretimer/TimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_sleepLinearLayout:Landroid/widget/LinearLayout;

    .line 677
    const v0, 0x7f0b002c

    invoke-virtual {p0, v0}, Lapps/babycaretimer/TimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_customLinearLayout:Landroid/widget/LinearLayout;

    .line 678
    const v0, 0x7f0b0034

    invoke-virtual {p0, v0}, Lapps/babycaretimer/TimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_diaperImageView:Landroid/widget/ImageView;

    .line 679
    const v0, 0x7f0b0036

    invoke-virtual {p0, v0}, Lapps/babycaretimer/TimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_bottleImageView:Landroid/widget/ImageView;

    .line 680
    const v0, 0x7f0b0038

    invoke-virtual {p0, v0}, Lapps/babycaretimer/TimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_sleepImageView:Landroid/widget/ImageView;

    .line 681
    const v0, 0x7f0b003a

    invoke-virtual {p0, v0}, Lapps/babycaretimer/TimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_customImageView:Landroid/widget/ImageView;

    .line 682
    return-void

    .line 662
    :cond_1
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_diaperTextView:Landroid/widget/TextView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 663
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_bottleTextView:Landroid/widget/TextView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 664
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_sleepTextView:Landroid/widget/TextView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 665
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_customTextView:Landroid/widget/TextView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private startBottleChronometer()V
    .locals 5

    .prologue
    .line 1190
    iget-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v2, :cond_0

    const-string v2, "TimerActivity.startBottleChronometer()"

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 1192
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lapps/babycaretimer/TimerActivity;->_bottleBaseTime:J

    .line 1193
    iget v2, p0, Lapps/babycaretimer/TimerActivity;->_bottleCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lapps/babycaretimer/TimerActivity;->_bottleCount:I

    .line 1194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lapps/babycaretimer/TimerActivity;->_bottleTimerStartTime:J

    .line 1195
    const/4 v2, 0x1

    iput-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_bottleTimerActive:Z

    .line 1196
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lapps/babycaretimer/TimerActivity;->_bottleTimerOffset:J

    .line 1198
    iget-object v2, p0, Lapps/babycaretimer/TimerActivity;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1199
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "bottle_base_time"

    iget-wide v3, p0, Lapps/babycaretimer/TimerActivity;->_bottleBaseTime:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1200
    const-string v2, "bottle_count"

    iget v3, p0, Lapps/babycaretimer/TimerActivity;->_bottleCount:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1201
    const-string v2, "bottle_timer_start"

    iget-wide v3, p0, Lapps/babycaretimer/TimerActivity;->_bottleTimerStartTime:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1202
    const-string v2, "bottle_timer_active"

    iget-boolean v3, p0, Lapps/babycaretimer/TimerActivity;->_bottleTimerActive:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1203
    const-string v2, "bottle_timer_offset"

    iget-wide v3, p0, Lapps/babycaretimer/TimerActivity;->_bottleTimerOffset:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1204
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1205
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lapps/babycaretimer/TimerActivity;->setAlarm(I)V

    .line 1206
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->setupAlarmTextViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1210
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    :goto_0
    return-void

    .line 1207
    :catch_0
    move-exception v1

    .line 1208
    .local v1, ex:Ljava/lang/Exception;
    iget-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimerActivity.startBottleChronometer() ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startCustomChronometer()V
    .locals 5

    .prologue
    .line 1289
    iget-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v2, :cond_0

    const-string v2, "TimerActivity.startCustomChronometer()"

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 1291
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lapps/babycaretimer/TimerActivity;->_customBaseTime:J

    .line 1292
    iget v2, p0, Lapps/babycaretimer/TimerActivity;->_customCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lapps/babycaretimer/TimerActivity;->_customCount:I

    .line 1293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lapps/babycaretimer/TimerActivity;->_customTimerStartTime:J

    .line 1294
    const/4 v2, 0x1

    iput-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_customTimerActive:Z

    .line 1295
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lapps/babycaretimer/TimerActivity;->_customTimerOffset:J

    .line 1297
    iget-object v2, p0, Lapps/babycaretimer/TimerActivity;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1298
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "custom_base_time"

    iget-wide v3, p0, Lapps/babycaretimer/TimerActivity;->_customBaseTime:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1299
    const-string v2, "custom_count"

    iget v3, p0, Lapps/babycaretimer/TimerActivity;->_customCount:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1300
    const-string v2, "custom_timer_start"

    iget-wide v3, p0, Lapps/babycaretimer/TimerActivity;->_customTimerStartTime:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1301
    const-string v2, "custom_timer_active"

    iget-boolean v3, p0, Lapps/babycaretimer/TimerActivity;->_customTimerActive:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1302
    const-string v2, "custom_timer_offset"

    iget-wide v3, p0, Lapps/babycaretimer/TimerActivity;->_customTimerOffset:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1303
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1304
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lapps/babycaretimer/TimerActivity;->setAlarm(I)V

    .line 1305
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->setupAlarmTextViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1309
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    :goto_0
    return-void

    .line 1306
    :catch_0
    move-exception v1

    .line 1307
    .local v1, ex:Ljava/lang/Exception;
    iget-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimerActivity.startCustomChronometer() ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startDiaperChronometer()V
    .locals 5

    .prologue
    .line 1142
    iget-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v2, :cond_0

    const-string v2, "TimerActivity.startDiaperChronometer()"

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 1144
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lapps/babycaretimer/TimerActivity;->_diaperBaseTime:J

    .line 1145
    iget v2, p0, Lapps/babycaretimer/TimerActivity;->_diaperCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lapps/babycaretimer/TimerActivity;->_diaperCount:I

    .line 1146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lapps/babycaretimer/TimerActivity;->_diaperTimerStartTime:J

    .line 1147
    const/4 v2, 0x1

    iput-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_diaperTimerActive:Z

    .line 1148
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lapps/babycaretimer/TimerActivity;->_diaperTimerOffset:J

    .line 1150
    iget-object v2, p0, Lapps/babycaretimer/TimerActivity;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1151
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "diaper_base_time"

    iget-wide v3, p0, Lapps/babycaretimer/TimerActivity;->_diaperBaseTime:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1152
    const-string v2, "diaper_count"

    iget v3, p0, Lapps/babycaretimer/TimerActivity;->_diaperCount:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1153
    const-string v2, "diaper_timer_start"

    iget-wide v3, p0, Lapps/babycaretimer/TimerActivity;->_diaperTimerStartTime:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1154
    const-string v2, "diaper_timer_active"

    iget-boolean v3, p0, Lapps/babycaretimer/TimerActivity;->_diaperTimerActive:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1155
    const-string v2, "diaper_timer_offset"

    iget-wide v3, p0, Lapps/babycaretimer/TimerActivity;->_diaperTimerOffset:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1156
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1157
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lapps/babycaretimer/TimerActivity;->setAlarm(I)V

    .line 1158
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->setupAlarmTextViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1162
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    :goto_0
    return-void

    .line 1159
    :catch_0
    move-exception v1

    .line 1160
    .local v1, ex:Ljava/lang/Exception;
    iget-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimerActivity.startDiaperChronometer() ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startSetAlarmActivity(IJ)V
    .locals 4
    .parameter "alarmType"
    .parameter "alarmTime"

    .prologue
    .line 1551
    iget-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v2, :cond_0

    const-string v2, "TimerActivity.startSetAlarmActivity()"

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 1552
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const-class v3, Lapps/babycaretimer/SetAlarmActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1553
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1554
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "alarm_type"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1555
    const-string v2, "alarm_time"

    invoke-virtual {v0, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1556
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1557
    const/high16 v2, 0x1080

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1558
    invoke-virtual {p0, v1}, Lapps/babycaretimer/TimerActivity;->startActivity(Landroid/content/Intent;)V

    .line 1559
    return-void
.end method

.method private startSleepChronometer()V
    .locals 5

    .prologue
    .line 1238
    iget-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v2, :cond_0

    const-string v2, "TimerActivity.startSleepChronometer()"

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 1240
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lapps/babycaretimer/TimerActivity;->_sleepBaseTime:J

    .line 1241
    iget v2, p0, Lapps/babycaretimer/TimerActivity;->_sleepCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lapps/babycaretimer/TimerActivity;->_sleepCount:I

    .line 1242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lapps/babycaretimer/TimerActivity;->_sleepTimerStartTime:J

    .line 1243
    const/4 v2, 0x1

    iput-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_sleepTimerActive:Z

    .line 1244
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lapps/babycaretimer/TimerActivity;->_sleepTimerOffset:J

    .line 1246
    iget-object v2, p0, Lapps/babycaretimer/TimerActivity;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1247
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "sleep_base_time"

    iget-wide v3, p0, Lapps/babycaretimer/TimerActivity;->_sleepBaseTime:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1248
    const-string v2, "sleep_count"

    iget v3, p0, Lapps/babycaretimer/TimerActivity;->_sleepCount:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1249
    const-string v2, "sleep_timer_start"

    iget-wide v3, p0, Lapps/babycaretimer/TimerActivity;->_sleepTimerStartTime:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1250
    const-string v2, "sleep_timer_active"

    iget-boolean v3, p0, Lapps/babycaretimer/TimerActivity;->_sleepTimerActive:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1251
    const-string v2, "sleep_timer_offset"

    iget-wide v3, p0, Lapps/babycaretimer/TimerActivity;->_sleepTimerOffset:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1252
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1253
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lapps/babycaretimer/TimerActivity;->setAlarm(I)V

    .line 1254
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->setupAlarmTextViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1258
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    :goto_0
    return-void

    .line 1255
    :catch_0
    move-exception v1

    .line 1256
    .local v1, ex:Ljava/lang/Exception;
    iget-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimerActivity.startSleepChronometer() ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopBottleChronometer()V
    .locals 5

    .prologue
    .line 1216
    iget-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v2, :cond_0

    const-string v2, "TimerActivity.stopBottleChronometer()"

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 1218
    :cond_0
    :try_start_0
    iget-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_secondsEnabled:Z

    if-eqz v2, :cond_2

    .line 1219
    iget-object v2, p0, Lapps/babycaretimer/TimerActivity;->_bottleTextView:Landroid/widget/TextView;

    const-string v3, "00:00:00"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1223
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_bottleTimerActive:Z

    .line 1224
    iget-object v2, p0, Lapps/babycaretimer/TimerActivity;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1225
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "bottle_timer_stop"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1226
    const-string v2, "bottle_timer_active"

    iget-boolean v3, p0, Lapps/babycaretimer/TimerActivity;->_bottleTimerActive:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1227
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1228
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->setupAlarmTextViews()V

    .line 1232
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    :goto_1
    return-void

    .line 1221
    :cond_2
    iget-object v2, p0, Lapps/babycaretimer/TimerActivity;->_bottleTextView:Landroid/widget/TextView;

    const-string v3, "00:00"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1229
    :catch_0
    move-exception v1

    .line 1230
    .local v1, ex:Ljava/lang/Exception;
    iget-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimerActivity.stopBottleChronometer() ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private stopCustomChronometer()V
    .locals 5

    .prologue
    .line 1315
    iget-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v2, :cond_0

    const-string v2, "TimerActivity.stopCustomChronometer()"

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 1317
    :cond_0
    :try_start_0
    iget-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_secondsEnabled:Z

    if-eqz v2, :cond_2

    .line 1318
    iget-object v2, p0, Lapps/babycaretimer/TimerActivity;->_customTextView:Landroid/widget/TextView;

    const-string v3, "00:00:00"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1322
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_customTimerActive:Z

    .line 1323
    iget-object v2, p0, Lapps/babycaretimer/TimerActivity;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1324
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "custom_timer_stop"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1325
    const-string v2, "custom_timer_active"

    iget-boolean v3, p0, Lapps/babycaretimer/TimerActivity;->_customTimerActive:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1326
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1327
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->setupAlarmTextViews()V

    .line 1331
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    :goto_1
    return-void

    .line 1320
    :cond_2
    iget-object v2, p0, Lapps/babycaretimer/TimerActivity;->_customTextView:Landroid/widget/TextView;

    const-string v3, "00:00"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1328
    :catch_0
    move-exception v1

    .line 1329
    .local v1, ex:Ljava/lang/Exception;
    iget-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimerActivity.stopCustomChronometer() ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private stopDiaperChronometer()V
    .locals 5

    .prologue
    .line 1168
    iget-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v2, :cond_0

    const-string v2, "TimerActivity.stopDiaperChronometer()"

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 1170
    :cond_0
    :try_start_0
    iget-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_secondsEnabled:Z

    if-eqz v2, :cond_2

    .line 1171
    iget-object v2, p0, Lapps/babycaretimer/TimerActivity;->_diaperTextView:Landroid/widget/TextView;

    const-string v3, "00:00:00"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1175
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_diaperTimerActive:Z

    .line 1176
    iget-object v2, p0, Lapps/babycaretimer/TimerActivity;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1177
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "diaper_timer_stop"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1178
    const-string v2, "diaper_timer_active"

    iget-boolean v3, p0, Lapps/babycaretimer/TimerActivity;->_diaperTimerActive:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1179
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1180
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->setupAlarmTextViews()V

    .line 1184
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    :goto_1
    return-void

    .line 1173
    :cond_2
    iget-object v2, p0, Lapps/babycaretimer/TimerActivity;->_diaperTextView:Landroid/widget/TextView;

    const-string v3, "00:00"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1181
    :catch_0
    move-exception v1

    .line 1182
    .local v1, ex:Ljava/lang/Exception;
    iget-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimerActivity.stopDiaperChronometer() ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private stopSleepChronometer()V
    .locals 10

    .prologue
    .line 1264
    iget-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v2, :cond_0

    const-string v2, "TimerActivity.stopSleepChronometer()"

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 1267
    :cond_0
    :try_start_0
    iget-wide v2, p0, Lapps/babycaretimer/TimerActivity;->_totalSleepTime:J

    iget-object v4, p0, Lapps/babycaretimer/TimerActivity;->_preferences:Landroid/content/SharedPreferences;

    const-string v5, "sleep_timer_stop"

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iget-object v6, p0, Lapps/babycaretimer/TimerActivity;->_preferences:Landroid/content/SharedPreferences;

    const-string v7, "sleep_timer_start"

    const-wide/16 v8, 0x0

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lapps/babycaretimer/TimerActivity;->_totalSleepTime:J

    .line 1268
    iget-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_secondsEnabled:Z

    if-eqz v2, :cond_2

    .line 1269
    iget-object v2, p0, Lapps/babycaretimer/TimerActivity;->_sleepTextView:Landroid/widget/TextView;

    const-string v3, "00:00:00"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1273
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_sleepTimerActive:Z

    .line 1274
    iget-object v2, p0, Lapps/babycaretimer/TimerActivity;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1275
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "sleep_timer_stop"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1276
    const-string v2, "sleep_timer_active"

    iget-boolean v3, p0, Lapps/babycaretimer/TimerActivity;->_sleepTimerActive:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1277
    const-string v2, "total_elapsed_time_sleep"

    iget-wide v3, p0, Lapps/babycaretimer/TimerActivity;->_totalSleepTime:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1278
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1279
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->setupAlarmTextViews()V

    .line 1283
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    :goto_1
    return-void

    .line 1271
    :cond_2
    iget-object v2, p0, Lapps/babycaretimer/TimerActivity;->_sleepTextView:Landroid/widget/TextView;

    const-string v3, "00:00"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1280
    :catch_0
    move-exception v1

    .line 1281
    .local v1, ex:Ljava/lang/Exception;
    iget-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimerActivity.stopSleepChronometer() ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateBottleTotalSummary()V
    .locals 4

    .prologue
    .line 1433
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "TimerActivity.updateBottleTotalSummary()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 1434
    :cond_0
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_bottleTotalTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const v3, 0x7f080013

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lapps/babycaretimer/TimerActivity;->_bottleCount:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1435
    return-void
.end method

.method private updateCustomTotalSummary()V
    .locals 4

    .prologue
    .line 1449
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "TimerActivity.updateCustomTotalSummary()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 1450
    :cond_0
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_customTotalTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const v3, 0x7f080015

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lapps/babycaretimer/TimerActivity;->_customCount:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1451
    return-void
.end method

.method private updateDiaperTotalSummary()V
    .locals 4

    .prologue
    .line 1425
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "TimerActivity.updateDiaperTotalSummary()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 1426
    :cond_0
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_diaperTotalTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const v3, 0x7f080012

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lapps/babycaretimer/TimerActivity;->_diaperCount:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1427
    return-void
.end method

.method private updateSleepTotalSummary()V
    .locals 4

    .prologue
    .line 1441
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "TimerActivity.updateSleepTotalSummary()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 1442
    :cond_0
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_sleepTotalTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const v3, 0x7f080014

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lapps/babycaretimer/TimerActivity;->_sleepCount:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1443
    return-void
.end method

.method private updateTimerTextView(IJJ)V
    .locals 15
    .parameter "timerType"
    .parameter "baseTime"
    .parameter "offsetTime"

    .prologue
    .line 1009
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 1010
    .local v9, timeValue:J
    add-long v11, v9, p4

    sub-long v11, v11, p2

    const-wide/16 v13, 0x3e8

    div-long v9, v11, v13

    .line 1011
    const-wide/16 v11, 0xe10

    div-long v1, v9, v11

    .line 1012
    .local v1, hoursValue:J
    const-string v0, "00"

    .line 1013
    .local v0, hours:Ljava/lang/String;
    const-wide/16 v11, 0xa

    cmp-long v11, v1, v11

    if-gez v11, :cond_0

    .line 1014
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1018
    :goto_0
    const-wide/16 v11, 0xe10

    mul-long/2addr v11, v1

    sub-long/2addr v9, v11

    .line 1019
    const-wide/16 v11, 0x3c

    div-long v4, v9, v11

    .line 1020
    .local v4, minutesValue:J
    const-string v3, "00"

    .line 1021
    .local v3, minutes:Ljava/lang/String;
    const-wide/16 v11, 0xa

    cmp-long v11, v4, v11

    if-gez v11, :cond_1

    .line 1022
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1026
    :goto_1
    const-wide/16 v11, 0x3c

    rem-long v7, v9, v11

    .line 1027
    .local v7, secondsValue:J
    const-string v6, "00"

    .line 1028
    .local v6, seconds:Ljava/lang/String;
    const-wide/16 v11, 0xa

    cmp-long v11, v7, v11

    if-gez v11, :cond_2

    .line 1029
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1033
    :goto_2
    packed-switch p1, :pswitch_data_0

    .line 1091
    :goto_3
    return-void

    .line 1016
    .end local v3           #minutes:Ljava/lang/String;
    .end local v4           #minutesValue:J
    .end local v6           #seconds:Ljava/lang/String;
    .end local v7           #secondsValue:J
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1024
    .restart local v3       #minutes:Ljava/lang/String;
    .restart local v4       #minutesValue:J
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1031
    .restart local v6       #seconds:Ljava/lang/String;
    .restart local v7       #secondsValue:J
    :cond_2
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 1035
    :pswitch_0
    iget-boolean v11, p0, Lapps/babycaretimer/TimerActivity;->_secondsEnabled:Z

    if-eqz v11, :cond_3

    .line 1036
    iget-object v11, p0, Lapps/babycaretimer/TimerActivity;->_diaperTextView:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1037
    :cond_3
    iget-boolean v11, p0, Lapps/babycaretimer/TimerActivity;->_blinkEnabled:Z

    if-eqz v11, :cond_5

    .line 1038
    iget-boolean v11, p0, Lapps/babycaretimer/TimerActivity;->_masterBlink:Z

    if-eqz v11, :cond_4

    .line 1039
    iget-object v11, p0, Lapps/babycaretimer/TimerActivity;->_diaperTextView:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1041
    :cond_4
    iget-object v11, p0, Lapps/babycaretimer/TimerActivity;->_diaperTextView:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1044
    :cond_5
    iget-object v11, p0, Lapps/babycaretimer/TimerActivity;->_diaperTextView:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1049
    :pswitch_1
    iget-boolean v11, p0, Lapps/babycaretimer/TimerActivity;->_secondsEnabled:Z

    if-eqz v11, :cond_6

    .line 1050
    iget-object v11, p0, Lapps/babycaretimer/TimerActivity;->_bottleTextView:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1051
    :cond_6
    iget-boolean v11, p0, Lapps/babycaretimer/TimerActivity;->_blinkEnabled:Z

    if-eqz v11, :cond_8

    .line 1052
    iget-boolean v11, p0, Lapps/babycaretimer/TimerActivity;->_masterBlink:Z

    if-eqz v11, :cond_7

    .line 1053
    iget-object v11, p0, Lapps/babycaretimer/TimerActivity;->_bottleTextView:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1055
    :cond_7
    iget-object v11, p0, Lapps/babycaretimer/TimerActivity;->_bottleTextView:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1058
    :cond_8
    iget-object v11, p0, Lapps/babycaretimer/TimerActivity;->_bottleTextView:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1063
    :pswitch_2
    iget-boolean v11, p0, Lapps/babycaretimer/TimerActivity;->_secondsEnabled:Z

    if-eqz v11, :cond_9

    .line 1064
    iget-object v11, p0, Lapps/babycaretimer/TimerActivity;->_sleepTextView:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1065
    :cond_9
    iget-boolean v11, p0, Lapps/babycaretimer/TimerActivity;->_blinkEnabled:Z

    if-eqz v11, :cond_b

    .line 1066
    iget-boolean v11, p0, Lapps/babycaretimer/TimerActivity;->_masterBlink:Z

    if-eqz v11, :cond_a

    .line 1067
    iget-object v11, p0, Lapps/babycaretimer/TimerActivity;->_sleepTextView:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1069
    :cond_a
    iget-object v11, p0, Lapps/babycaretimer/TimerActivity;->_sleepTextView:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1072
    :cond_b
    iget-object v11, p0, Lapps/babycaretimer/TimerActivity;->_sleepTextView:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1077
    :pswitch_3
    iget-boolean v11, p0, Lapps/babycaretimer/TimerActivity;->_secondsEnabled:Z

    if-eqz v11, :cond_c

    .line 1078
    iget-object v11, p0, Lapps/babycaretimer/TimerActivity;->_customTextView:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1079
    :cond_c
    iget-boolean v11, p0, Lapps/babycaretimer/TimerActivity;->_blinkEnabled:Z

    if-eqz v11, :cond_e

    .line 1080
    iget-boolean v11, p0, Lapps/babycaretimer/TimerActivity;->_masterBlink:Z

    if-eqz v11, :cond_d

    .line 1081
    iget-object v11, p0, Lapps/babycaretimer/TimerActivity;->_customTextView:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1083
    :cond_d
    iget-object v11, p0, Lapps/babycaretimer/TimerActivity;->_customTextView:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1086
    :cond_e
    iget-object v11, p0, Lapps/babycaretimer/TimerActivity;->_customTextView:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1033
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateTimerTextViews()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 978
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_masterBlink:Z

    if-eqz v0, :cond_4

    .line 979
    iput-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_masterBlink:Z

    .line 984
    :goto_0
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_diaperTimerActive:Z

    if-eqz v0, :cond_0

    .line 985
    iget-wide v2, p0, Lapps/babycaretimer/TimerActivity;->_diaperBaseTime:J

    iget-wide v4, p0, Lapps/babycaretimer/TimerActivity;->_diaperTimerOffset:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lapps/babycaretimer/TimerActivity;->updateTimerTextView(IJJ)V

    .line 988
    :cond_0
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_bottleTimerActive:Z

    if-eqz v0, :cond_1

    .line 989
    iget-wide v2, p0, Lapps/babycaretimer/TimerActivity;->_bottleBaseTime:J

    iget-wide v4, p0, Lapps/babycaretimer/TimerActivity;->_bottleTimerOffset:J

    move-object v0, p0

    move v1, v6

    invoke-direct/range {v0 .. v5}, Lapps/babycaretimer/TimerActivity;->updateTimerTextView(IJJ)V

    .line 992
    :cond_1
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_sleepTimerActive:Z

    if-eqz v0, :cond_2

    .line 993
    const/4 v1, 0x2

    iget-wide v2, p0, Lapps/babycaretimer/TimerActivity;->_sleepBaseTime:J

    iget-wide v4, p0, Lapps/babycaretimer/TimerActivity;->_sleepTimerOffset:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lapps/babycaretimer/TimerActivity;->updateTimerTextView(IJJ)V

    .line 996
    :cond_2
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_customTimerActive:Z

    if-eqz v0, :cond_3

    .line 997
    const/4 v1, 0x3

    iget-wide v2, p0, Lapps/babycaretimer/TimerActivity;->_customBaseTime:J

    iget-wide v4, p0, Lapps/babycaretimer/TimerActivity;->_customTimerOffset:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lapps/babycaretimer/TimerActivity;->updateTimerTextView(IJJ)V

    .line 999
    :cond_3
    return-void

    .line 981
    :cond_4
    iput-boolean v6, p0, Lapps/babycaretimer/TimerActivity;->_masterBlink:Z

    goto :goto_0
.end method

.method private updateTotalSummary()V
    .locals 4

    .prologue
    .line 1414
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "TimerActivity.updateTotalSummary()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 1415
    :cond_0
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_diaperTotalTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const v3, 0x7f080012

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lapps/babycaretimer/TimerActivity;->_diaperCount:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1416
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_bottleTotalTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const v3, 0x7f080013

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lapps/babycaretimer/TimerActivity;->_bottleCount:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1417
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_sleepTotalTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const v3, 0x7f080014

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lapps/babycaretimer/TimerActivity;->_sleepCount:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1418
    iget-object v0, p0, Lapps/babycaretimer/TimerActivity;->_customTotalTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const v3, 0x7f080015

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lapps/babycaretimer/TimerActivity;->_customCount:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1419
    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "menuItem"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v0, 0x1

    .line 316
    iget-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v1, :cond_0

    const-string v1, "TimerActivity.onContextItemSelected()"

    invoke-static {v1}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 318
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 404
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 320
    :pswitch_1
    iget-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_diaperAlarmActive:Z

    if-eqz v1, :cond_1

    .line 321
    iget-wide v1, p0, Lapps/babycaretimer/TimerActivity;->_diaperAlarmTime:J

    invoke-direct {p0, v4, v1, v2}, Lapps/babycaretimer/TimerActivity;->startSetAlarmActivity(IJ)V

    goto :goto_0

    .line 323
    :cond_1
    invoke-direct {p0, v4, v2, v3}, Lapps/babycaretimer/TimerActivity;->startSetAlarmActivity(IJ)V

    goto :goto_0

    .line 328
    :pswitch_2
    invoke-direct {p0, v4}, Lapps/babycaretimer/TimerActivity;->cancelAlarm(I)V

    goto :goto_0

    .line 332
    :pswitch_3
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->startDiaperChronometer()V

    .line 333
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->updateDiaperTotalSummary()V

    goto :goto_0

    .line 337
    :pswitch_4
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->stopDiaperChronometer()V

    goto :goto_0

    .line 341
    :pswitch_5
    iget-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_bottleAlarmActive:Z

    if-eqz v1, :cond_2

    .line 342
    iget-wide v1, p0, Lapps/babycaretimer/TimerActivity;->_bottleAlarmTime:J

    invoke-direct {p0, v0, v1, v2}, Lapps/babycaretimer/TimerActivity;->startSetAlarmActivity(IJ)V

    goto :goto_0

    .line 344
    :cond_2
    invoke-direct {p0, v0, v2, v3}, Lapps/babycaretimer/TimerActivity;->startSetAlarmActivity(IJ)V

    goto :goto_0

    .line 349
    :pswitch_6
    invoke-direct {p0, v0}, Lapps/babycaretimer/TimerActivity;->cancelAlarm(I)V

    goto :goto_0

    .line 353
    :pswitch_7
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->startBottleChronometer()V

    .line 354
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->updateBottleTotalSummary()V

    goto :goto_0

    .line 358
    :pswitch_8
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->stopBottleChronometer()V

    goto :goto_0

    .line 362
    :pswitch_9
    iget-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_sleepAlarmActive:Z

    if-eqz v1, :cond_3

    .line 363
    iget-wide v1, p0, Lapps/babycaretimer/TimerActivity;->_sleepAlarmTime:J

    invoke-direct {p0, v5, v1, v2}, Lapps/babycaretimer/TimerActivity;->startSetAlarmActivity(IJ)V

    goto :goto_0

    .line 365
    :cond_3
    invoke-direct {p0, v5, v2, v3}, Lapps/babycaretimer/TimerActivity;->startSetAlarmActivity(IJ)V

    goto :goto_0

    .line 370
    :pswitch_a
    invoke-direct {p0, v5}, Lapps/babycaretimer/TimerActivity;->cancelAlarm(I)V

    goto :goto_0

    .line 374
    :pswitch_b
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->startSleepChronometer()V

    .line 375
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->updateSleepTotalSummary()V

    goto :goto_0

    .line 379
    :pswitch_c
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->stopSleepChronometer()V

    goto :goto_0

    .line 383
    :pswitch_d
    iget-boolean v1, p0, Lapps/babycaretimer/TimerActivity;->_customAlarmActive:Z

    if-eqz v1, :cond_4

    .line 384
    iget-wide v1, p0, Lapps/babycaretimer/TimerActivity;->_customAlarmTime:J

    invoke-direct {p0, v6, v1, v2}, Lapps/babycaretimer/TimerActivity;->startSetAlarmActivity(IJ)V

    goto :goto_0

    .line 386
    :cond_4
    invoke-direct {p0, v6, v2, v3}, Lapps/babycaretimer/TimerActivity;->startSetAlarmActivity(IJ)V

    goto :goto_0

    .line 391
    :pswitch_e
    invoke-direct {p0, v6}, Lapps/babycaretimer/TimerActivity;->cancelAlarm(I)V

    goto :goto_0

    .line 395
    :pswitch_f
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->startCustomChronometer()V

    .line 396
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->updateCustomTotalSummary()V

    goto :goto_0

    .line 400
    :pswitch_10
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->stopCustomChronometer()V

    goto :goto_0

    .line 318
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b003c
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 198
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 199
    invoke-static {}, Lapps/babycaretimer/log/Log;->getDebug()Z

    move-result v0

    iput-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    .line 200
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "TimerActivity.onCreate()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 201
    :cond_0
    invoke-virtual {p0}, Lapps/babycaretimer/TimerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    .line 202
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .parameter "contextMenu"
    .parameter "view"
    .parameter "contextMenuInfo"

    .prologue
    const/4 v4, 0x0

    .line 247
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 248
    iget-boolean v3, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v3, :cond_0

    const-string v3, "TimerActivity.onCreateContextMenu()"

    invoke-static {v3}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 249
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 307
    :goto_0
    return-void

    .line 251
    :sswitch_0
    invoke-virtual {p0}, Lapps/babycaretimer/TimerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 253
    .local v1, menuInflater:Landroid/view/MenuInflater;
    const-string v3, "Timer Options"

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 254
    const v3, 0x7f0a0002

    invoke-virtual {v1, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 255
    iget-boolean v3, p0, Lapps/babycaretimer/TimerActivity;->_diaperAlarmActive:Z

    if-eqz v3, :cond_1

    .line 256
    const v3, 0x7f0b0044

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 257
    .local v2, setAlarmMenuItem:Landroid/view/MenuItem;
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 259
    .end local v2           #setAlarmMenuItem:Landroid/view/MenuItem;
    :cond_1
    const v3, 0x7f0b0045

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 260
    .local v0, cancelAlarmMenuItem:Landroid/view/MenuItem;
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 265
    .end local v0           #cancelAlarmMenuItem:Landroid/view/MenuItem;
    .end local v1           #menuInflater:Landroid/view/MenuInflater;
    :sswitch_1
    invoke-virtual {p0}, Lapps/babycaretimer/TimerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 267
    .restart local v1       #menuInflater:Landroid/view/MenuInflater;
    const-string v3, "Timer Options"

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 268
    const/high16 v3, 0x7f0a

    invoke-virtual {v1, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 269
    iget-boolean v3, p0, Lapps/babycaretimer/TimerActivity;->_bottleAlarmActive:Z

    if-eqz v3, :cond_2

    .line 270
    const v3, 0x7f0b003c

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 271
    .restart local v2       #setAlarmMenuItem:Landroid/view/MenuItem;
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 273
    .end local v2           #setAlarmMenuItem:Landroid/view/MenuItem;
    :cond_2
    const v3, 0x7f0b003d

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 274
    .restart local v0       #cancelAlarmMenuItem:Landroid/view/MenuItem;
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 279
    .end local v0           #cancelAlarmMenuItem:Landroid/view/MenuItem;
    .end local v1           #menuInflater:Landroid/view/MenuInflater;
    :sswitch_2
    invoke-virtual {p0}, Lapps/babycaretimer/TimerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 281
    .restart local v1       #menuInflater:Landroid/view/MenuInflater;
    const-string v3, "Timer Options"

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 282
    const v3, 0x7f0a0004

    invoke-virtual {v1, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 283
    iget-boolean v3, p0, Lapps/babycaretimer/TimerActivity;->_sleepAlarmActive:Z

    if-eqz v3, :cond_3

    .line 284
    const v3, 0x7f0b0049

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 285
    .restart local v2       #setAlarmMenuItem:Landroid/view/MenuItem;
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 287
    .end local v2           #setAlarmMenuItem:Landroid/view/MenuItem;
    :cond_3
    const v3, 0x7f0b004a

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 288
    .restart local v0       #cancelAlarmMenuItem:Landroid/view/MenuItem;
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 293
    .end local v0           #cancelAlarmMenuItem:Landroid/view/MenuItem;
    .end local v1           #menuInflater:Landroid/view/MenuInflater;
    :sswitch_3
    invoke-virtual {p0}, Lapps/babycaretimer/TimerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 295
    .restart local v1       #menuInflater:Landroid/view/MenuInflater;
    const-string v3, "Timer Options"

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 296
    const v3, 0x7f0a0001

    invoke-virtual {v1, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 297
    iget-boolean v3, p0, Lapps/babycaretimer/TimerActivity;->_customAlarmActive:Z

    if-eqz v3, :cond_4

    .line 298
    const v3, 0x7f0b0040

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 299
    .restart local v2       #setAlarmMenuItem:Landroid/view/MenuItem;
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 301
    .end local v2           #setAlarmMenuItem:Landroid/view/MenuItem;
    :cond_4
    const v3, 0x7f0b0041

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 302
    .restart local v0       #cancelAlarmMenuItem:Landroid/view/MenuItem;
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 249
    :sswitch_data_0
    .sparse-switch
        0x7f0b0020 -> :sswitch_0
        0x7f0b0024 -> :sswitch_1
        0x7f0b0028 -> :sswitch_2
        0x7f0b002c -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "id"

    .prologue
    const v7, 0x7f080016

    const v6, 0x7f08000f

    const v5, 0x7f08000e

    const v4, 0x1080027

    .line 485
    iget-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v2, :cond_0

    .line 486
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimerActivity.onCreateDialog() ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 487
    :cond_0
    const/4 v0, 0x0

    .line 488
    .local v0, alertDialog:Landroid/app/AlertDialog;
    packed-switch p1, :pswitch_data_0

    .line 578
    :goto_0
    return-object v0

    .line 490
    :pswitch_0
    iget-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v2, :cond_1

    const-string v2, "TimerActivity.onCreateDialog() DIAPER_DIALOG_RESET_COUNTER"

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 491
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 492
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 493
    iget-object v2, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 494
    iget-object v2, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const v3, 0x7f08001a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 495
    new-instance v2, Lapps/babycaretimer/TimerActivity$2;

    invoke-direct {v2, p0}, Lapps/babycaretimer/TimerActivity$2;-><init>(Lapps/babycaretimer/TimerActivity;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lapps/babycaretimer/TimerActivity$1;

    invoke-direct {v3, p0}, Lapps/babycaretimer/TimerActivity$1;-><init>(Lapps/babycaretimer/TimerActivity;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 508
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 509
    goto :goto_0

    .line 512
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :pswitch_1
    iget-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v2, :cond_2

    const-string v2, "TimerActivity.onCreateDialog() BOTTLE_DIALOG_RESET_COUNTER"

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 513
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 514
    .restart local v1       #builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 515
    iget-object v2, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 516
    iget-object v2, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const v3, 0x7f08001b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 517
    new-instance v2, Lapps/babycaretimer/TimerActivity$4;

    invoke-direct {v2, p0}, Lapps/babycaretimer/TimerActivity$4;-><init>(Lapps/babycaretimer/TimerActivity;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lapps/babycaretimer/TimerActivity$3;

    invoke-direct {v3, p0}, Lapps/babycaretimer/TimerActivity$3;-><init>(Lapps/babycaretimer/TimerActivity;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 530
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 531
    goto :goto_0

    .line 534
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :pswitch_2
    iget-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v2, :cond_3

    const-string v2, "TimerActivity.onCreateDialog() SLEEP_DIALOG_RESET_COUNTER"

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 535
    :cond_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 536
    .restart local v1       #builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 537
    iget-object v2, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 538
    iget-object v2, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const v3, 0x7f08001c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 539
    new-instance v2, Lapps/babycaretimer/TimerActivity$6;

    invoke-direct {v2, p0}, Lapps/babycaretimer/TimerActivity$6;-><init>(Lapps/babycaretimer/TimerActivity;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lapps/babycaretimer/TimerActivity$5;

    invoke-direct {v3, p0}, Lapps/babycaretimer/TimerActivity$5;-><init>(Lapps/babycaretimer/TimerActivity;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 552
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 553
    goto/16 :goto_0

    .line 556
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :pswitch_3
    iget-boolean v2, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v2, :cond_4

    const-string v2, "TimerActivity.onCreateDialog() CUSTOM_DIALOG_RESET_COUNTER"

    invoke-static {v2}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 557
    :cond_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 558
    .restart local v1       #builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 559
    iget-object v2, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 560
    iget-object v2, p0, Lapps/babycaretimer/TimerActivity;->_context:Landroid/content/Context;

    const v3, 0x7f08001d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 561
    new-instance v2, Lapps/babycaretimer/TimerActivity$8;

    invoke-direct {v2, p0}, Lapps/babycaretimer/TimerActivity$8;-><init>(Lapps/babycaretimer/TimerActivity;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lapps/babycaretimer/TimerActivity$7;

    invoke-direct {v3, p0}, Lapps/babycaretimer/TimerActivity$7;-><init>(Lapps/babycaretimer/TimerActivity;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 574
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 575
    goto/16 :goto_0

    .line 488
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 213
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "TimerActivity.onCreateOptionsMenu()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 214
    :cond_0
    invoke-virtual {p0}, Lapps/babycaretimer/TimerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0a0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 215
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 472
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 473
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "TimerActivity.onDestroy()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 474
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 422
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 423
    invoke-static {}, Lapps/babycaretimer/log/Log;->getDebug()Z

    move-result v0

    iput-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    .line 424
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "TimerActivity.onNewIntent()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 425
    :cond_0
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->setupApp()V

    .line 426
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "menuItem"

    .prologue
    .line 227
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "TimerActivity.onOptionsItemSelected()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 229
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 235
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 231
    :pswitch_0
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->launchPreferenceScreen()V

    .line 232
    const/4 v0, 0x1

    goto :goto_0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0048
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 454
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 455
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "TimerActivity.onPause()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 456
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 443
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 444
    invoke-static {}, Lapps/babycaretimer/log/Log;->getDebug()Z

    move-result v0

    iput-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    .line 445
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "TimerActivity.onResume()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 446
    :cond_0
    invoke-direct {p0}, Lapps/babycaretimer/TimerActivity;->setupApp()V

    .line 447
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 433
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 434
    invoke-static {}, Lapps/babycaretimer/log/Log;->getDebug()Z

    move-result v0

    iput-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    .line 435
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "TimerActivity.onStart()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 436
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 463
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 464
    iget-boolean v0, p0, Lapps/babycaretimer/TimerActivity;->_debug:Z

    if-eqz v0, :cond_0

    const-string v0, "TimerActivity.onStop()"

    invoke-static {v0}, Lapps/babycaretimer/log/Log;->v(Ljava/lang/String;)V

    .line 465
    :cond_0
    return-void
.end method
