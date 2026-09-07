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
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    const-string v0, "com.movtery.zalithlauncher.v2"

    iput-object v0, p0, Lcom/doomsday/injector/MainActivity;->pkg:Ljava/lang/String;

    .line 38
    const-string v0, "com.movtery.zalithlauncher"

    iput-object v0, p0, Lcom/doomsday/injector/MainActivity;->altPkg:Ljava/lang/String;

    .line 39
    const-string v0, "https://doomsdayclient.xyz/download/DoomsDay.jar"

    iput-object v0, p0, Lcom/doomsday/injector/MainActivity;->defaultUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method addSpace(Landroid/widget/LinearLayout;I)V
    .locals 3

    .line 142
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 143
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 145
    return-void
.end method

.method addStat(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 148
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 149
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 150
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 152
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    const p2, -0x756f58

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    const/high16 p2, 0x41100000    # 9.0f

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 155
    const p2, 0x3df5c28f    # 0.12f

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 156
    const-string p2, "sans-serif-medium"

    invoke-static {p2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 157
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 158
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 159
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    const/16 p3, -0x7100

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 161
    const/high16 p3, 0x41400000    # 12.0f

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 162
    invoke-static {p2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 163
    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result p2

    invoke-virtual {v2, v5, p2, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 164
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 165
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 166
    return-void
.end method

.method append(Ljava/lang/String;)V
    .locals 1

    .line 49
    new-instance v0, Lcom/doomsday/injector/MainActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lcom/doomsday/injector/MainActivity$$ExternalSyntheticLambda8;-><init>(Lcom/doomsday/injector/MainActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/doomsday/injector/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 50
    return-void
.end method

.method btnBg(I)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 53
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 54
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 55
    const/16 p1, 0xe

    invoke-virtual {p0, p1}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 56
    return-object v0
.end method

.method btnBgBlue()Landroid/graphics/drawable/GradientDrawable;
    .locals 4

    .line 60
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const v2, -0xd09401

    const v3, -0xb27501

    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 61
    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 62
    return-object v0
.end method

.method cardBg()Landroid/graphics/drawable/GradientDrawable;
    .locals 3

    .line 66
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 67
    const v1, 0x18ebe7d9

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 68
    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 69
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v1

    const v2, 0x12ffffff

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 70
    return-object v0
.end method

.method cardBgStrong()Landroid/graphics/drawable/GradientDrawable;
    .locals 3

    .line 74
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 75
    const v1, -0x1f141827

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 76
    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 77
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v1

    const v2, 0x1affffff

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 78
    return-object v0
.end method

.method copyAsset(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 342
    invoke-virtual {p0}, Lcom/doomsday/injector/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 343
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 344
    const/16 p2, 0x2000

    new-array p2, p2, [B

    .line 346
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 347
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 348
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 349
    return-void
.end method

.method doInject()V
    .locals 2

    .line 352
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/doomsday/injector/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/doomsday/injector/MainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/doomsday/injector/MainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 353
    return-void
.end method

.method doWrap()V
    .locals 2

    .line 356
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/doomsday/injector/MainActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/doomsday/injector/MainActivity$$ExternalSyntheticLambda10;-><init>(Lcom/doomsday/injector/MainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 357
    return-void
.end method

.method dp(I)I
    .locals 2

    .line 45
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
    .locals 6

    .line 184
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "su"

    const-string v2, "-c"

    const-string v3, "ps -A"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 185
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    const/4 v2, 0x0

    .line 189
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const/16 v4, 0x3c

    if-ge v2, v4, :cond_2

    .line 190
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 191
    const-string v5, "zalith"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "minecraft"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "knot"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "net.minecraft"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 192
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    add-int/lit8 v2, v2, 0x1

    .line 195
    :cond_1
    goto :goto_0

    .line 196
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_3

    const-string v0, "ps empty (need root)"

    return-object v0

    .line 197
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 198
    :catch_0
    move-exception v0

    .line 199
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

.method exec(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 170
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "su"

    const-string v2, "-c"

    filled-new-array {v1, v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    .line 171
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I

    .line 176
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 177
    :catch_0
    move-exception p1

    .line 178
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method fetch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .line 312
    const/4 v0, 0x0

    :try_start_0
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

    .line 313
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 315
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 316
    const/16 v2, 0x3a98

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 317
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 318
    const-string v2, "User-Agent"

    const-string v3, "Mozilla/5.0"

    invoke-virtual {p1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 320
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

    .line 321
    const/16 v3, 0x190

    if-lt v2, v3, :cond_0

    return v0

    .line 322
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 323
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 324
    const/16 v3, 0x2000

    new-array v3, v3, [B

    .line 325
    const-wide/16 v4, 0x0

    .line 327
    :goto_0
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 328
    invoke-virtual {v2, v3, v0, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 329
    int-to-long v6, v6

    add-long/2addr v4, v6

    goto :goto_0

    .line 331
    :cond_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 332
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 333
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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    const-wide/16 p1, 0x3e8

    cmp-long p1, v4, p1

    if-lez p1, :cond_2

    move v0, v1

    :cond_2
    return v0

    .line 335
    :catch_0
    move-exception p1

    .line 336
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

    .line 337
    return v0
.end method

.method getMinecraftPid()I
    .locals 11

    .line 205
    const-string v0, "\\s+"

    const-string v1, "ps -A"

    const-string v2, "-c"

    const-string v3, "su"

    const/16 v4, 0x64

    const/4 v5, 0x0

    :try_start_0
    filled-new-array {v3, v2, v1}, [Ljava/lang/String;

    move-result-object v6

    .line 206
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 207
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 209
    :goto_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 210
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 211
    const-string v9, ":game"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "knot"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "net.minecraft"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 212
    :cond_0
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v8, v6

    move v9, v5

    :goto_1
    if-ge v9, v8, :cond_2

    aget-object v10, v6, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 214
    :try_start_1
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 215
    if-le v10, v4, :cond_1

    return v10

    .line 216
    :catch_0
    move-exception v10

    :cond_1
    nop

    .line 212
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 219
    :cond_2
    goto :goto_0

    .line 220
    :catch_1
    move-exception v6

    :cond_3
    nop

    .line 223
    :try_start_2
    filled-new-array {v3, v2, v1}, [Ljava/lang/String;

    move-result-object v1

    .line 224
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 225
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 227
    :cond_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 228
    const-string v3, "com.movtery.zalithlauncher.v2:game"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 229
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    move v6, v5

    :goto_2
    if-ge v6, v3, :cond_4

    aget-object v7, v1, v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 231
    :try_start_3
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 232
    if-le v7, v4, :cond_5

    return v7

    .line 233
    :catch_2
    move-exception v7

    :cond_5
    nop

    .line 229
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 237
    :catch_3
    move-exception v0

    :cond_6
    nop

    .line 239
    const/4 v0, -0x1

    return v0
.end method

.method getPid(Ljava/lang/String;)I
    .locals 11

    .line 244
    const-string v0, "\\s+"

    const-string v1, "[ ]+"

    const-string v2, "-c"

    const-string v3, "su"

    const-string v4, "zalith"

    const/4 v5, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const-string v7, "pidof"

    filled-new-array {v7, p1}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 245
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 246
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 247
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 248
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 250
    :catch_0
    move-exception v6

    :cond_0
    nop

    .line 253
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pidof "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v3, v2, v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 254
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 255
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 256
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 257
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p1

    .line 259
    :catch_1
    move-exception v1

    :cond_1
    nop

    .line 262
    const/16 v1, 0x64

    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const-string v7, "ps"

    const-string v8, "-A"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 263
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 265
    :goto_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 266
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 267
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v8, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 268
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v8, v6

    move v9, v5

    :goto_1
    if-ge v9, v8, :cond_4

    aget-object v10, v6, v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 270
    :try_start_3
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 271
    if-le v10, v1, :cond_3

    return v10

    .line 272
    :catch_2
    move-exception v10

    :cond_3
    nop

    .line 268
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 275
    :cond_4
    goto :goto_0

    .line 276
    :catch_3
    move-exception v6

    :cond_5
    nop

    .line 279
    :try_start_4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const-string v7, "ps -A"

    filled-new-array {v3, v2, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 280
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 282
    :goto_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 283
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 284
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 285
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v6, v2

    move v7, v5

    :goto_3
    if-ge v7, v6, :cond_8

    aget-object v8, v2, v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 287
    :try_start_5
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 288
    if-le v8, v1, :cond_7

    return v8

    .line 289
    :catch_4
    move-exception v8

    :cond_7
    nop

    .line 285
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 292
    :cond_8
    goto :goto_2

    .line 293
    :catch_5
    move-exception v0

    :cond_9
    nop

    .line 296
    :try_start_6
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/doomsday/injector/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 297
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 298
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 299
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 300
    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 301
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_5

    .line 304
    :cond_a
    goto :goto_4

    .line 302
    :cond_b
    :goto_5
    iget p1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    return p1

    .line 305
    :catch_6
    move-exception p1

    :cond_c
    nop

    .line 307
    const/4 p1, -0x1

    return p1
.end method

.method synthetic lambda$append$0$com-doomsday-injector-MainActivity(Ljava/lang/String;)V
    .locals 2

    .line 49
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

.method synthetic lambda$onCreate$1$com-doomsday-injector-MainActivity(Landroid/view/View;)V
    .locals 1

    .line 851
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/doomsday/injector/MainActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/doomsday/injector/MainActivity$$ExternalSyntheticLambda7;-><init>(Lcom/doomsday/injector/MainActivity;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method synthetic lambda$onCreate$2$com-doomsday-injector-MainActivity(Landroid/view/View;)V
    .locals 0

    .line 854
    invoke-virtual {p0}, Lcom/doomsday/injector/MainActivity;->doInject()V

    return-void
.end method

.method synthetic lambda$onCreate$3$com-doomsday-injector-MainActivity(Landroid/view/View;)V
    .locals 0

    .line 857
    invoke-virtual {p0}, Lcom/doomsday/injector/MainActivity;->doWrap()V

    return-void
.end method

.method synthetic lambda$onCreate$4$com-doomsday-injector-MainActivity(Landroid/view/View;)V
    .locals 1

    .line 862
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/doomsday/injector/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/doomsday/injector/MainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/doomsday/injector/MainActivity;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method synthetic lambda$onCreate$5$com-doomsday-injector-MainActivity(Landroid/view/View;)V
    .locals 1

    .line 863
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/doomsday/injector/MainActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/doomsday/injector/MainActivity$$ExternalSyntheticLambda9;-><init>(Lcom/doomsday/injector/MainActivity;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method makePrimary(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;
    .locals 6

    .line 82
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 83
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 84
    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 85
    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 86
    const-string v1, "sans-serif-black"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 87
    const v1, 0x3cf5c28f    # 0.03f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLetterSpacing(F)V

    .line 88
    invoke-virtual {p0}, Lcom/doomsday/injector/MainActivity;->btnBgBlue()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 89
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 90
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

    .line 91
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setElevation(F)V

    .line 92
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, p1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 93
    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result p1

    invoke-virtual {v2, v1, v1, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 94
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-object v0
.end method

.method makeSecondary(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;
    .locals 5

    .line 100
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 101
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 102
    const p1, -0x3d3725

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 103
    const/high16 p1, 0x41300000    # 11.0f

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextSize(F)V

    .line 104
    const-string p1, "sans-serif-medium"

    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 105
    const p1, 0x3ca3d70a    # 0.02f

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setLetterSpacing(F)V

    .line 106
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 107
    const v2, 0x1affffff

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 108
    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 109
    invoke-virtual {p0, v1}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v1

    const v2, 0x12ffffff

    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 110
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 111
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 112
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

    .line 113
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 114
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v2

    invoke-virtual {v1, p1, p1, p1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 115
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-object v0
.end method

.method makeSmallButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;
    .locals 5

    .line 121
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 122
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 123
    const p1, -0x756f58

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 124
    const/high16 p1, 0x41200000    # 10.0f

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextSize(F)V

    .line 125
    const-string p1, "sans-serif-medium"

    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 126
    const p1, 0x3d75c28f    # 0.06f

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setLetterSpacing(F)V

    .line 127
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 128
    const v2, 0xfffffff

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 129
    const/16 v2, 0x14

    invoke-virtual {p0, v2}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 130
    invoke-virtual {p0, v1}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v1

    const v2, 0x12ffffff

    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 131
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 132
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 133
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

    .line 134
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, p1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 135
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v3

    invoke-virtual {p0, v2}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v2

    invoke-virtual {v1, v3, p1, v2, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 136
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 16

    .line 685
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 687
    invoke-virtual/range {p0 .. p0}, Lcom/doomsday/injector/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 688
    const v2, -0x70a12

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 690
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 691
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 694
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 695
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const v5, 0x332f6bff

    const v6, 0x70812

    filled-new-array {v5, v6}, [I

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 696
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 697
    const/16 v5, 0x1a4

    invoke-virtual {v0, v5}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 698
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 699
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x384

    invoke-virtual {v0, v5}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v5

    const/16 v6, 0x258

    invoke-virtual {v0, v6}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v6

    invoke-direct {v3, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 700
    const/16 v5, 0x11

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 701
    const/16 v6, 0xb4

    invoke-virtual {v0, v6}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v6

    neg-int v6, v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 702
    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 705
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 706
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 707
    const v6, 0x116ecbff

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 708
    const/16 v6, 0x12c

    invoke-virtual {v0, v6}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 709
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 710
    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 711
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v6, 0x208

    invoke-virtual {v0, v6}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v7

    invoke-virtual {v0, v6}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v6

    invoke-direct {v3, v7, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 712
    const v6, 0x800035

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 713
    const/16 v6, 0x78

    invoke-virtual {v0, v6}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v7

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 714
    invoke-virtual {v0, v6}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v6

    neg-int v6, v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 715
    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 717
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 718
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 720
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 721
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 722
    const/16 v7, 0x12

    invoke-virtual {v0, v7}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v8

    .line 723
    invoke-virtual {v6, v8, v8, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 726
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 727
    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 728
    invoke-virtual {v9, v8, v8, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 729
    invoke-virtual/range {p0 .. p0}, Lcom/doomsday/injector/MainActivity;->cardBgStrong()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 730
    invoke-virtual {v0, v3}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 732
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 733
    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 734
    const/16 v11, 0x10

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 737
    new-instance v11, Landroid/view/View;

    invoke-direct {v11, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 738
    new-instance v12, Landroid/graphics/drawable/GradientDrawable;

    sget-object v13, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const v14, -0xd09401

    const v15, -0xb27501

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 739
    const/16 v13, 0xc

    invoke-virtual {v0, v13}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v12, v14}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 740
    invoke-virtual {v11, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 741
    new-instance v12, Landroid/widget/FrameLayout;

    invoke-direct {v12, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 742
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v15, 0x28

    invoke-virtual {v0, v15}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v7

    invoke-virtual {v0, v15}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v3

    invoke-direct {v14, v7, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v11, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 743
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 744
    const-string v7, "\u25c6"

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 745
    const/4 v7, -0x1

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 746
    const/high16 v11, 0x41900000    # 18.0f

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 747
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 748
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v15}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v11

    invoke-virtual {v0, v15}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v14

    invoke-direct {v5, v11, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 749
    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 751
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 752
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 753
    invoke-virtual {v0, v13}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v5

    const/4 v11, 0x0

    invoke-virtual {v3, v5, v11, v11, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 754
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 755
    const-string v11, "nova"

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 756
    const/16 v11, -0x7100

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 757
    const/high16 v12, 0x41a00000    # 20.0f

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 758
    const-string v12, "sans-serif"

    invoke-static {v12, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 759
    const v12, 0x3ca3d70a    # 0.02f

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 760
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 761
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 762
    const-string v12, "DOOMSDAY \u2022 FINTECH INJECTOR"

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 763
    const v12, -0x756f58

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 764
    const/high16 v14, 0x41100000    # 9.0f

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setTextSize(F)V

    .line 765
    const v15, 0x3e0f5c29    # 0.14f

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 766
    const-string v13, "sans-serif-medium"

    const/4 v11, 0x0

    invoke-static {v13, v11}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v15

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 767
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 768
    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 771
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 772
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    invoke-direct {v5, v15, v7, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 773
    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 775
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 776
    const-string v5, "\u25cf  PREMIUM"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 777
    const v5, -0xe676

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 778
    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setTextSize(F)V

    .line 779
    invoke-static {v13, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 780
    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v15

    const/4 v11, 0x5

    invoke-virtual {v0, v11}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v14

    invoke-virtual {v0, v5}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v12

    invoke-virtual {v0, v11}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v11

    invoke-virtual {v3, v15, v14, v12, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 781
    new-instance v11, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v11}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 782
    const v12, 0x1a00e676

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 783
    const/16 v12, 0x14

    invoke-virtual {v0, v12}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 784
    invoke-virtual {v0, v4}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v12

    const v14, 0x3300e676

    invoke-virtual {v11, v12, v14}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 785
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 786
    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 788
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 791
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 792
    const v10, 0x12ffffff

    invoke-virtual {v3, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 793
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v4}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v12

    invoke-direct {v11, v7, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 794
    const/16 v12, 0xe

    invoke-virtual {v0, v12}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v14

    invoke-virtual {v0, v12}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v12

    const/4 v15, 0x0

    invoke-virtual {v11, v15, v14, v15, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 795
    invoke-virtual {v3, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 796
    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 799
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 800
    invoke-virtual {v3, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 801
    const-string v11, "A15"

    const-string v12, "16KB \u2022 root"

    invoke-virtual {v0, v3, v11, v12}, Lcom/doomsday/injector/MainActivity;->addStat(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    const-string v11, "TARGET"

    const-string v12, "Movtery V2"

    invoke-virtual {v0, v3, v11, v12}, Lcom/doomsday/injector/MainActivity;->addStat(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    const-string v11, "MODE"

    const-string v12, "SS-proof"

    invoke-virtual {v0, v3, v11, v12}, Lcom/doomsday/injector/MainActivity;->addStat(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 806
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 807
    const/16 v3, 0x12

    invoke-virtual {v0, v3}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v3

    invoke-virtual {v0, v6, v3}, Lcom/doomsday/injector/MainActivity;->addSpace(Landroid/widget/LinearLayout;I)V

    .line 810
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 811
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 812
    invoke-virtual {v3, v8, v8, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 813
    invoke-virtual/range {p0 .. p0}, Lcom/doomsday/injector/MainActivity;->cardBg()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 815
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 816
    const-string v11, "DOOMSDAY SOURCE"

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 817
    const v11, -0x756f58

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 818
    const/high16 v11, 0x41100000    # 9.0f

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 819
    const v11, 0x3e0f5c29    # 0.14f

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 820
    invoke-static {v13, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 821
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 823
    new-instance v9, Landroid/widget/EditText;

    invoke-direct {v9, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lcom/doomsday/injector/MainActivity;->urlBox:Landroid/widget/EditText;

    .line 824
    iget-object v9, v0, Lcom/doomsday/injector/MainActivity;->urlBox:Landroid/widget/EditText;

    iget-object v11, v0, Lcom/doomsday/injector/MainActivity;->defaultUrl:Ljava/lang/String;

    invoke-virtual {v9, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 825
    iget-object v9, v0, Lcom/doomsday/injector/MainActivity;->urlBox:Landroid/widget/EditText;

    const/16 v11, -0x7100

    invoke-virtual {v9, v11}, Landroid/widget/EditText;->setTextColor(I)V

    .line 826
    iget-object v9, v0, Lcom/doomsday/injector/MainActivity;->urlBox:Landroid/widget/EditText;

    const v11, -0x5a5a60

    invoke-virtual {v9, v11}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 827
    iget-object v9, v0, Lcom/doomsday/injector/MainActivity;->urlBox:Landroid/widget/EditText;

    const/high16 v12, 0x41300000    # 11.0f

    invoke-virtual {v9, v12}, Landroid/widget/EditText;->setTextSize(F)V

    .line 828
    iget-object v9, v0, Lcom/doomsday/injector/MainActivity;->urlBox:Landroid/widget/EditText;

    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 829
    iget-object v9, v0, Lcom/doomsday/injector/MainActivity;->urlBox:Landroid/widget/EditText;

    const/16 v14, 0x8

    invoke-virtual {v0, v14}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v9, v15, v14, v15, v15}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 830
    iget-object v9, v0, Lcom/doomsday/injector/MainActivity;->urlBox:Landroid/widget/EditText;

    invoke-virtual {v9, v4}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 831
    iget-object v9, v0, Lcom/doomsday/injector/MainActivity;->urlBox:Landroid/widget/EditText;

    sget-object v14, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v9, v14}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 832
    iget-object v9, v0, Lcom/doomsday/injector/MainActivity;->urlBox:Landroid/widget/EditText;

    sget-object v14, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v9, v14}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 833
    iget-object v9, v0, Lcom/doomsday/injector/MainActivity;->urlBox:Landroid/widget/EditText;

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 835
    new-instance v9, Landroid/view/View;

    invoke-direct {v9, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 836
    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 837
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v4}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v15

    invoke-direct {v14, v7, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 838
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 840
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 841
    const-string v14, "Auto-fetches latest jar on inject  \u2022  edit if CDN changes"

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 842
    const v14, -0x6a6a70

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 843
    const/high16 v14, 0x41100000    # 9.0f

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setTextSize(F)V

    .line 844
    const/16 v14, 0x8

    invoke-virtual {v0, v14}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v9, v15, v14, v15, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 845
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 847
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 848
    invoke-virtual {v0, v5}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v3

    invoke-virtual {v0, v6, v3}, Lcom/doomsday/injector/MainActivity;->addSpace(Landroid/widget/LinearLayout;I)V

    .line 851
    new-instance v3, Lcom/doomsday/injector/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lcom/doomsday/injector/MainActivity$$ExternalSyntheticLambda2;-><init>(Lcom/doomsday/injector/MainActivity;)V

    const-string v9, "INJECT MINECRAFT CHILD  \u2014  SS-PROOF"

    invoke-virtual {v0, v9, v3}, Lcom/doomsday/injector/MainActivity;->makePrimary(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v3

    .line 852
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 854
    new-instance v3, Lcom/doomsday/injector/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0}, Lcom/doomsday/injector/MainActivity$$ExternalSyntheticLambda3;-><init>(Lcom/doomsday/injector/MainActivity;)V

    const-string v9, "FETCH + INJECT  (legacy ptrace)"

    invoke-virtual {v0, v9, v3}, Lcom/doomsday/injector/MainActivity;->makeSecondary(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v3

    .line 855
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 857
    new-instance v3, Lcom/doomsday/injector/MainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0}, Lcom/doomsday/injector/MainActivity$$ExternalSyntheticLambda4;-><init>(Lcom/doomsday/injector/MainActivity;)V

    const-string v9, "WRAP INJECT  (A15 no-ptrace)"

    invoke-virtual {v0, v9, v3}, Lcom/doomsday/injector/MainActivity;->makeSecondary(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v3

    .line 858
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 860
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 861
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 862
    new-instance v9, Lcom/doomsday/injector/MainActivity$$ExternalSyntheticLambda5;

    invoke-direct {v9, v0}, Lcom/doomsday/injector/MainActivity$$ExternalSyntheticLambda5;-><init>(Lcom/doomsday/injector/MainActivity;)V

    const-string v14, "REMOVE WRAP"

    invoke-virtual {v0, v14, v9}, Lcom/doomsday/injector/MainActivity;->makeSmallButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 863
    new-instance v9, Lcom/doomsday/injector/MainActivity$$ExternalSyntheticLambda6;

    invoke-direct {v9, v0}, Lcom/doomsday/injector/MainActivity$$ExternalSyntheticLambda6;-><init>(Lcom/doomsday/injector/MainActivity;)V

    const-string v14, "CHECK PIDS"

    invoke-virtual {v0, v14, v9}, Lcom/doomsday/injector/MainActivity;->makeSmallButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 864
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 866
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v3

    invoke-virtual {v0, v6, v3}, Lcom/doomsday/injector/MainActivity;->addSpace(Landroid/widget/LinearLayout;I)V

    .line 869
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 870
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 871
    invoke-virtual {v3, v8, v8, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 872
    invoke-virtual/range {p0 .. p0}, Lcom/doomsday/injector/MainActivity;->cardBg()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 874
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 875
    const-string v14, "MANUAL PID"

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 876
    const v14, -0x756f58

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 877
    const/high16 v14, 0x41100000    # 9.0f

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setTextSize(F)V

    .line 878
    const v14, 0x3df5c28f    # 0.12f

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 879
    invoke-static {v13, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 880
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 882
    new-instance v9, Landroid/widget/EditText;

    invoke-direct {v9, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lcom/doomsday/injector/MainActivity;->manualPidBox:Landroid/widget/EditText;

    .line 883
    iget-object v9, v0, Lcom/doomsday/injector/MainActivity;->manualPidBox:Landroid/widget/EditText;

    const-string v14, "e.g. 18318"

    invoke-virtual {v9, v14}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 884
    iget-object v9, v0, Lcom/doomsday/injector/MainActivity;->manualPidBox:Landroid/widget/EditText;

    const/16 v14, -0x7100

    invoke-virtual {v9, v14}, Landroid/widget/EditText;->setTextColor(I)V

    .line 885
    iget-object v9, v0, Lcom/doomsday/injector/MainActivity;->manualPidBox:Landroid/widget/EditText;

    invoke-virtual {v9, v11}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 886
    iget-object v9, v0, Lcom/doomsday/injector/MainActivity;->manualPidBox:Landroid/widget/EditText;

    const/high16 v11, 0x41400000    # 12.0f

    invoke-virtual {v9, v11}, Landroid/widget/EditText;->setTextSize(F)V

    .line 887
    iget-object v9, v0, Lcom/doomsday/injector/MainActivity;->manualPidBox:Landroid/widget/EditText;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 888
    iget-object v9, v0, Lcom/doomsday/injector/MainActivity;->manualPidBox:Landroid/widget/EditText;

    sget-object v11, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v9, v11}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 889
    iget-object v9, v0, Lcom/doomsday/injector/MainActivity;->manualPidBox:Landroid/widget/EditText;

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 891
    new-instance v9, Landroid/view/View;

    invoke-direct {v9, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 892
    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 893
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v4}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v11

    invoke-direct {v10, v7, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 894
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 896
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 897
    invoke-virtual {v0, v5}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v3

    invoke-virtual {v0, v6, v3}, Lcom/doomsday/injector/MainActivity;->addSpace(Landroid/widget/LinearLayout;I)V

    .line 900
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 901
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 902
    invoke-virtual {v3, v8, v8, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 903
    invoke-virtual/range {p0 .. p0}, Lcom/doomsday/injector/MainActivity;->cardBgStrong()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 905
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 906
    const-string v8, "TERMINAL"

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 907
    const v8, -0x756f58

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 908
    const/high16 v8, 0x41100000    # 9.0f

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 909
    const v8, 0x3e23d70a    # 0.16f

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 910
    invoke-static {v13, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 911
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 913
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/doomsday/injector/MainActivity;->log:Landroid/widget/TextView;

    .line 914
    iget-object v4, v0, Lcom/doomsday/injector/MainActivity;->log:Landroid/widget/TextView;

    const v5, -0x9110ff

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 915
    iget-object v4, v0, Lcom/doomsday/injector/MainActivity;->log:Landroid/widget/TextView;

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 916
    iget-object v4, v0, Lcom/doomsday/injector/MainActivity;->log:Landroid/widget/TextView;

    sget-object v5, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 917
    iget-object v4, v0, Lcom/doomsday/injector/MainActivity;->log:Landroid/widget/TextView;

    const-string v5, "[*] ready \u2014 Zalith \u2192 Play \u2192 INJECT MINECRAFT CHILD\n"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 918
    iget-object v4, v0, Lcom/doomsday/injector/MainActivity;->log:Landroid/widget/TextView;

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/doomsday/injector/MainActivity;->dp(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5, v8}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 919
    iget-object v4, v0, Lcom/doomsday/injector/MainActivity;->log:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 921
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 923
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 924
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 926
    invoke-virtual {v0, v1}, Lcom/doomsday/injector/MainActivity;->setContentView(Landroid/view/View;)V

    .line 927
    return-void
.end method

.method runCheckPids()V
    .locals 5

    .line 675
    :try_start_0
    iget-object v0, p0, Lcom/doomsday/injector/MainActivity;->pkg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/doomsday/injector/MainActivity;->getPid(Ljava/lang/String;)I

    move-result v0

    .line 676
    iget-object v1, p0, Lcom/doomsday/injector/MainActivity;->altPkg:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/doomsday/injector/MainActivity;->getPid(Ljava/lang/String;)I

    move-result v1

    .line 677
    invoke-virtual {p0}, Lcom/doomsday/injector/MainActivity;->getMinecraftPid()I

    move-result v2

    .line 678
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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    goto :goto_0

    .line 679
    :catch_0
    move-exception v0

    .line 680
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

    .line 682
    :goto_0
    return-void
.end method

.method runChildInject()V
    .locals 15

    .line 546
    const-string v0, "/libdoomsday.so"

    const-string v1, "755"

    const-string v2, "chmod"

    const-string v3, "/injector_arm64"

    :try_start_0
    invoke-virtual {p0}, Lcom/doomsday/injector/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 547
    iget-object v5, p0, Lcom/doomsday/injector/MainActivity;->urlBox:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 548
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v5, p0, Lcom/doomsday/injector/MainActivity;->defaultUrl:Ljava/lang/String;

    .line 550
    :cond_0
    const-string v6, "/data/data/com.movtery.zalithlauncher.v2/files/libdoomsday.so"

    .line 551
    const-string v7, "/data/data/com.movtery.zalithlauncher.v2/files/DoomsDay.jar"

    .line 554
    const-string v8, "[*] extracting bundled assets..."

    invoke-virtual {p0, v8}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    .line 556
    :try_start_1
    const-string v8, "injector_arm64"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/doomsday/injector/MainActivity;->copyAsset(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v1, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 560
    goto :goto_0

    .line 558
    :catch_0
    move-exception v3

    .line 559
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[-] extract injector fail "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    .line 563
    :goto_0
    :try_start_3
    const-string v3, "libdoomsday.so"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v3, v8}, Lcom/doomsday/injector/MainActivity;->copyAsset(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 565
    :catch_1
    move-exception v0

    :goto_1
    nop

    .line 568
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[*] auto-fetching latest from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    .line 569
    nop

    .line 570
    nop

    .line 572
    const-string v0, ".so"

    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    const-string v1, " && chmod 755 "

    const-string v2, " && chmod 644 "

    const-string v3, " "

    const/4 v8, 0x0

    const-string v9, " && chcon u:object_r:app_data_file:s0:c175,c258,c512,c768 "

    const-string v10, "cp "

    const-string v11, "-c"

    const-string v12, "su"

    if-eqz v0, :cond_2

    .line 574
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, "/doomsday-latest.so"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 575
    invoke-virtual {p0, v5, v0}, Lcom/doomsday/injector/MainActivity;->fetch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    .line 576
    if-eqz v5, :cond_1

    .line 578
    :try_start_6
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v12, v11, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 579
    :goto_2
    :try_start_7
    const-string v0, "[+] fetched latest .so -> injected as payload"

    invoke-virtual {p0, v0}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    .line 581
    :cond_1
    move v0, v8

    goto :goto_4

    .line 583
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, "/doomsday-latest.jar"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 584
    invoke-virtual {p0, v5, v0}, Lcom/doomsday/injector/MainActivity;->fetch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    .line 585
    if-eqz v5, :cond_3

    .line 587
    :try_start_8
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v12, v11, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 588
    :goto_3
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[+] fetched latest .jar -> "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    .line 595
    :cond_3
    move v0, v5

    move v5, v8

    :goto_4
    if-eqz v5, :cond_4

    .line 596
    const-string v1, "[*] using freshly fetched native lib as injection payload"

    invoke-virtual {p0, v1}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    goto :goto_5

    .line 599
    :cond_4
    const-string v5, "[*] using bundled libdoomsday.so as injection payload"

    invoke-virtual {p0, v5}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 600
    :try_start_a
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/libdoomsday.so "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v12, v11, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_5

    :catch_4
    move-exception v1

    .line 603
    :goto_5
    if-eqz v0, :cond_5

    .line 604
    :try_start_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[+] DoomsDay.jar ready at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u2014 will be loaded by injected native lib"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    goto :goto_7

    .line 606
    :cond_5
    const-string v1, "[*] jar fetch failed, using bundled DoomsDay.jar"

    invoke-virtual {p0, v1}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 608
    :try_start_c
    const-string v1, "DoomsDay.jar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, "/DoomsDay.jar"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Lcom/doomsday/injector/MainActivity;->copyAsset(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "/DoomsDay.jar "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v12, v11, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_6

    .line 610
    :catch_5
    move-exception v1

    :goto_6
    nop

    .line 614
    :goto_7
    :try_start_d
    invoke-virtual {p0}, Lcom/doomsday/injector/MainActivity;->getMinecraftPid()I

    move-result v1

    .line 615
    const/4 v2, -0x1

    if-ne v1, v2, :cond_6

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[-] Minecraft child not found. Start Zalith -> Play -> wait for world, then tap again.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/doomsday/injector/MainActivity;->dumpPs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    .line 617
    return-void

    .line 619
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[*] Minecraft child pid "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/doomsday/injector/MainActivity;->dumpPs()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    .line 622
    nop

    .line 624
    :try_start_e
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "grep -q libdoomsday /proc/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "/maps && echo yes"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v12, v11, v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 626
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 627
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 628
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    .line 629
    :cond_7
    const-string v5, ""

    .line 630
    :goto_8
    const-string v7, "yes"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 631
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    goto :goto_9

    .line 632
    :catch_6
    move-exception v2

    :goto_9
    nop

    .line 634
    if-eqz v8, :cond_8

    .line 635
    :try_start_f
    const-string v0, "[*] already injected -> trigger re-init (no ptrace, no freeze)"

    invoke-virtual {p0, v0}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    .line 637
    :try_start_10
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "touch /data/local/tmp/doomsday_reinject; touch /data/data/com.movtery.zalithlauncher.v2/files/doomsday_reinject; chmod 666 /data/local/tmp/doomsday_reinject 2>/dev/null; chmod 666 /data/data/com.movtery.zalithlauncher.v2/files/doomsday_reinject 2>/dev/null"

    filled-new-array {v12, v11, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 638
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7

    goto :goto_a

    .line 639
    :catch_7
    move-exception v0

    :goto_a
    nop

    .line 640
    :try_start_11
    const-string v0, "[+] forcing re-inject..."

    invoke-virtual {p0, v0}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    .line 641
    goto :goto_b

    .line 645
    :cond_8
    :goto_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/injector_arm64 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 646
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[*] exec: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    .line 648
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    filled-new-array {v12, v11, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 649
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 650
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 652
    :goto_c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {p0, v4}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    goto :goto_c

    .line 653
    :cond_9
    :goto_d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p0, v2}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    goto :goto_d

    .line 654
    :cond_a
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v1

    .line 655
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[*] child injector exit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v1, :cond_b

    const-string v3, " [+] injected child (SS-proof)"

    goto :goto_e

    :cond_b
    const-string v3, " [-] failed"

    :goto_e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    .line 657
    if-nez v1, :cond_c

    if-eqz v0, :cond_c

    .line 658
    const-string v0, "[+] injected with auto-fetched DoomsDay.jar \u2014 check logcat -s DOOMSDAY"

    invoke-virtual {p0, v0}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    .line 662
    :cond_c
    goto :goto_f

    .line 660
    :catch_8
    move-exception v0

    .line 661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[-] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    .line 663
    :goto_f
    return-void
.end method

.method runInject()V
    .locals 19

    .line 361
    move-object/from16 v1, p0

    const-string v2, " 2>/dev/null"

    const-string v3, ".so"

    const-string v0, "/libdoomsday.so"

    const-string v4, "755"

    const-string v5, "chmod"

    const-string v6, "/injector_arm64"

    const-string v7, " && chcon u:object_r:app_data_file:s0 "

    const-string v8, " && chmod 755 "

    const-string v9, "/libdoomsday.so "

    const-string v10, "cp "

    const-string v11, "-c"

    const-string v12, "su"

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/doomsday/injector/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    .line 362
    iget-object v14, v1, Lcom/doomsday/injector/MainActivity;->urlBox:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 363
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_0

    iget-object v14, v1, Lcom/doomsday/injector/MainActivity;->defaultUrl:Ljava/lang/String;

    .line 366
    :cond_0
    const-string v15, "[*] extracting bundled fallback..."

    invoke-virtual {v1, v15}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    .line 367
    const-string v15, "injector_arm64"

    move-object/from16 v16, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v15, v3}, Lcom/doomsday/injector/MainActivity;->copyAsset(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v5, v4, v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    .line 369
    const-string v3, "libdoomsday.so"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Lcom/doomsday/injector/MainActivity;->copyAsset(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v5, v4, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/libdoomsday_tmp.so"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 373
    const-string v4, "/data/data/com.movtery.zalithlauncher.v2/files/libdoomsday.so"

    .line 374
    const-string v5, "/data/local/tmp/libdoomsday.so"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d

    .line 378
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

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

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v12, v11, v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 379
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 380
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 384
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, " 2>/dev/null; chmod 755 "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v12, v11, v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 385
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 386
    :catch_1
    move-exception v0

    :goto_1
    nop

    .line 389
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "/doomsday-latest.jar"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 390
    const-string v6, "/data/local/tmp/DoomsDay.jar"

    .line 392
    move-object/from16 v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_d

    move-object/from16 v17, v5

    const-string v5, " 2>/dev/null && chmod 755 "

    move-object/from16 v18, v7

    const-string v7, " "

    if-eqz v16, :cond_2

    .line 393
    :try_start_4
    invoke-virtual {v1, v14, v0}, Lcom/doomsday/injector/MainActivity;->fetch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d

    .line 394
    if-eqz v14, :cond_1

    .line 396
    :try_start_5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v15
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move/from16 v16, v14

    :try_start_6
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " && chmod 644 "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v12, v11, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 397
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 398
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    move/from16 v16, v14

    :goto_2
    goto :goto_3

    .line 394
    :cond_1
    move/from16 v16, v14

    .line 421
    :goto_3
    move/from16 v14, v16

    goto :goto_7

    .line 401
    :cond_2
    :try_start_7
    invoke-virtual {v1, v14, v6}, Lcom/doomsday/injector/MainActivity;->fetch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 402
    if-eqz v2, :cond_3

    .line 403
    const-string v14, "[*] got jar, will use dex inject via frida helper if ptrace fails"

    invoke-virtual {v1, v14}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_d

    .line 405
    :try_start_8
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, " /data/local/tmp/doomsday.dex 2>/dev/null"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v12, v11, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 406
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_4

    .line 407
    :catch_4
    move-exception v0

    :goto_4
    nop

    .line 410
    :try_start_9
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " /data/data/com.movtery.zalithlauncher.v2/files/DoomsDay.jar && chmod 644 /data/data/com.movtery.zalithlauncher.v2/files/DoomsDay.jar"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    filled-new-array {v12, v11, v14}, [Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 411
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_5

    .line 412
    :catch_5
    move-exception v0

    :goto_5
    goto :goto_6

    .line 414
    :cond_3
    :try_start_a
    const-string v0, ".jar"

    invoke-virtual {v14, v0, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 415
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 416
    invoke-virtual {v1, v0, v3}, Lcom/doomsday/injector/MainActivity;->fetch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    goto :goto_7

    .line 421
    :cond_4
    :goto_6
    move v14, v2

    :goto_7
    if-nez v14, :cond_5

    .line 422
    const-string v0, "[*] fetch failed, using bundled libdoomsday.so"

    invoke-virtual {v1, v0}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_d

    .line 424
    :try_start_b
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    move-object/from16 v14, v18

    :try_start_c
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v12, v11, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 425
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_8

    .line 426
    :catch_6
    move-exception v0

    goto :goto_8

    :catch_7
    move-exception v0

    move-object/from16 v14, v18

    :goto_8
    nop

    .line 428
    :try_start_d
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    move-object/from16 v15, v17

    :try_start_e
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v12, v11, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    goto :goto_9

    .line 430
    :catch_8
    move-exception v0

    goto :goto_9

    :catch_9
    move-exception v0

    move-object/from16 v15, v17

    :goto_9
    goto :goto_a

    .line 421
    :cond_5
    move-object/from16 v15, v17

    move-object/from16 v14, v18

    .line 433
    :goto_a
    :try_start_f
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[+] using fresh "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d

    .line 439
    :cond_6
    :try_start_10
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " && chcon u:object_r:tmpfs:s0 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v12, v11, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 440
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a

    goto :goto_b

    .line 441
    :catch_a
    move-exception v0

    :goto_b
    nop

    .line 445
    :try_start_11
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v12, v11, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 446
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    goto :goto_c

    .line 447
    :catch_b
    move-exception v0

    :goto_c
    nop

    .line 450
    :try_start_12
    iget-object v0, v1, Lcom/doomsday/injector/MainActivity;->manualPidBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 451
    nop

    .line 452
    iget-object v2, v1, Lcom/doomsday/injector/MainActivity;->pkg:Ljava/lang/String;

    .line 453
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_d

    const-string v4, "manual"

    const/4 v5, -0x1

    if-nez v3, :cond_7

    .line 455
    :try_start_13
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_c

    .line 456
    nop

    .line 457
    move-object v2, v4

    goto :goto_d

    :catch_c
    move-exception v0

    move v0, v5

    goto :goto_d

    .line 453
    :cond_7
    move v0, v5

    .line 459
    :goto_d
    if-ne v0, v5, :cond_8

    :try_start_14
    invoke-virtual {v1, v2}, Lcom/doomsday/injector/MainActivity;->getPid(Ljava/lang/String;)I

    move-result v0

    .line 460
    :cond_8
    if-ne v0, v5, :cond_9

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 461
    iget-object v0, v1, Lcom/doomsday/injector/MainActivity;->altPkg:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/doomsday/injector/MainActivity;->getPid(Ljava/lang/String;)I

    move-result v0

    .line 463
    :cond_9
    if-ne v0, v5, :cond_a

    .line 464
    const-string v0, "[-] Zalith not running. Open Zalith then Play then inject."

    invoke-virtual {v1, v0}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    .line 465
    return-void

    .line 468
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[*] target "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    .line 471
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/injector_arm64 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 472
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[*] exec: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    .line 474
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    filled-new-array {v12, v11, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 475
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 476
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 478
    :goto_e
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v1, v5}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    goto :goto_e

    .line 479
    :cond_b
    :goto_f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v1, v3}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    goto :goto_f

    .line 480
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 481
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[*] injector exit "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    .line 483
    if-eqz v0, :cond_e

    .line 484
    const-string v0, "[*] ptrace failed (no root?). Trying Frida dex inject for jar..."

    invoke-virtual {v1, v0}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    .line 485
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "frida -U -f "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " -l /data/local/tmp/doomsday_zalith.js --no-pause"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 487
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[*] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    .line 489
    :cond_d
    const-string v0, "[-] Need root for native. Without root use Repack or Frida."

    invoke-virtual {v1, v0}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    goto :goto_10

    .line 491
    :cond_e
    const-string v0, "[+] injected! logcat -s DOOMSDAY"

    invoke-virtual {v1, v0}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_d

    .line 498
    :goto_10
    goto :goto_11

    .line 493
    :catch_d
    move-exception v0

    .line 494
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[-] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    .line 495
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 496
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 497
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    .line 499
    :goto_11
    return-void
.end method

.method runRemoveWrap()V
    .locals 5

    .line 667
    const-string v0, "-c"

    const-string v1, "su"

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetprop -p wrap."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/doomsday/injector/MainActivity;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --delete"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v0, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 668
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setprop wrap."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/doomsday/injector/MainActivity;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \'\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v0, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 669
    const-string v0, "[*] wrap cleared"

    invoke-virtual {p0, v0}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 670
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 671
    return-void
.end method

.method runWrap()V
    .locals 7

    .line 503
    const-string v0, "-c"

    const-string v1, "su"

    :try_start_0
    invoke-virtual {p0}, Lcom/doomsday/injector/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 504
    const-string v3, "/data/local/tmp/libdoomsday.so"

    .line 505
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/libdoomsday.so"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 508
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " && chmod 755 "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " && chcon u:object_r:tmpfs:s0 "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v0, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 509
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 510
    :catch_0
    move-exception v2

    :goto_0
    nop

    .line 512
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[*] wrap LD_PRELOAD="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 514
    :try_start_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setprop wrap."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/doomsday/injector/MainActivity;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \'LD_PRELOAD="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v0, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 516
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 517
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 519
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, v5}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    goto :goto_1

    .line 520
    :cond_0
    :goto_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v3}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    goto :goto_2

    .line 521
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 522
    :catch_1
    move-exception v2

    :goto_3
    nop

    .line 525
    :try_start_4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getprop wrap."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/doomsday/injector/MainActivity;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v0, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 526
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 528
    :goto_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[*] wrap prop: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    goto :goto_4

    .line 529
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    .line 530
    :catch_2
    move-exception v2

    :goto_5
    nop

    .line 532
    :try_start_5
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
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 534
    :try_start_6
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "am force-stop "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/doomsday/injector/MainActivity;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v0, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_6

    .line 535
    :catch_3
    move-exception v0

    :goto_6
    nop

    .line 537
    :try_start_7
    const-string v0, "[+] WRAP set. Now launch Zalith again \u2014 lib will auto-load. Check logcat -s DOOMSDAY"

    invoke-virtual {p0, v0}, Lcom/doomsday/injector/MainActivity;->append(Ljava/lang/String;)V

    .line 538
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
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 541
    goto :goto_7

    .line 539
    :catch_4
    move-exception v0

    .line 540
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

    .line 542
    :goto_7
    return-void
.end method
