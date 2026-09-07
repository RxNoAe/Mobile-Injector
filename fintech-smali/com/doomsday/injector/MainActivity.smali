.class public Lcom/doomsday/injector/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# instance fields
.field altPkg:Ljava/lang/String;

.field defaultUrl:Ljava/lang/String;

.field log:Landroid/widget/TextView;

.field manualPidBox:Landroid/widget/EditText;

.field pkg:Ljava/lang/String;

.field urlBox:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 14
    const-string v0, "com.movtery.zalithlauncher.v2"

    iput-object v0, p0, Lcom/doomsday/injector/MainActivity;->pkg:Ljava/lang/String;

    .line 15
    const-string v0, "com.movtery.zalithlauncher"

    iput-object v0, p0, Lcom/doomsday/injector/MainActivity;->altPkg:Ljava/lang/String;

    .line 16
    const-string v0, "https://doomsdayclient.xyz/download/DoomsDay.jar"

    iput-object v0, p0, Lcom/doomsday/injector/MainActivity;->defaultUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method addSpace(Landroid/widget/LinearLayout;I)V
    .registers 6

    .line 207
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method addStat(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 206
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, -0x756f58

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p2, 0x41100000    # 9.0f

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextSize(F)V

    const p2, 0x3df5c28f    # 0.12f

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setLetterSpacing(F)V

    const-string p2, "sans-serif-medium"

    invoke-static {p2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, -0x70501

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p3, 0x41400000    # 12.0f

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {p2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result p2

    invoke-virtual {v2, v5, p2, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method append(Ljava/lang/String;)V
    .registers 3

    .line 22
    new-instance v0, Lcom/doomsday/injector/MainActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lcom/doomsday/injector/MainActivity$$ExternalSyntheticLambda8;-><init>(Lcom/doomsday/injector/MainActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/doomsday/injector/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method btnBg(I)Landroid/graphics/drawable/GradientDrawable;
    .registers 3

    .line 18
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 p1, 0xe

    invoke-virtual {p0, p1}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method btnBgBlue()Landroid/graphics/drawable/GradientDrawable;
    .registers 5

    .line 19
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const v2, -0xd09401

    const v3, -0xb27501

    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method cardBg()Landroid/graphics/drawable/GradientDrawable;
    .registers 4

    .line 20
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v1, -0x47ebe7d9

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v1

    const v2, 0x12ffffff

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-object v0
.end method

.method cardBgStrong()Landroid/graphics/drawable/GradientDrawable;
    .registers 4

    .line 21
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v1, -0x1febe7d9

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v1

    const v2, 0x1affffff

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-object v0
.end method

.method doInject()V
    .registers 3

    .line 54
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/doomsday/injector/MainActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/doomsday/injector/MainActivity$$ExternalSyntheticLambda7;-><init>(Lcom/doomsday/injector/MainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 112
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 113
    return-void
.end method

.method doWrap()V
    .registers 3

    .line 115
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/doomsday/injector/MainActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/doomsday/injector/MainActivity$$ExternalSyntheticLambda10;-><init>(Lcom/doomsday/injector/MainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 137
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 138
    return-void
.end method

.method dp(I)I
    .registers 4

    .line 17
    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/doomsday/injector/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method dumpPs()Ljava/lang/String;
    .registers 7

    .line 31
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "su"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "-c"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "ps -A"

    const/4 v4, 0x2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_2d
    :goto_2d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_74

    const/16 v4, 0x3c

    if-ge v3, v4, :cond_74

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "zalith"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5b

    const-string v5, "minecraft"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5b

    const-string v5, "knot"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5b

    const-string v5, "net.minecraft"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2d

    :cond_5b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    :cond_74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_7d

    const-string v0, "ps empty (need root)"

    return-object v0

    :cond_7d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_81} :catch_82

    return-object v0

    :catch_82
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ps err "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method fetch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    .line 35
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[*] fetching "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    .line 36
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 38
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 39
    const/16 v2, 0x3a98

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 40
    const-string v2, "User-Agent"

    const-string v3, "Mozilla/5.0"

    invoke-virtual {p1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[*] http "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    .line 43
    const/16 v3, 0x190

    if-lt v2, v3, :cond_70

    return v0

    .line 44
    :cond_70
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 45
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 46
    const/16 v3, 0x2000

    new-array v3, v3, [B

    const-wide/16 v4, 0x0

    .line 47
    :goto_7f
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_8c

    invoke-virtual {v2, v3, v0, v6}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v6, v6

    add-long/2addr v4, v6

    goto :goto_7f

    .line 48
    :cond_8c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[*] saved "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " bytes -> "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b2} :catch_ba

    .line 50
    const-wide/16 p1, 0x3e8

    cmp-long v2, v4, p1

    if-lez v2, :cond_b9

    const/4 v0, 0x1

    :cond_b9
    return v0

    .line 51
    :catch_ba
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[-] fetch fail "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    return v0
.end method

.method getMinecraftPid()I
    .registers 15

    .line 32
    const-string v0, "\\s+"

    const-string v1, "ps -A"

    const-string v2, "-c"

    const-string v3, "su"

    const/16 v4, 0x64

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    :try_start_e
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    new-array v10, v6, [Ljava/lang/String;

    aput-object v3, v10, v8

    aput-object v2, v10, v7

    aput-object v1, v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v9

    new-instance v10, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v11, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_2c
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_68

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, ":game"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4e

    const-string v12, "knot"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4e

    const-string v12, "net.minecraft"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2c

    :cond_4e
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v11, v9

    const/4 v12, 0x0

    :goto_58
    if-ge v12, v11, :cond_2c

    aget-object v13, v9, v12
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_5c} :catch_67

    :try_start_5c
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_60} :catch_63

    if-le v13, v4, :cond_64

    return v13

    :catch_63
    move-exception v13

    :cond_64
    add-int/lit8 v12, v12, 0x1

    goto :goto_58

    :catch_67
    move-exception v9

    :cond_68
    :try_start_68
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    new-array v6, v6, [Ljava/lang/String;

    aput-object v3, v6, v8

    aput-object v2, v6, v7

    aput-object v1, v6, v5

    invoke-virtual {v9, v6}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_86
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_ae

    const-string v3, "com.movtery.zalithlauncher.v2:game"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_86

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v5, 0x0

    :goto_9e
    if-ge v5, v3, :cond_86

    aget-object v6, v1, v5
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_a2} :catch_ad

    :try_start_a2
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_a6} :catch_a9

    if-le v6, v4, :cond_aa

    return v6

    :catch_a9
    move-exception v6

    :cond_aa
    add-int/lit8 v5, v5, 0x1

    goto :goto_9e

    :catch_ad
    move-exception v0

    :cond_ae
    const/4 v0, -0x1

    return v0
.end method

.method getPid(Ljava/lang/String;)I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 24
    const-string v0, "\\s+"

    const-string v1, "[ ]+"

    const-string v2, "-c"

    const-string v3, "su"

    const-string v4, "zalith"

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_d
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    new-array v9, v5, [Ljava/lang/String;

    const-string v10, "pidof"

    aput-object v10, v9, v7

    aput-object p1, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v8

    new-instance v9, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v8}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v10, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_47

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_47

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_45} :catch_46

    return p1

    :catch_46
    move-exception v8

    .line 25
    :cond_47
    const/4 v8, 0x3

    :try_start_48
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    new-array v10, v8, [Ljava/lang/String;

    aput-object v3, v10, v7

    aput-object v2, v10, v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "pidof "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v9

    new-instance v10, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v11, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_95

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_95

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v7

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_93} :catch_94

    return p1

    :catch_94
    move-exception v1

    .line 26
    :cond_95
    const/16 v1, 0x64

    :try_start_97
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    new-array v10, v5, [Ljava/lang/String;

    const-string v11, "ps"

    aput-object v11, v10, v7

    const-string v11, "-A"

    aput-object v11, v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v9

    new-instance v10, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v11, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_b7
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_ef

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_d5

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_b7

    :cond_d5
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v11, v9

    const/4 v12, 0x0

    :goto_df
    if-ge v12, v11, :cond_b7

    aget-object v13, v9, v12
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_e3} :catch_ee

    :try_start_e3
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_e7} :catch_ea

    if-le v13, v1, :cond_eb

    return v13

    :catch_ea
    move-exception v13

    :cond_eb
    add-int/lit8 v12, v12, 0x1

    goto :goto_df

    :catch_ee
    move-exception v9

    .line 27
    :cond_ef
    :try_start_ef
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    new-array v8, v8, [Ljava/lang/String;

    aput-object v3, v8, v7

    aput-object v2, v8, v6

    const-string v2, "ps -A"

    aput-object v2, v8, v5

    invoke-virtual {v9, v8}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_10f
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_147

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_12d

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10f

    :cond_12d
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v5, v2

    const/4 v6, 0x0

    :goto_137
    if-ge v6, v5, :cond_10f

    aget-object v8, v2, v6
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_13b} :catch_146

    :try_start_13b
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_13f
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_13f} :catch_142

    if-le v8, v1, :cond_143

    return v8

    :catch_142
    move-exception v8

    :cond_143
    add-int/lit8 v6, v6, 0x1

    goto :goto_137

    :catch_146
    move-exception v0

    .line 28
    :cond_147
    :try_start_147
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/doomsday/injector/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_157
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_177

    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_157

    :cond_177
    iget p1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I
    :try_end_179
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_179} :catch_17a

    return p1

    :catch_17a
    move-exception p1

    .line 29
    :cond_17b
    const/4 p1, -0x1

    return p1
.end method

.method synthetic lambda$append$0$com-doomsday-injector-MainActivity(Ljava/lang/String;)V
    .registers 4

    .line 22
    iget-object v0, p0, Lcom/doomsday/injector/MainActivity;->log:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$doInject$1$com-doomsday-injector-MainActivity()V
    .registers 27

    .line 56
    move-object/from16 v1, p0

    const-string v2, " && chcon u:object_r:app_data_file:s0 "

    const-string v3, " && chcon u:object_r:tmpfs:s0 "

    const-string v4, ".so"

    const-string v0, "/libdoomsday.so"

    const-string v5, "755"

    const-string v6, "chmod"

    const-string v7, "/injector_arm64"

    const-string v8, " && chmod 755 "

    const-string v9, "/libdoomsday.so "

    const-string v10, "cp "

    const-string v11, "-c"

    const-string v12, "su"

    :try_start_1a
    invoke-virtual/range {p0 .. p0}, Lcom/doomsday/injector/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    .line 57
    iget-object v14, v1, Lcom/doomsday/injector/MainActivity;->urlBox:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 58
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_38

    iget-object v14, v1, Lcom/doomsday/injector/MainActivity;->defaultUrl:Ljava/lang/String;

    .line 59
    :cond_38
    const-string v15, "[*] extracting bundled fallback..."

    invoke-virtual {v1, v15}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/doomsday/injector/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v15
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_41} :catch_566

    :try_start_41
    const-string v1, "injector_arm64"

    invoke-virtual {v15, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    new-instance v15, Ljava/io/FileOutputStream;

    move-object/from16 v16, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v15, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x2000

    new-array v4, v4, [B

    :goto_63
    move-object/from16 v17, v14

    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v14

    move-object/from16 v18, v2

    const/4 v2, -0x1

    move-object/from16 v19, v3

    const/4 v3, 0x0

    if-eq v14, v2, :cond_7b

    invoke-virtual {v15, v4, v3, v14}, Ljava/io/FileOutputStream;->write([BII)V

    move-object/from16 v14, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    goto :goto_63

    :cond_7b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const/4 v14, 0x3

    new-array v15, v14, [Ljava/lang/String;

    aput-object v6, v15, v3

    const/16 v20, 0x1

    aput-object v5, v15, v20

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v14, 0x2

    aput-object v7, v15, v14

    invoke-virtual {v1, v15}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/doomsday/injector/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v7, "libdoomsday.so"

    invoke-virtual {v1, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    new-instance v7, Ljava/io/FileOutputStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v7, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    :goto_c9
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v15

    if-eq v15, v2, :cond_d3

    invoke-virtual {v7, v4, v3, v15}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_c9

    :cond_d3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const/4 v4, 0x3

    new-array v7, v4, [Ljava/lang/String;

    aput-object v6, v7, v3

    aput-object v5, v7, v20

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v14

    invoke-virtual {v1, v7}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/libdoomsday_tmp.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "/data/data/com.movtery.zalithlauncher.v2/files/libdoomsday.so"

    const-string v5, "/data/local/tmp/libdoomsday.so"
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_115} :catch_562

    .line 63
    :try_start_115
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/String;

    aput-object v12, v7, v3

    aput-object v11, v7, v20

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_13d} :catch_157

    move-object/from16 v15, v19

    :try_start_13f
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v14

    invoke-virtual {v0, v7}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_154
    .catch Ljava/lang/Exception; {:try_start_13f .. :try_end_154} :catch_155

    goto :goto_15a

    :catch_155
    move-exception v0

    goto :goto_15a

    :catch_157
    move-exception v0

    move-object/from16 v15, v19

    .line 64
    :goto_15a
    :try_start_15a
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/String;

    aput-object v12, v7, v3

    aput-object v11, v7, v20

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6
    :try_end_182
    .catch Ljava/lang/Exception; {:try_start_15a .. :try_end_182} :catch_19c

    move-object/from16 v2, v18

    :try_start_184
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v14

    invoke-virtual {v0, v7}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_199
    .catch Ljava/lang/Exception; {:try_start_184 .. :try_end_199} :catch_19a

    goto :goto_19f

    :catch_19a
    move-exception v0

    goto :goto_19f

    :catch_19c
    move-exception v0

    move-object/from16 v2, v18

    .line 65
    :goto_19f
    :try_start_19f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "/doomsday-latest.jar"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v0, "/data/local/tmp/DoomsDay.jar"

    .line 66
    nop

    .line 67
    move-object/from16 v14, v16

    move-object/from16 v7, v17

    invoke-virtual {v7, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17
    :try_end_1bd
    .catch Ljava/lang/Exception; {:try_start_19f .. :try_end_1bd} :catch_562

    const-string v3, " 2>/dev/null"

    move-object/from16 v21, v5

    const-string v5, " 2>/dev/null; cp "

    move-object/from16 v22, v2

    const-string v2, " 2>/dev/null; chmod 755 "

    move-object/from16 v23, v15

    const-string v15, " "

    if-eqz v17, :cond_223

    .line 68
    move-object/from16 v14, p0

    :try_start_1cf
    invoke-virtual {v14, v7, v1}, Lcom/doomsday/injector/MainActivity;->fetch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7
    :try_end_1d3
    .catch Ljava/lang/Exception; {:try_start_1cf .. :try_end_1d3} :catch_562

    .line 69
    if-eqz v7, :cond_217

    :try_start_1d5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0
    :try_end_1d9
    .catch Ljava/lang/Exception; {:try_start_1d5 .. :try_end_1d9} :catch_216

    move/from16 v17, v7

    const/4 v7, 0x3

    :try_start_1dc
    new-array v14, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v12, v14, v7

    aput-object v11, v14, v20

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v16, 0x2

    aput-object v7, v14, v16

    invoke-virtual {v0, v14}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_213
    .catch Ljava/lang/Exception; {:try_start_1dc .. :try_end_213} :catch_214

    goto :goto_219

    :catch_214
    move-exception v0

    goto :goto_219

    :catch_216
    move-exception v0

    :cond_217
    move/from16 v17, v7

    .line 81
    :goto_219
    move-object/from16 v25, v3

    move/from16 v7, v17

    move-object/from16 v17, v2

    move-object/from16 v2, p0

    goto/16 :goto_2bc

    .line 71
    :cond_223
    move-object/from16 v17, v2

    move-object/from16 v2, p0

    :try_start_227
    invoke-virtual {v2, v7, v6}, Lcom/doomsday/injector/MainActivity;->fetch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v24

    .line 72
    if-eqz v24, :cond_2a7

    .line 73
    const-string v7, "[*] got jar, will use dex inject via frida helper if ptrace fails"

    invoke-virtual {v2, v7}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V
    :try_end_232
    .catch Ljava/lang/Exception; {:try_start_227 .. :try_end_232} :catch_560

    .line 74
    :try_start_232
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7
    :try_end_236
    .catch Ljava/lang/Exception; {:try_start_232 .. :try_end_236} :catch_274

    move-object/from16 v25, v3

    const/4 v14, 0x3

    :try_start_239
    new-array v3, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v12, v3, v14

    aput-object v11, v3, v20

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " /data/local/tmp/doomsday.dex 2>/dev/null"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x2

    aput-object v0, v3, v14

    invoke-virtual {v7, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_271
    .catch Ljava/lang/Exception; {:try_start_239 .. :try_end_271} :catch_272

    goto :goto_277

    :catch_272
    move-exception v0

    goto :goto_277

    :catch_274
    move-exception v0

    move-object/from16 v25, v3

    .line 75
    :goto_277
    :try_start_277
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v3, 0x3

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v12, v7, v3

    aput-object v11, v7, v20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, " /data/data/com.movtery.zalithlauncher.v2/files/DoomsDay.jar && chmod 644 /data/data/com.movtery.zalithlauncher.v2/files/DoomsDay.jar"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v14, 0x2

    aput-object v3, v7, v14

    invoke-virtual {v0, v7}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_2a4
    .catch Ljava/lang/Exception; {:try_start_277 .. :try_end_2a4} :catch_2a5

    goto :goto_2ba

    :catch_2a5
    move-exception v0

    goto :goto_2ba

    .line 77
    :cond_2a7
    move-object/from16 v25, v3

    :try_start_2a9
    const-string v0, ".jar"

    invoke-virtual {v7, v0, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2ba

    invoke-virtual {v2, v0, v1}, Lcom/doomsday/injector/MainActivity;->fetch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    goto :goto_2bc

    .line 81
    :cond_2ba
    :goto_2ba
    move/from16 v7, v24

    :goto_2bc
    if-nez v7, :cond_340

    .line 82
    const-string v0, "[*] fetch failed, using bundled libdoomsday.so"

    invoke-virtual {v2, v0}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V
    :try_end_2c3
    .catch Ljava/lang/Exception; {:try_start_2a9 .. :try_end_2c3} :catch_560

    .line 83
    :try_start_2c3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v3, 0x3

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v12, v7, v3

    aput-object v11, v7, v20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v14, v23

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v14, 0x2

    aput-object v3, v7, v14

    invoke-virtual {v0, v7}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_304
    .catch Ljava/lang/Exception; {:try_start_2c3 .. :try_end_304} :catch_305

    goto :goto_306

    :catch_305
    move-exception v0

    .line 84
    :goto_306
    :try_start_306
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v3, 0x3

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v12, v7, v3

    aput-object v11, v7, v20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v14, 0x2

    aput-object v3, v7, v14

    invoke-virtual {v0, v7}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_33d
    .catch Ljava/lang/Exception; {:try_start_306 .. :try_end_33d} :catch_33e

    goto :goto_361

    :catch_33e
    move-exception v0

    goto :goto_361

    .line 85
    :cond_340
    :try_start_340
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_361

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[+] using fresh "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V
    :try_end_361
    .catch Ljava/lang/Exception; {:try_start_340 .. :try_end_361} :catch_560

    .line 88
    :cond_361
    :goto_361
    :try_start_361
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v3, 0x3

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v12, v7, v3

    aput-object v11, v7, v20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, " 2>/dev/null && chmod 755 "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v14, v22

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3
    :try_end_396
    .catch Ljava/lang/Exception; {:try_start_361 .. :try_end_396} :catch_3ae

    move-object/from16 v14, v25

    :try_start_398
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v16, 0x2

    aput-object v3, v7, v16

    invoke-virtual {v0, v7}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_3ab
    .catch Ljava/lang/Exception; {:try_start_398 .. :try_end_3ab} :catch_3ac

    goto :goto_3b1

    :catch_3ac
    move-exception v0

    goto :goto_3b1

    :catch_3ae
    move-exception v0

    move-object/from16 v14, v25

    .line 89
    :goto_3b1
    :try_start_3b1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v3, 0x3

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v12, v7, v3

    aput-object v11, v7, v20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v8, v17

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v3, v21

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v7, v3

    invoke-virtual {v0, v7}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_420
    .catch Ljava/lang/Exception; {:try_start_3b1 .. :try_end_420} :catch_421

    goto :goto_422

    :catch_421
    move-exception v0

    .line 90
    :goto_422
    :try_start_422
    iget-object v0, v2, Lcom/doomsday/injector/MainActivity;->manualPidBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lcom/doomsday/injector/MainActivity;->pkg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3
    :try_end_436
    .catch Ljava/lang/Exception; {:try_start_422 .. :try_end_436} :catch_560

    const-string v5, "manual"

    if-nez v3, :cond_441

    :try_start_43a
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_43e
    .catch Ljava/lang/Exception; {:try_start_43a .. :try_end_43e} :catch_440

    move-object v1, v5

    goto :goto_442

    :catch_440
    move-exception v0

    :cond_441
    const/4 v0, -0x1

    :goto_442
    const/4 v3, -0x1

    if-ne v0, v3, :cond_449

    :try_start_445
    invoke-virtual {v2, v1}, Lcom/doomsday/injector/MainActivity;->getPid(Ljava/lang/String;)I

    move-result v0

    :cond_449
    if-ne v0, v3, :cond_457

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_457

    iget-object v1, v2, Lcom/doomsday/injector/MainActivity;->altPkg:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/doomsday/injector/MainActivity;->getPid(Ljava/lang/String;)I

    move-result v0

    .line 91
    :cond_457
    const/4 v3, -0x1

    if-ne v0, v3, :cond_460

    const-string v0, "[-] Zalith not running. Open Zalith then Play then inject."

    invoke-virtual {v2, v0}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    return-void

    .line 92
    :cond_460
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[*] target "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " pid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    .line 93
    nop

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/injector_arm64 "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[*] exec: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    .line 96
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v12, v4, v5

    aput-object v11, v4, v20

    const/4 v5, 0x2

    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 97
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 98
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 99
    :goto_4e5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4ef

    invoke-virtual {v2, v5}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    goto :goto_4e5

    .line 100
    :cond_4ef
    :goto_4ef
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4f9

    invoke-virtual {v2, v3}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    goto :goto_4ef

    .line 101
    :cond_4f9
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[*] injector exit "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    .line 103
    if-eqz v0, :cond_55a

    .line 104
    const-string v0, "[*] ptrace failed (no root?). Trying Frida dex inject for jar..."

    invoke-virtual {v2, v0}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    .line 105
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_554

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "frida -U -f "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -l /data/local/tmp/doomsday_zalith.js --no-pause"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[*] "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    .line 109
    :cond_554
    const-string v0, "[-] Need root for native. Without root use Repack or Frida."

    invoke-virtual {v2, v0}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    goto :goto_55f

    .line 110
    :cond_55a
    const-string v0, "[+] injected! logcat -s DOOMSDAY"

    invoke-virtual {v2, v0}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V
    :try_end_55f
    .catch Ljava/lang/Exception; {:try_start_445 .. :try_end_55f} :catch_560

    .line 111
    :goto_55f
    goto :goto_592

    :catch_560
    move-exception v0

    goto :goto_568

    :catch_562
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_568

    :catch_566
    move-exception v0

    move-object v2, v1

    :goto_568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[-] "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    .line 112
    :goto_592
    return-void
.end method

.method synthetic lambda$doWrap$2$com-doomsday-injector-MainActivity()V
    .registers 13

    .line 117
    const-string v0, "-c"

    const-string v1, "su"

    :try_start_4
    invoke-virtual {p0}, Lcom/doomsday/injector/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 118
    const-string v3, "/data/local/tmp/libdoomsday.so"

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/libdoomsday.so"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_21} :catch_1a0

    .line 120
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x3

    :try_start_25
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    new-array v9, v7, [Ljava/lang/String;

    aput-object v1, v9, v6

    aput-object v0, v9, v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cp "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, " "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, " && chmod 755 "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, " && chcon u:object_r:tmpfs:s0 "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_69} :catch_6a

    goto :goto_6b

    :catch_6a
    move-exception v2

    .line 121
    :goto_6b
    :try_start_6b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[*] wrap LD_PRELOAD="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    .line 122
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-array v8, v7, [Ljava/lang/String;

    aput-object v1, v8, v6

    aput-object v0, v8, v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setprop wrap."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/doomsday/injector/MainActivity;->pkg:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " \'LD_PRELOAD="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "\'"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v4

    invoke-virtual {v2, v8}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 123
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 124
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 125
    :goto_d2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_dc

    invoke-virtual {p0, v9}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    goto :goto_d2

    .line 126
    :cond_dc
    :goto_dc
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e6

    invoke-virtual {p0, v3}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    goto :goto_dc

    .line 127
    :cond_e6
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 128
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/String;

    aput-object v1, v3, v6

    aput-object v0, v3, v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getprop wrap."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/doomsday/injector/MainActivity;->pkg:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 129
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 130
    :goto_11c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_139

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[*] wrap prop: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    goto :goto_11c

    .line 131
    :cond_139
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[*] force-stop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/doomsday/injector/MainActivity;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    .line 133
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/String;

    aput-object v1, v3, v6

    aput-object v0, v3, v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "am force-stop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/doomsday/injector/MainActivity;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 134
    const-string v0, "[+] WRAP set. Now launch Zalith again manually \u2014 lib will auto-load. Check logcat -s DOOMSDAY"

    invoke-virtual {p0, v0}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[*] to undo: su -c \'setprop wrap."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/doomsday/injector/MainActivity;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'\'\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V
    :try_end_19f
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_19f} :catch_1a0

    .line 136
    goto :goto_1b7

    :catch_1a0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[-] wrap fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    .line 137
    :goto_1b7
    return-void
.end method

.method synthetic lambda$onCreate$10$com-doomsday-injector-MainActivity(Landroid/view/View;)V
    .registers 3

    .line 191
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/doomsday/injector/MainActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/doomsday/injector/MainActivity$$ExternalSyntheticLambda6;-><init>(Lcom/doomsday/injector/MainActivity;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method synthetic lambda$onCreate$3$com-doomsday-injector-MainActivity()V
    .registers 17

    .line 185
    move-object/from16 v1, p0

    const-string v2, " "

    const-string v3, "cp "

    const-string v4, "755"

    const-string v5, "chmod"

    const-string v6, "/libdoomsday.so"

    const-string v0, "/injector_arm64"

    const-string v7, "-c"

    const-string v8, "su"

    :try_start_12
    invoke-virtual/range {p0 .. p0}, Lcom/doomsday/injector/MainActivity;->getMinecraftPid()I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_34

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[-] Minecraft child not found. Start Zalith -> Play -> wait for world, then tap again.\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/doomsday/injector/MainActivity;->dumpPs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    return-void

    :cond_34
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[*] Minecraft child pid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/doomsday/injector/MainActivity;->dumpPs()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/doomsday/injector/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_60} :catch_265

    const/16 v12, 0x2000

    :try_start_62
    invoke-virtual/range {p0 .. p0}, Lcom/doomsday/injector/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v14

    const-string v15, "injector_arm64"

    invoke-virtual {v14, v15}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14

    new-instance v15, Ljava/io/FileOutputStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v15, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    new-array v13, v12, [B

    :goto_84
    invoke-virtual {v14, v13}, Ljava/io/InputStream;->read([B)I

    move-result v12

    if-eq v12, v10, :cond_92

    const/4 v10, 0x0

    invoke-virtual {v15, v13, v10, v12}, Ljava/io/FileOutputStream;->write([BII)V

    const/4 v10, -0x1

    const/16 v12, 0x2000

    goto :goto_84

    :cond_92
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    const/4 v12, 0x3

    new-array v13, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v5, v13, v12

    const/4 v12, 0x1

    aput-object v4, v13, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x2

    aput-object v0, v13, v12

    invoke-virtual {v10, v13}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_c0} :catch_c1

    goto :goto_d8

    :catch_c1
    move-exception v0

    :try_start_c2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[-] extract injector fail "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_d8} :catch_265

    :goto_d8
    :try_start_d8
    invoke-virtual/range {p0 .. p0}, Lcom/doomsday/injector/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v10, "libdoomsday.so"

    invoke-virtual {v0, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v10, Ljava/io/FileOutputStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v12, 0x2000

    new-array v12, v12, [B

    :goto_fc
    invoke-virtual {v0, v12}, Ljava/io/InputStream;->read([B)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_108

    const/4 v15, 0x0

    invoke-virtual {v10, v12, v15, v13}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_fc

    :cond_108
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v10, 0x3

    new-array v12, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v5, v12, v10

    const/4 v5, 0x1

    aput-object v4, v12, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v12, v5

    invoke-virtual {v0, v12}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_136
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_136} :catch_137

    goto :goto_138

    :catch_137
    move-exception v0

    :goto_138
    :try_start_138
    const-string v4, "/data/data/com.movtery.zalithlauncher.v2/files/libdoomsday.so"

    const-string v5, "/data/local/tmp/libdoomsday.so"
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_138 .. :try_end_13c} :catch_265

    :try_start_13c
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v6, 0x3

    new-array v10, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v8, v10, v6

    const/4 v6, 0x1

    aput-object v7, v10, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, "/libdoomsday.so "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " && chmod 755 "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " && chcon u:object_r:app_data_file:s0 "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x2

    aput-object v6, v10, v12

    invoke-virtual {v0, v10}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_182
    .catch Ljava/lang/Exception; {:try_start_13c .. :try_end_182} :catch_183

    goto :goto_184

    :catch_183
    move-exception v0

    :goto_184
    :try_start_184
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v6, 0x3

    new-array v10, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v8, v10, v6

    const/4 v6, 0x1

    aput-object v7, v10, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " 2>/dev/null; chmod 755 "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " 2>/dev/null"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v10, v5

    invoke-virtual {v0, v10}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_1c4
    .catch Ljava/lang/Exception; {:try_start_184 .. :try_end_1c4} :catch_1c5

    goto :goto_1c6

    :catch_1c5
    move-exception v0

    :goto_1c6
    :try_start_1c6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/injector_arm64 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[*] exec: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v8, v3, v4

    const/4 v4, 0x1

    aput-object v7, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_22b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_235

    invoke-virtual {v1, v4}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    goto :goto_22b

    :cond_235
    :goto_235
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_23f

    invoke-virtual {v1, v2}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    goto :goto_235

    :cond_23f
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[*] child injector exit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_257

    const-string v0, " [+] injected child (SS-proof)"

    goto :goto_259

    :cond_257
    const-string v0, " [-] failed"

    :goto_259
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V
    :try_end_264
    .catch Ljava/lang/Exception; {:try_start_1c6 .. :try_end_264} :catch_265

    goto :goto_27c

    :catch_265
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[-] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    :goto_27c
    return-void
.end method

.method synthetic lambda$onCreate$4$com-doomsday-injector-MainActivity(Landroid/view/View;)V
    .registers 3

    .line 185
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/doomsday/injector/MainActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/doomsday/injector/MainActivity$$ExternalSyntheticLambda9;-><init>(Lcom/doomsday/injector/MainActivity;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 186
    return-void
.end method

.method synthetic lambda$onCreate$5$com-doomsday-injector-MainActivity(Landroid/view/View;)V
    .registers 2

    .line 187
    invoke-virtual {p0}, Lcom/doomsday/injector/MainActivity;->doInject()V

    return-void
.end method

.method synthetic lambda$onCreate$6$com-doomsday-injector-MainActivity(Landroid/view/View;)V
    .registers 2

    .line 188
    invoke-virtual {p0}, Lcom/doomsday/injector/MainActivity;->doWrap()V

    return-void
.end method

.method synthetic lambda$onCreate$7$com-doomsday-injector-MainActivity()V
    .registers 10

    .line 190
    const-string v0, "-c"

    const-string v1, "su"

    :try_start_4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v6, 0x1

    aput-object v0, v4, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resetprop -p wrap."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/doomsday/injector/MainActivity;->pkg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " --delete"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v4, v8

    invoke-virtual {v2, v4}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v5

    aput-object v0, v3, v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setprop wrap."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/doomsday/injector/MainActivity;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    const-string v0, "[*] wrap cleared"

    invoke-virtual {p0, v0}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_69} :catch_6a

    goto :goto_6b

    :catch_6a
    move-exception v0

    :goto_6b
    return-void
.end method

.method synthetic lambda$onCreate$8$com-doomsday-injector-MainActivity(Landroid/view/View;)V
    .registers 3

    .line 190
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/doomsday/injector/MainActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/doomsday/injector/MainActivity$$ExternalSyntheticLambda5;-><init>(Lcom/doomsday/injector/MainActivity;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method synthetic lambda$onCreate$9$com-doomsday-injector-MainActivity()V
    .registers 6

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/doomsday/injector/MainActivity;->pkg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/doomsday/injector/MainActivity;->getPid(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/doomsday/injector/MainActivity;->altPkg:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/doomsday/injector/MainActivity;->getPid(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/doomsday/injector/MainActivity;->getMinecraftPid()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launcher "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/doomsday/injector/MainActivity;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " alt="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " child="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/doomsday/injector/MainActivity;->dumpPs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_54} :catch_55

    goto :goto_6c

    :catch_55
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    :goto_6c
    return-void
.end method

.method makePrimary(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;
    .registers 9

    .line 208
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    const-string v1, "sans-serif-black"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x3cf5c28f    # 0.03f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLetterSpacing(F)V

    invoke-virtual {p0}, Lcom/doomsday/injector/MainActivity;->btnBgBlue()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    const/16 v2, 0x12

    invoke-virtual {p0, v2}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v3

    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v5

    invoke-virtual {p0, v2}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v2

    invoke-virtual {p0, v4}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v4

    invoke-virtual {v0, v3, v5, v2, v4}, Landroid/widget/Button;->setPadding(IIII)V

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setElevation(F)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, p1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result p1

    invoke-virtual {v2, v1, v1, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method makeSecondary(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;
    .registers 8

    .line 209
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const p1, -0x3d3725

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    const/high16 p1, 0x41300000    # 11.0f

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextSize(F)V

    const-string p1, "sans-serif-medium"

    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    const p1, 0x3ca3d70a    # 0.02f

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setLetterSpacing(F)V

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v2, 0x1affffff

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {p0, v1}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v1

    const v2, 0x12ffffff

    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAllCaps(Z)V

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v2

    const/16 v3, 0xd

    invoke-virtual {p0, v3}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v4

    invoke-virtual {p0, v1}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v1

    invoke-virtual {p0, v3}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v3

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/widget/Button;->setPadding(IIII)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v2

    invoke-virtual {v1, p1, p1, p1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method makeSmallButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;
    .registers 8

    .line 210
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const p1, -0x756f58

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    const/high16 p1, 0x41200000    # 10.0f

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextSize(F)V

    const-string p1, "sans-serif-medium"

    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    const p1, 0x3d75c28f    # 0.06f

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setLetterSpacing(F)V

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v2, 0xfffffff

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v2, 0x14

    invoke-virtual {p0, v2}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {p0, v1}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v1

    const v2, 0x12ffffff

    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAllCaps(Z)V

    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v2

    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v4

    invoke-virtual {p0, v1}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v1

    invoke-virtual {p0, v3}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v3

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/widget/Button;->setPadding(IIII)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, p1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v3

    invoke-virtual {p0, v2}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v2

    invoke-virtual {v1, v3, p1, v2, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 18

    .line 140
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/doomsday/injector/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, -0xf8f5ee

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 143
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 144
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 145
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 146
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const v5, 0x332f6bff

    const v6, 0x70812

    filled-new-array {v5, v6}, [I

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 147
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    const/16 v5, 0x1a4

    invoke-virtual {v0, v5}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 148
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 149
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x384

    invoke-virtual {v0, v5}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v5

    const/16 v6, 0x258

    invoke-virtual {v0, v6}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v6

    invoke-direct {v3, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x31

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v5, 0xb4

    invoke-virtual {v0, v5}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v5

    neg-int v5, v5

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 150
    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 152
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v5, 0x116ecbff

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v5, 0x12c

    invoke-virtual {v0, v5}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 153
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v6, 0x208

    invoke-virtual {v0, v6}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v7

    invoke-virtual {v0, v6}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v6

    invoke-direct {v5, v7, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v6, 0x800035

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v6, 0x78

    invoke-virtual {v0, v6}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v7

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v6}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v6

    neg-int v6, v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 154
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 156
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v6, 0x12

    invoke-virtual {v0, v6}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v7

    invoke-virtual {v0, v6}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v8

    invoke-virtual {v0, v6}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v9

    invoke-virtual {v0, v6}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v10

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 158
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v6}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v8

    invoke-virtual {v0, v6}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v9

    invoke-virtual {v0, v6}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v10

    invoke-virtual {v0, v6}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v6

    invoke-virtual {v7, v8, v9, v10, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual/range {p0 .. p0}, Lcom/doomsday/injector/MainActivity;->cardBgStrong()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v3}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 159
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v8, 0x10

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 160
    new-instance v9, Landroid/view/View;

    invoke-direct {v9, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/graphics/drawable/GradientDrawable;

    sget-object v11, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const v12, -0xd09401

    const v13, -0xb27501

    filled-new-array {v12, v13}, [I

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/16 v11, 0xc

    invoke-virtual {v0, v11}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v10, v12}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 161
    new-instance v10, Landroid/widget/FrameLayout;

    invoke-direct {v10, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v13, 0x28

    invoke-virtual {v0, v13}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v14

    invoke-virtual {v0, v13}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v15

    invoke-direct {v12, v14, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v9, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v12, "\u25c6"

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v12, -0x1

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v14, 0x41900000    # 18.0f

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v14, 0x11

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v13}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v15

    invoke-virtual {v0, v13}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v13

    invoke-direct {v14, v15, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v9, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 164
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v11}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v10

    invoke-virtual {v9, v10, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 165
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v13, "nova"

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v13, -0x70501

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v14, 0x41a00000    # 20.0f

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v14, "sans-serif"

    invoke-static {v14, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v14, 0x3ca3d70a    # 0.02f

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setLetterSpacing(F)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 166
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v14, "DOOMSDAY \u2022 FINTECH INJECTOR"

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v14, -0x756f58

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v15, 0x41100000    # 9.0f

    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setTextSize(F)V

    const v11, 0x3e0f5c29    # 0.14f

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setLetterSpacing(F)V

    const-string v13, "sans-serif-medium"

    invoke-static {v13, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 167
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 168
    new-instance v9, Landroid/view/View;

    invoke-direct {v9, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v10, v3, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 169
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v10, "\u25cf  PREMIUM"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v10, -0xff198a

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {v13, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v10, 0xa

    invoke-virtual {v0, v10}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v11

    const/4 v15, 0x5

    invoke-virtual {v0, v15}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v14

    invoke-virtual {v0, v10}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v10

    invoke-virtual {v0, v15}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v15

    invoke-virtual {v9, v11, v14, v10, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v10, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v11, 0x1a00e676

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v11, 0x14

    invoke-virtual {v0, v11}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v0, v4}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v11

    const v14, 0x3300e676

    invoke-virtual {v10, v11, v14}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 170
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 171
    new-instance v6, Landroid/view/View;

    invoke-direct {v6, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v9, 0x12ffffff

    invoke-virtual {v6, v9}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v4}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v11

    invoke-direct {v10, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v11, 0xe

    invoke-virtual {v0, v11}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v14

    invoke-virtual {v0, v11}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v15

    invoke-virtual {v10, v3, v14, v3, v15}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 172
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 173
    const-string v10, "A15"

    const-string v14, "16KB \u2022 root"

    invoke-virtual {v0, v6, v10, v14}, Lcom/doomsday/injector/MainActivity;->addStat(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "TARGET"

    const-string v14, "Movtery V2"

    invoke-virtual {v0, v6, v10, v14}, Lcom/doomsday/injector/MainActivity;->addStat(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "MODE"

    const-string v14, "SS-proof"

    invoke-virtual {v0, v6, v10, v14}, Lcom/doomsday/injector/MainActivity;->addStat(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 175
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v8}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/doomsday/injector/MainActivity;->addSpace(Landroid/widget/LinearLayout;I)V

    .line 177
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v8}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v7

    invoke-virtual {v0, v8}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v10

    invoke-virtual {v0, v8}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v14

    invoke-virtual {v0, v8}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v15

    invoke-virtual {v6, v7, v10, v14, v15}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual/range {p0 .. p0}, Lcom/doomsday/injector/MainActivity;->cardBg()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 178
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v10, "DOOMSDAY SOURCE"

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v10, -0x756f58

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v10, 0x41100000    # 9.0f

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextSize(F)V

    const v10, 0x3e0f5c29    # 0.14f

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setLetterSpacing(F)V

    invoke-static {v13, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 179
    new-instance v7, Landroid/widget/EditText;

    invoke-direct {v7, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/doomsday/injector/MainActivity;->urlBox:Landroid/widget/EditText;

    iget-object v10, v0, Lcom/doomsday/injector/MainActivity;->defaultUrl:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v0, Lcom/doomsday/injector/MainActivity;->urlBox:Landroid/widget/EditText;

    const v10, -0x70501

    invoke-virtual {v7, v10}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v7, v0, Lcom/doomsday/injector/MainActivity;->urlBox:Landroid/widget/EditText;

    const v10, -0xa5a5a0

    invoke-virtual {v7, v10}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v7, v0, Lcom/doomsday/injector/MainActivity;->urlBox:Landroid/widget/EditText;

    const/high16 v14, 0x41300000    # 11.0f

    invoke-virtual {v7, v14}, Landroid/widget/EditText;->setTextSize(F)V

    iget-object v7, v0, Lcom/doomsday/injector/MainActivity;->urlBox:Landroid/widget/EditText;

    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, v0, Lcom/doomsday/injector/MainActivity;->urlBox:Landroid/widget/EditText;

    const/16 v15, 0x8

    invoke-virtual {v0, v15}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v15

    invoke-virtual {v7, v3, v15, v3, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v7, v0, Lcom/doomsday/injector/MainActivity;->urlBox:Landroid/widget/EditText;

    invoke-virtual {v7, v4}, Landroid/widget/EditText;->setSingleLine(Z)V

    iget-object v7, v0, Lcom/doomsday/injector/MainActivity;->urlBox:Landroid/widget/EditText;

    sget-object v15, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v15}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v7, v0, Lcom/doomsday/injector/MainActivity;->urlBox:Landroid/widget/EditText;

    sget-object v15, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v7, v15}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v7, v0, Lcom/doomsday/injector/MainActivity;->urlBox:Landroid/widget/EditText;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 180
    new-instance v7, Landroid/view/View;

    invoke-direct {v7, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v9}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v4}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v14

    invoke-direct {v15, v12, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 181
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v14, "Auto-fetches latest jar on inject  \u2022  edit if CDN changes"

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v14, -0x959590

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v14, 0x41100000    # 9.0f

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v14, 0x8

    invoke-virtual {v0, v14}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v14

    invoke-virtual {v7, v3, v14, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 182
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v11}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/doomsday/injector/MainActivity;->addSpace(Landroid/widget/LinearLayout;I)V

    .line 184
    new-instance v6, Lcom/doomsday/injector/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0}, Lcom/doomsday/injector/MainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/doomsday/injector/MainActivity;)V

    const-string v7, "INJECT MINECRAFT CHILD  \u2014  SS-PROOF"

    invoke-virtual {v0, v7, v6}, Lcom/doomsday/injector/MainActivity;->makePrimary(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v6

    .line 186
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 187
    new-instance v6, Lcom/doomsday/injector/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v6, v0}, Lcom/doomsday/injector/MainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/doomsday/injector/MainActivity;)V

    const-string v7, "FETCH + INJECT  (legacy ptrace)"

    invoke-virtual {v0, v7, v6}, Lcom/doomsday/injector/MainActivity;->makeSecondary(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 188
    new-instance v6, Lcom/doomsday/injector/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v6, v0}, Lcom/doomsday/injector/MainActivity$$ExternalSyntheticLambda2;-><init>(Lcom/doomsday/injector/MainActivity;)V

    const-string v7, "WRAP INJECT  (A15 no-ptrace)"

    invoke-virtual {v0, v7, v6}, Lcom/doomsday/injector/MainActivity;->makeSecondary(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 189
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 190
    new-instance v3, Lcom/doomsday/injector/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0}, Lcom/doomsday/injector/MainActivity$$ExternalSyntheticLambda3;-><init>(Lcom/doomsday/injector/MainActivity;)V

    const-string v7, "REMOVE WRAP"

    invoke-virtual {v0, v7, v3}, Lcom/doomsday/injector/MainActivity;->makeSmallButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 191
    new-instance v3, Lcom/doomsday/injector/MainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0}, Lcom/doomsday/injector/MainActivity$$ExternalSyntheticLambda4;-><init>(Lcom/doomsday/injector/MainActivity;)V

    const-string v7, "CHECK PIDS"

    invoke-virtual {v0, v7, v3}, Lcom/doomsday/injector/MainActivity;->makeSmallButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 192
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 193
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v3

    invoke-virtual {v0, v5, v3}, Lcom/doomsday/injector/MainActivity;->addSpace(Landroid/widget/LinearLayout;I)V

    .line 194
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v8}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v6

    invoke-virtual {v0, v8}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v7

    invoke-virtual {v0, v8}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v14

    invoke-virtual {v0, v8}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v15

    invoke-virtual {v3, v6, v7, v14, v15}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual/range {p0 .. p0}, Lcom/doomsday/injector/MainActivity;->cardBg()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 195
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v7, "MANUAL PID"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, -0x756f58

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v7, 0x41100000    # 9.0f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const v7, 0x3df5c28f    # 0.12f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setLetterSpacing(F)V

    invoke-static {v13, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 196
    new-instance v6, Landroid/widget/EditText;

    invoke-direct {v6, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/doomsday/injector/MainActivity;->manualPidBox:Landroid/widget/EditText;

    const-string v7, "e.g. 18318"

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v6, v0, Lcom/doomsday/injector/MainActivity;->manualPidBox:Landroid/widget/EditText;

    const v7, -0x70501

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v6, v0, Lcom/doomsday/injector/MainActivity;->manualPidBox:Landroid/widget/EditText;

    invoke-virtual {v6, v10}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v6, v0, Lcom/doomsday/injector/MainActivity;->manualPidBox:Landroid/widget/EditText;

    const/high16 v7, 0x41400000    # 12.0f

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setTextSize(F)V

    iget-object v6, v0, Lcom/doomsday/injector/MainActivity;->manualPidBox:Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, v0, Lcom/doomsday/injector/MainActivity;->manualPidBox:Landroid/widget/EditText;

    sget-object v7, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v6, v0, Lcom/doomsday/injector/MainActivity;->manualPidBox:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 197
    new-instance v6, Landroid/view/View;

    invoke-direct {v6, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v9}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v4}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v9

    invoke-direct {v7, v12, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 198
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v11}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v3

    invoke-virtual {v0, v5, v3}, Lcom/doomsday/injector/MainActivity;->addSpace(Landroid/widget/LinearLayout;I)V

    .line 199
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v8}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v6

    invoke-virtual {v0, v8}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v7

    invoke-virtual {v0, v8}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v9

    invoke-virtual {v0, v8}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v8

    invoke-virtual {v3, v6, v7, v9, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual/range {p0 .. p0}, Lcom/doomsday/injector/MainActivity;->cardBgStrong()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 200
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v7, "TERMINAL"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, -0x756f58

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v7, 0x41100000    # 9.0f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const v7, 0x3e23d70a    # 0.16f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setLetterSpacing(F)V

    invoke-static {v13, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 201
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/doomsday/injector/MainActivity;->log:Landroid/widget/TextView;

    const v6, -0x913401

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, v0, Lcom/doomsday/injector/MainActivity;->log:Landroid/widget/TextView;

    const/high16 v6, 0x41300000    # 11.0f

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, v0, Lcom/doomsday/injector/MainActivity;->log:Landroid/widget/TextView;

    sget-object v6, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v4, v0, Lcom/doomsday/injector/MainActivity;->log:Landroid/widget/TextView;

    const-string v6, "[*] ready \u2014 Zalith \u2192 Play \u2192 INJECT MINECRAFT CHILD\n"

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/doomsday/injector/MainActivity;->log:Landroid/widget/TextView;

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6, v7}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iget-object v4, v0, Lcom/doomsday/injector/MainActivity;->log:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 202
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 203
    invoke-virtual {v2, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    invoke-virtual {v0, v1}, Lcom/doomsday/injector/MainActivity;->setContentView(Landroid/view/View;)V

    .line 205
    return-void
.end method
