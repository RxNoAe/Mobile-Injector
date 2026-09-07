package com.doomsday.injector;

import android.app.Activity;
import android.app.ActivityManager;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Iterator;
import java.util.List;

public class MainActivity extends Activity {
    String pkg = "com.movtery.zalithlauncher.v2";
    String altPkg = "com.movtery.zalithlauncher";
    String defaultUrl = "https://doomsdayclient.xyz/download/DoomsDay.jar";
    TextView log;
    EditText urlBox;
    EditText manualPidBox;

    int dp(int dp) {
        return (int) TypedValue.applyDimension(1, (float) dp, getResources().getDisplayMetrics());
    }

    void append(String s) {
        runOnUiThread(() -> log.append(s + "\n"));
    }

    GradientDrawable btnBg(int color) {
        GradientDrawable g = new GradientDrawable();
        g.setColor(color);
        g.setCornerRadius((float) dp(14));
        return g;
    }

    GradientDrawable btnBgBlue() {
        GradientDrawable g = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, new int[]{0xFF2F6BFF, 0xFF4D8AFF});
        g.setCornerRadius((float) dp(14));
        return g;
    }

    GradientDrawable cardBg() {
        GradientDrawable g = new GradientDrawable();
        g.setColor(0x18EBE7D9);
        g.setCornerRadius((float) dp(20));
        g.setStroke(dp(1), 0x12FFFFFF);
        return g;
    }

    GradientDrawable cardBgStrong() {
        GradientDrawable g = new GradientDrawable();
        g.setColor(0xE0EBE7D9);
        g.setCornerRadius((float) dp(20));
        g.setStroke(dp(1), 0x1AFFFFFF);
        return g;
    }

    Button makePrimary(String text, View.OnClickListener l) {
        Button b = new Button(this);
        b.setText(text);
        b.setTextColor(Color.WHITE);
        b.setTextSize(12.0f);
        b.setTypeface(Typeface.create("sans-serif-black", Typeface.BOLD));
        b.setLetterSpacing(0.03f);
        b.setBackground(btnBgBlue());
        b.setAllCaps(false);
        b.setPadding(dp(18), dp(16), dp(18), dp(16));
        b.setElevation((float) dp(8));
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(-1, -2);
        lp.setMargins(0, 0, 0, dp(10));
        b.setLayoutParams(lp);
        b.setOnClickListener(l);
        return b;
    }

    Button makeSecondary(String text, View.OnClickListener l) {
        Button b = new Button(this);
        b.setText(text);
        b.setTextColor(0xFFC2C8DB);
        b.setTextSize(11.0f);
        b.setTypeface(Typeface.create("sans-serif-medium", Typeface.BOLD));
        b.setLetterSpacing(0.02f);
        GradientDrawable bg = new GradientDrawable();
        bg.setColor(0x1AFFFFFF);
        bg.setCornerRadius((float) dp(14));
        bg.setStroke(dp(1), 0x12FFFFFF);
        b.setBackground(bg);
        b.setAllCaps(false);
        b.setPadding(dp(16), dp(13), dp(16), dp(13));
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(-1, -2);
        lp.setMargins(0, 0, 0, dp(8));
        b.setLayoutParams(lp);
        b.setOnClickListener(l);
        return b;
    }

    Button makeSmallButton(String text, View.OnClickListener l) {
        Button b = new Button(this);
        b.setText(text);
        b.setTextColor(0xFF8A90A8);
        b.setTextSize(10.0f);
        b.setTypeface(Typeface.create("sans-serif-medium", Typeface.BOLD));
        b.setLetterSpacing(0.06f);
        GradientDrawable bg = new GradientDrawable();
        bg.setColor(0x0FFFFFFF);
        bg.setCornerRadius((float) dp(20));
        bg.setStroke(dp(1), 0x12FFFFFF);
        b.setBackground(bg);
        b.setAllCaps(false);
        b.setPadding(dp(14), dp(10), dp(14), dp(10));
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, -2, 1.0f);
        lp.setMargins(dp(4), 0, dp(4), 0);
        b.setLayoutParams(lp);
        b.setOnClickListener(l);
        return b;
    }

    void addSpace(LinearLayout parent, int h) {
        View v = new View(this);
        v.setLayoutParams(new LinearLayout.LayoutParams(-1, h));
        parent.addView(v);
    }

    void addStat(LinearLayout parent, String label, String value) {
        LinearLayout col = new LinearLayout(this);
        col.setOrientation(LinearLayout.VERTICAL);
        col.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
        TextView tv = new TextView(this);
        tv.setText(label);
        tv.setTextColor(0xFF8A90A8);
        tv.setTextSize(9.0f);
        tv.setLetterSpacing(0.12f);
        tv.setTypeface(Typeface.create("sans-serif-medium", Typeface.BOLD));
        col.addView(tv);
        TextView vv = new TextView(this);
        vv.setText(value);
        vv.setTextColor(0xFFFF8F00);
        vv.setTextSize(12.0f);
        vv.setTypeface(Typeface.create("sans-serif-medium", Typeface.BOLD));
        vv.setPadding(0, dp(2), 0, 0);
        col.addView(vv);
        parent.addView(col);
    }

    String exec(String cmd) {
        try {
            Process p = Runtime.getRuntime().exec(new String[]{"su", "-c", cmd});
            BufferedReader r = new BufferedReader(new InputStreamReader(p.getInputStream()));
            StringBuilder sb = new StringBuilder();
            String l;
            while ((l = r.readLine()) != null) sb.append(l + "\n");
            p.waitFor();
            return sb.toString();
        } catch (Exception e) {
            return e.toString();
        }
    }

    String dumpPs() {
        try {
            Process p = Runtime.getRuntime().exec(new String[]{"su", "-c", "ps -A"});
            BufferedReader r = new BufferedReader(new InputStreamReader(p.getInputStream()));
            StringBuilder sb = new StringBuilder();
            int count = 0;
            String line;
            while ((line = r.readLine()) != null && count < 60) {
                String lower = line.toLowerCase();
                if (lower.contains("zalith") || lower.contains("minecraft") || lower.contains("knot") || lower.contains("net.minecraft")) {
                    sb.append(line).append("\n");
                    count++;
                }
            }
            if (sb.length() == 0) return "ps empty (need root)";
            return sb.toString();
        } catch (Exception e) {
            return "ps err " + e;
        }
    }

    int getMinecraftPid() {
        try {
            String[] cmd = new String[]{"su", "-c", "ps -A"};
            Process p = Runtime.getRuntime().exec(cmd);
            BufferedReader r = new BufferedReader(new InputStreamReader(p.getInputStream()));
            String line;
            while ((line = r.readLine()) != null) {
                String lower = line.toLowerCase();
                if (lower.contains(":game") || lower.contains("knot") || lower.contains("net.minecraft")) {
                    for (String part : line.trim().split("\\s+")) {
                        try {
                            int pid = Integer.parseInt(part);
                            if (pid > 100) return pid;
                        } catch (Exception ignored) {}
                    }
                }
            }
        } catch (Exception ignored) {}

        try {
            String[] cmd = new String[]{"su", "-c", "ps -A"};
            Process p = Runtime.getRuntime().exec(cmd);
            BufferedReader r = new BufferedReader(new InputStreamReader(p.getInputStream()));
            String line;
            while ((line = r.readLine()) != null) {
                if (line.contains("com.movtery.zalithlauncher.v2:game")) {
                    for (String part : line.trim().split("\\s+")) {
                        try {
                            int pid = Integer.parseInt(part);
                            if (pid > 100) return pid;
                        } catch (Exception ignored) {}
                    }
                }
            }
        } catch (Exception ignored) {}

        return -1;
    }

    int getPid(String pkg) {
        try {
            Process p = Runtime.getRuntime().exec(new String[]{"pidof", pkg});
            BufferedReader r = new BufferedReader(new InputStreamReader(p.getInputStream()));
            String line = r.readLine();
            if (line != null && !line.isEmpty()) {
                return Integer.parseInt(line.trim().split("[ ]+")[0]);
            }
        } catch (Exception ignored) {}

        try {
            Process p = Runtime.getRuntime().exec(new String[]{"su", "-c", "pidof " + pkg});
            BufferedReader r = new BufferedReader(new InputStreamReader(p.getInputStream()));
            String line = r.readLine();
            if (line != null && !line.isEmpty()) {
                return Integer.parseInt(line.trim().split("[ ]+")[0]);
            }
        } catch (Exception ignored) {}

        try {
            Process p = Runtime.getRuntime().exec(new String[]{"ps", "-A"});
            BufferedReader r = new BufferedReader(new InputStreamReader(p.getInputStream()));
            String line;
            while ((line = r.readLine()) != null) {
                String lower = line.toLowerCase();
                if (lower.contains(pkg.toLowerCase()) || lower.contains("zalith")) {
                    for (String part : line.trim().split("\\s+")) {
                        try {
                            int pid = Integer.parseInt(part);
                            if (pid > 100) return pid;
                        } catch (Exception ignored) {}
                    }
                }
            }
        } catch (Exception ignored) {}

        try {
            Process p = Runtime.getRuntime().exec(new String[]{"su", "-c", "ps -A"});
            BufferedReader r = new BufferedReader(new InputStreamReader(p.getInputStream()));
            String line;
            while ((line = r.readLine()) != null) {
                String lower = line.toLowerCase();
                if (lower.contains(pkg.toLowerCase()) || lower.contains("zalith")) {
                    for (String part : line.trim().split("\\s+")) {
                        try {
                            int pid = Integer.parseInt(part);
                            if (pid > 100) return pid;
                        } catch (Exception ignored) {}
                    }
                }
            }
        } catch (Exception ignored) {}

        try {
            ActivityManager am = (ActivityManager) getSystemService("activity");
            Iterator it = am.getRunningAppProcesses().iterator();
            while (it.hasNext()) {
                ActivityManager.RunningAppProcessInfo info = (ActivityManager.RunningAppProcessInfo) it.next();
                String name = info.processName.toLowerCase();
                if (name.contains("zalith") || info.processName.equals(pkg)) {
                    return info.pid;
                }
            }
        } catch (Exception ignored) {}

        return -1;
    }

    boolean fetch(String urlStr, String outPath) {
        try {
            append("[*] fetching " + urlStr);
            URL url = new URL(urlStr);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setInstanceFollowRedirects(true);
            conn.setConnectTimeout(15000);
            conn.setReadTimeout(15000);
            conn.setRequestProperty("User-Agent", "Mozilla/5.0");
            int code = conn.getResponseCode();
            append("[*] http " + code + " " + conn.getContentType() + " len=" + conn.getContentLength());
            if (code >= 400) return false;
            InputStream in = conn.getInputStream();
            FileOutputStream out = new FileOutputStream(outPath);
            byte[] buf = new byte[8192];
            long total = 0;
            int len;
            while ((len = in.read(buf)) != -1) {
                out.write(buf, 0, len);
                total += len;
            }
            out.close();
            in.close();
            append("[*] saved " + total + " bytes -> " + outPath);
            return total > 1000;
        } catch (Exception e) {
            append("[-] fetch fail " + e);
            return false;
        }
    }

    void copyAsset(String name, String outPath) throws Exception {
        InputStream in = getAssets().open(name);
        FileOutputStream out = new FileOutputStream(outPath);
        byte[] buf = new byte[8192];
        int len;
        while ((len = in.read(buf)) > 0) out.write(buf, 0, len);
        in.close();
        out.close();
    }

    void doInject() {
        new Thread(this::runInject).start();
    }

    void doWrap() {
        new Thread(this::runWrap).start();
    }

    void runInject() {
        try {
            String filesDir = getFilesDir().getAbsolutePath();
            String url = urlBox.getText().toString().trim();
            if (url.isEmpty()) url = defaultUrl;

            // Extract bundled fallback files
            append("[*] extracting bundled fallback...");
            copyAsset("injector_arm64", filesDir + "/injector_arm64");
            Runtime.getRuntime().exec(new String[]{"chmod", "755", filesDir + "/injector_arm64"}).waitFor();
            copyAsset("libdoomsday.so", filesDir + "/libdoomsday.so");
            Runtime.getRuntime().exec(new String[]{"chmod", "755", filesDir + "/libdoomsday.so"}).waitFor();

            String jarTmp = filesDir + "/libdoomsday_tmp.so";
            String gameLibPath = "/data/data/com.movtery.zalithlauncher.v2/files/libdoomsday.so";
            String localTmpLib = "/data/local/tmp/libdoomsday.so";

            // Copy to game data dir
            try {
                Runtime.getRuntime().exec(new String[]{"su", "-c",
                    "cp " + filesDir + "/libdoomsday.so " + gameLibPath + " && chmod 755 " + gameLibPath + " && chcon u:object_r:app_data_file:s0 " + gameLibPath}).waitFor();
            } catch (Exception ignored) {}

            // Copy to local tmp
            try {
                Runtime.getRuntime().exec(new String[]{"su", "-c",
                    "cp " + filesDir + "/libdoomsday.so " + localTmpLib + " 2>/dev/null; chmod 755 " + localTmpLib + " 2>/dev/null"}).waitFor();
            } catch (Exception ignored) {}

            // Try to fetch latest jar
            String jarPath = filesDir + "/doomsday-latest.jar";
            String gameJarPath = "/data/local/tmp/DoomsDay.jar";
            boolean fetched;
            if (url.endsWith(".so")) {
                fetched = fetch(url, jarPath);
                if (fetched) {
                    try {
                        Runtime.getRuntime().exec(new String[]{"su", "-c",
                            "cp " + jarPath + " " + gameLibPath + " && chmod 644 " + gameLibPath + " 2>/dev/null && chmod 755 " + gameLibPath + " 2>/dev/null"}).waitFor();
                    } catch (Exception ignored) {}
                }
            } else {
                fetched = fetch(url, gameJarPath);
                if (fetched) {
                    append("[*] got jar, will use dex inject via frida helper if ptrace fails");
                    try {
                        Runtime.getRuntime().exec(new String[]{"su", "-c",
                            "cp " + jarPath + " /data/local/tmp/doomsday.dex 2>/dev/null"}).waitFor();
                    } catch (Exception ignored) {}

                    try {
                        Runtime.getRuntime().exec(new String[]{"su", "-c",
                            "cp " + gameJarPath + " /data/data/com.movtery.zalithlauncher.v2/files/DoomsDay.jar && chmod 644 /data/data/com.movtery.zalithlauncher.v2/files/DoomsDay.jar"}).waitFor();
                    } catch (Exception ignored) {}
                } else {
                    String fallbackUrl = url.replace(".jar", ".so");
                    if (!fallbackUrl.equals(url)) {
                        fetched = fetch(fallbackUrl, jarTmp);
                    }
                }
            }

            if (!fetched) {
                append("[*] fetch failed, using bundled libdoomsday.so");
                try {
                    Runtime.getRuntime().exec(new String[]{"su", "-c",
                        "cp " + filesDir + "/libdoomsday.so " + gameLibPath + " && chmod 755 " + gameLibPath + " && chcon u:object_r:app_data_file:s0 " + gameLibPath}).waitFor();
                } catch (Exception ignored) {}
                try {
                    Runtime.getRuntime().exec(new String[]{"su", "-c",
                        "cp " + filesDir + "/libdoomsday.so " + localTmpLib + " && chmod 755 " + localTmpLib}).waitFor();
                } catch (Exception ignored) {}
            }

            if (new File(jarTmp).exists()) {
                append("[+] using fresh " + jarTmp);
            }

            // Set SELinux contexts
            try {
                Runtime.getRuntime().exec(new String[]{"su", "-c",
                    "cp " + jarTmp + " " + localTmpLib + " 2>/dev/null && chmod 755 " + localTmpLib + " && chcon u:object_r:tmpfs:s0 " + localTmpLib}).waitFor();
            } catch (Exception ignored) {}

            // Set full SELinux context chain
            try {
                Runtime.getRuntime().exec(new String[]{"su", "-c",
                    "cp " + filesDir + "/libdoomsday.so " + gameLibPath + " && chmod 755 " + gameLibPath + " && chcon u:object_r:app_data_file:s0 " + gameLibPath}).waitFor();
            } catch (Exception ignored) {}

            // Get PID
            String manualPidStr = manualPidBox.getText().toString().trim();
            int pid = -1;
            String targetPkg = pkg;
            if (!manualPidStr.isEmpty()) {
                try {
                    pid = Integer.parseInt(manualPidStr);
                    targetPkg = "manual";
                } catch (Exception ignored) {}
            }
            if (pid == -1) pid = getPid(targetPkg);
            if (pid == -1 && !targetPkg.equals("manual")) {
                pid = getPid(altPkg);
            }
            if (pid == -1) {
                append("[-] Zalith not running. Open Zalith then Play then inject.");
                return;
            }

            append("[*] target " + targetPkg + " pid " + pid);

            // Run injector
            String cmd = filesDir + "/injector_arm64 " + pid + " " + localTmpLib;
            append("[*] exec: " + cmd);

            Process proc = Runtime.getRuntime().exec(new String[]{"su", "-c", cmd});
            BufferedReader stdout = new BufferedReader(new InputStreamReader(proc.getInputStream()));
            BufferedReader stderr = new BufferedReader(new InputStreamReader(proc.getErrorStream()));
            String line;
            while ((line = stdout.readLine()) != null) append(line);
            while ((line = stderr.readLine()) != null) append(line);
            int exit = proc.waitFor();
            append("[*] injector exit " + exit);

            if (exit != 0) {
                append("[*] ptrace failed (no root?). Trying Frida dex inject for jar...");
                if (new File(gameJarPath).exists()) {
                    String fridaCmd = "frida -U -f " + targetPkg + " -l /data/local/tmp/doomsday_zalith.js --no-pause";
                    append("[*] " + fridaCmd);
                }
                append("[-] Need root for native. Without root use Repack or Frida.");
            } else {
                append("[+] injected! logcat -s DOOMSDAY");
            }
        } catch (Exception e) {
            append("[-] " + e);
            StringWriter sw = new StringWriter();
            e.printStackTrace(new PrintWriter(sw));
            append(sw.toString());
        }
    }

    void runWrap() {
        try {
            String filesDir = getFilesDir().getAbsolutePath();
            String localLib = "/data/local/tmp/libdoomsday.so";
            String appLib = filesDir + "/libdoomsday.so";

            try {
                Runtime.getRuntime().exec(new String[]{"su", "-c",
                    "cp " + appLib + " " + localLib + " && chmod 755 " + localLib + " && chcon u:object_r:tmpfs:s0 " + localLib}).waitFor();
            } catch (Exception ignored) {}

            append("[*] wrap LD_PRELOAD=" + localLib);
            try {
                Process p = Runtime.getRuntime().exec(new String[]{"su", "-c",
                    "setprop wrap." + pkg + " 'LD_PRELOAD=" + localLib + "'"});
                BufferedReader r = new BufferedReader(new InputStreamReader(p.getInputStream()));
                BufferedReader e = new BufferedReader(new InputStreamReader(p.getErrorStream()));
                String line;
                while ((line = r.readLine()) != null) append(line);
                while ((line = e.readLine()) != null) append(line);
                p.waitFor();
            } catch (Exception ignored) {}

            try {
                Process p = Runtime.getRuntime().exec(new String[]{"su", "-c", "getprop wrap." + pkg});
                BufferedReader r = new BufferedReader(new InputStreamReader(p.getInputStream()));
                String line;
                while ((line = r.readLine()) != null) append("[*] wrap prop: " + line);
                p.waitFor();
            } catch (Exception ignored) {}

            append("[*] force-stop " + pkg);
            try {
                Runtime.getRuntime().exec(new String[]{"su", "-c", "am force-stop " + pkg}).waitFor();
            } catch (Exception ignored) {}

            append("[+] WRAP set. Now launch Zalith again \u2014 lib will auto-load. Check logcat -s DOOMSDAY");
            append("[*] to undo: su -c 'setprop wrap." + pkg + " '''");
        } catch (Exception e) {
            append("[-] wrap fail " + e);
        }
    }

    void runChildInject() {
        try {
            String filesDir = getFilesDir().getAbsolutePath();
            String url = urlBox.getText().toString().trim();
            if (url.isEmpty()) url = defaultUrl;

            String gameLib = "/data/data/com.movtery.zalithlauncher.v2/files/libdoomsday.so";
            String gameJar = "/data/data/com.movtery.zalithlauncher.v2/files/DoomsDay.jar";

            // Step 1: Extract bundled fallback files
            append("[*] extracting bundled assets...");
            try {
                copyAsset("injector_arm64", filesDir + "/injector_arm64");
                Runtime.getRuntime().exec(new String[]{"chmod", "755", filesDir + "/injector_arm64"}).waitFor();
            } catch (Exception e) {
                append("[-] extract injector fail " + e);
            }

            try {
                copyAsset("libdoomsday.so", filesDir + "/libdoomsday.so");
                Runtime.getRuntime().exec(new String[]{"chmod", "755", filesDir + "/libdoomsday.so"}).waitFor();
            } catch (Exception ignored) {}

            // Step 2: Auto-fetch latest DoomsDay from website
            append("[*] auto-fetching latest from: " + url);
            boolean fetchedJar = false;
            boolean fetchedSo = false;

            if (url.endsWith(".so")) {
                // Fetching a native .so
                String soPath = filesDir + "/doomsday-latest.so";
                fetchedSo = fetch(url, soPath);
                if (fetchedSo) {
                    // Copy fetched .so to game dir for injection
                    try { Runtime.getRuntime().exec(new String[]{"su", "-c", "cp " + soPath + " " + gameLib + " && chmod 755 " + gameLib + " && chcon u:object_r:app_data_file:s0:c175,c258,c512,c768 " + gameLib}).waitFor(); } catch (Exception ignored) {}
                    append("[+] fetched latest .so -> injected as payload");
                }
            } else {
                // Fetching a .jar — this is the main DoomsDay mod jar
                String jarTmp = filesDir + "/doomsday-latest.jar";
                fetchedJar = fetch(url, jarTmp);
                if (fetchedJar) {
                    // Copy fetched jar to game files dir so injected native lib can load it
                    try { Runtime.getRuntime().exec(new String[]{"su", "-c", "cp " + jarTmp + " " + gameJar + " && chmod 644 " + gameJar + " && chcon u:object_r:app_data_file:s0:c175,c258,c512,c768 " + gameJar}).waitFor(); } catch (Exception ignored) {}
                    append("[+] fetched latest .jar -> " + gameJar);

                    // libdoomsday.so is bundled — no need to fetch from server
                }
            }

            // Step 3: Ensure injection payload (libdoomsday.so) is in place
            if (fetchedSo) {
                append("[*] using freshly fetched native lib as injection payload");
            } else {
                // Use bundled libdoomsday.so as injection payload
                append("[*] using bundled libdoomsday.so as injection payload");
                try { Runtime.getRuntime().exec(new String[]{"su", "-c", "cp " + filesDir + "/libdoomsday.so " + gameLib + " && chmod 755 " + gameLib + " && chcon u:object_r:app_data_file:s0:c175,c258,c512,c768 " + gameLib}).waitFor(); } catch (Exception ignored) {}
            }

            if (fetchedJar) {
                append("[+] DoomsDay.jar ready at " + gameJar + " — will be loaded by injected native lib");
            } else {
                append("[*] jar fetch failed, using bundled DoomsDay.jar");
                try {
                    copyAsset("DoomsDay.jar", filesDir + "/DoomsDay.jar");
                    Runtime.getRuntime().exec(new String[]{"su", "-c", "cp " + filesDir + "/DoomsDay.jar " + gameJar + " && chmod 644 " + gameJar + " && chcon u:object_r:app_data_file:s0:c175,c258,c512,c768 " + gameJar}).waitFor();
                } catch (Exception ignored) {}
            }

            // Step 4: Find Minecraft child PID
            int pid = getMinecraftPid();
            if (pid == -1) {
                append("[-] Minecraft child not found. Start Zalith -> Play -> wait for world, then tap again.\n" + dumpPs());
                return;
            }
            append("[*] Minecraft child pid " + pid + "\n" + dumpPs());

            // Step 5: Check if already injected
            boolean alreadyInjected = false;
            try {
                Process p = Runtime.getRuntime().exec(new String[]{"su", "-c",
                    "grep -q libdoomsday /proc/" + pid + "/maps && echo yes"});
                BufferedReader r = new BufferedReader(new InputStreamReader(p.getInputStream()));
                String line = r.readLine();
                if (line != null) line = line.trim();
                else line = "";
                alreadyInjected = "yes".equals(line);
                p.waitFor();
            } catch (Exception ignored) {}

            if (alreadyInjected) {
                append("[*] already injected -> forcing re-inject anyway");
                // Fall through to force re-inject after self-destruct
            }

            // Step 6: Inject libdoomsday.so into child process (use game dir path for SELinux)
            String cmd = filesDir + "/injector_arm64 " + pid + " " + gameLib;
            append("[*] exec: " + cmd);

            Process proc = Runtime.getRuntime().exec(new String[]{"su", "-c", cmd});
            BufferedReader stdout = new BufferedReader(new InputStreamReader(proc.getInputStream()));
            BufferedReader stderr = new BufferedReader(new InputStreamReader(proc.getErrorStream()));
            String line;
            while ((line = stdout.readLine()) != null) append(line);
            while ((line = stderr.readLine()) != null) append(line);
            int exit = proc.waitFor();
            append("[*] child injector exit " + exit + (exit == 0 ? " [+] injected child (SS-proof)" : " [-] failed"));

            if (exit == 0 && fetchedJar) {
                append("[+] injected with auto-fetched DoomsDay.jar — check logcat -s DOOMSDAY");
            }
        } catch (Exception e) {
            append("[-] " + e);
        }
    }

    void runRemoveWrap() {
        try {
            Runtime.getRuntime().exec(new String[]{"su", "-c", "resetprop -p wrap." + pkg + " --delete"}).waitFor();
            Runtime.getRuntime().exec(new String[]{"su", "-c", "setprop wrap." + pkg + " ''"}).waitFor();
            append("[*] wrap cleared");
        } catch (Exception ignored) {}
    }

    void runCheckPids() {
        try {
            int launcherPid = getPid(pkg);
            int altPid = getPid(altPkg);
            int childPid = getMinecraftPid();
            append("launcher " + pkg + "=" + launcherPid + " alt=" + altPid + " child=" + childPid + "\n" + dumpPs());
        } catch (Exception e) {
            append("" + e);
        }
    }

    protected void onCreate(Bundle b) {
        super.onCreate(b);

        Window w = getWindow();
        w.setStatusBarColor(0xFFF8F5EE);

        FrameLayout root = new FrameLayout(this);
        root.setBackgroundColor(0xFFF8F5EE);

        // Gradient background view
        View bg = new View(this);
        GradientDrawable gd = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{0x332F6BFF, 0x0070812});
        gd.setGradientType(GradientDrawable.RADIAL_GRADIENT);
        gd.setGradientRadius((float) dp(420));
        bg.setBackground(gd);
        FrameLayout.LayoutParams bgLp = new FrameLayout.LayoutParams(dp(900), dp(600));
        bgLp.gravity = Gravity.CENTER;
        bgLp.topMargin = -dp(180);
        root.addView(bg, bgLp);

        // Decorative circle
        View circle = new View(this);
        GradientDrawable cgd = new GradientDrawable();
        cgd.setColor(0x116ECBFF);
        cgd.setCornerRadius((float) dp(300));
        circle.setBackground(cgd);
        circle.setAlpha(0.5f);
        FrameLayout.LayoutParams cLp = new FrameLayout.LayoutParams(dp(520), dp(520));
        cLp.gravity = Gravity.END | Gravity.TOP;
        cLp.topMargin = dp(120);
        cLp.rightMargin = -dp(120);
        root.addView(circle, cLp);

        ScrollView scroll = new ScrollView(this);
        scroll.setBackgroundColor(Color.TRANSPARENT);

        LinearLayout main = new LinearLayout(this);
        main.setOrientation(LinearLayout.VERTICAL);
        int pad = dp(18);
        main.setPadding(pad, pad, pad, pad);

        // Header card
        LinearLayout header = new LinearLayout(this);
        header.setOrientation(LinearLayout.VERTICAL);
        header.setPadding(pad, pad, pad, pad);
        header.setBackground(cardBgStrong());
        header.setElevation((float) dp(0));

        LinearLayout headerInner = new LinearLayout(this);
        headerInner.setOrientation(LinearLayout.HORIZONTAL);
        headerInner.setGravity(Gravity.CENTER_VERTICAL);

        // Icon
        View iconBg = new View(this);
        GradientDrawable iconGd = new GradientDrawable(GradientDrawable.Orientation.TL_BR, new int[]{0xFF2F6BFF, 0xFF4D8AFF});
        iconGd.setCornerRadius((float) dp(12));
        iconBg.setBackground(iconGd);
        FrameLayout iconFrame = new FrameLayout(this);
        iconFrame.addView(iconBg, new FrameLayout.LayoutParams(dp(40), dp(40)));
        TextView iconText = new TextView(this);
        iconText.setText("\u25C6");
        iconText.setTextColor(Color.WHITE);
        iconText.setTextSize(18.0f);
        iconText.setGravity(Gravity.CENTER);
        iconFrame.addView(iconText, new FrameLayout.LayoutParams(dp(40), dp(40)));
        headerInner.addView(iconFrame);

        LinearLayout titleCol = new LinearLayout(this);
        titleCol.setOrientation(LinearLayout.VERTICAL);
        titleCol.setPadding(dp(12), 0, 0, 0);
        TextView title = new TextView(this);
        title.setText("nova");
        title.setTextColor(0xFFFF8F00);
        title.setTextSize(20.0f);
        title.setTypeface(Typeface.create("sans-serif", Typeface.BOLD));
        title.setLetterSpacing(0.02f);
        titleCol.addView(title);
        TextView subtitle = new TextView(this);
        subtitle.setText("DOOMSDAY \u2022 FINTECH INJECTOR");
        subtitle.setTextColor(0xFF8A90A8);
        subtitle.setTextSize(9.0f);
        subtitle.setLetterSpacing(0.14f);
        subtitle.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
        titleCol.addView(subtitle);
        headerInner.addView(titleCol);

        // Spacer
        View spacer = new View(this);
        spacer.setLayoutParams(new LinearLayout.LayoutParams(0, -1, 1.0f));
        headerInner.addView(spacer);

        TextView premium = new TextView(this);
        premium.setText("\u25CF  PREMIUM");
        premium.setTextColor(0xFFFF198A);
        premium.setTextSize(9.0f);
        premium.setTypeface(Typeface.create("sans-serif-medium", Typeface.BOLD));
        premium.setPadding(dp(10), dp(5), dp(10), dp(5));
        GradientDrawable pBg = new GradientDrawable();
        pBg.setColor(0x1A00E676);
        pBg.setCornerRadius((float) dp(20));
        pBg.setStroke(dp(1), 0x3300E676);
        premium.setBackground(pBg);
        headerInner.addView(premium);

        header.addView(headerInner);

        // Divider
        View div = new View(this);
        div.setBackgroundColor(0x12FFFFFF);
        LinearLayout.LayoutParams divLp = new LinearLayout.LayoutParams(-1, dp(1));
        divLp.setMargins(0, dp(14), 0, dp(14));
        div.setLayoutParams(divLp);
        header.addView(div);

        // Stats row
        LinearLayout stats = new LinearLayout(this);
        stats.setOrientation(LinearLayout.HORIZONTAL);
        addStat(stats, "A15", "16KB \u2022 root");
        addStat(stats, "TARGET", "Movtery V2");
        addStat(stats, "MODE", "SS-proof");
        header.addView(stats);

        main.addView(header);
        addSpace(main, dp(18));

        // Source URL card
        LinearLayout urlCard = new LinearLayout(this);
        urlCard.setOrientation(LinearLayout.VERTICAL);
        urlCard.setPadding(pad, pad, pad, pad);
        urlCard.setBackground(cardBg());

        TextView urlLabel = new TextView(this);
        urlLabel.setText("DOOMSDAY SOURCE");
        urlLabel.setTextColor(0xFF8A90A8);
        urlLabel.setTextSize(9.0f);
        urlLabel.setLetterSpacing(0.14f);
        urlLabel.setTypeface(Typeface.create("sans-serif-medium", Typeface.BOLD));
        urlCard.addView(urlLabel);

        urlBox = new EditText(this);
        urlBox.setText(defaultUrl);
        urlBox.setTextColor(0xFFFF8F00);
        urlBox.setHintTextColor(0xFFA5A5A0);
        urlBox.setTextSize(11.0f);
        urlBox.setBackground(null);
        urlBox.setPadding(0, dp(8), 0, 0);
        urlBox.setSingleLine(true);
        urlBox.setEllipsize(TextUtils.TruncateAt.MIDDLE);
        urlBox.setTypeface(Typeface.MONOSPACE);
        urlCard.addView(urlBox);

        View urlDiv = new View(this);
        urlDiv.setBackgroundColor(0x12FFFFFF);
        urlDiv.setLayoutParams(new LinearLayout.LayoutParams(-1, dp(1)));
        urlCard.addView(urlDiv);

        TextView urlHint = new TextView(this);
        urlHint.setText("Auto-fetches latest jar on inject  \u2022  edit if CDN changes");
        urlHint.setTextColor(0xFF959590);
        urlHint.setTextSize(9.0f);
        urlHint.setPadding(0, dp(8), 0, 0);
        urlCard.addView(urlHint);

        main.addView(urlCard);
        addSpace(main, dp(10));

        // Buttons
        Button injectBtn = makePrimary("INJECT MINECRAFT CHILD  \u2014  SS-PROOF", v -> new Thread(this::runChildInject).start());
        main.addView(injectBtn);

        Button fetchBtn = makeSecondary("FETCH + INJECT  (legacy ptrace)", v -> doInject());
        main.addView(fetchBtn);

        Button wrapBtn = makeSecondary("WRAP INJECT  (A15 no-ptrace)", v -> doWrap());
        main.addView(wrapBtn);

        LinearLayout smallBtns = new LinearLayout(this);
        smallBtns.setOrientation(LinearLayout.HORIZONTAL);
        smallBtns.addView(makeSmallButton("REMOVE WRAP", v -> new Thread(this::runRemoveWrap).start()));
        smallBtns.addView(makeSmallButton("CHECK PIDS", v -> new Thread(this::runCheckPids).start()));
        main.addView(smallBtns);

        addSpace(main, dp(12));

        // Manual PID card
        LinearLayout pidCard = new LinearLayout(this);
        pidCard.setOrientation(LinearLayout.VERTICAL);
        pidCard.setPadding(pad, pad, pad, pad);
        pidCard.setBackground(cardBg());

        TextView pidLabel = new TextView(this);
        pidLabel.setText("MANUAL PID");
        pidLabel.setTextColor(0xFF8A90A8);
        pidLabel.setTextSize(9.0f);
        pidLabel.setLetterSpacing(0.12f);
        pidLabel.setTypeface(Typeface.create("sans-serif-medium", Typeface.BOLD));
        pidCard.addView(pidLabel);

        manualPidBox = new EditText(this);
        manualPidBox.setHint("e.g. 18318");
        manualPidBox.setTextColor(0xFFFF8F00);
        manualPidBox.setHintTextColor(0xFFA5A5A0);
        manualPidBox.setTextSize(12.0f);
        manualPidBox.setBackground(null);
        manualPidBox.setTypeface(Typeface.MONOSPACE);
        pidCard.addView(manualPidBox);

        View pidDiv = new View(this);
        pidDiv.setBackgroundColor(0x12FFFFFF);
        pidDiv.setLayoutParams(new LinearLayout.LayoutParams(-1, dp(1)));
        pidCard.addView(pidDiv);

        main.addView(pidCard);
        addSpace(main, dp(10));

        // Terminal card
        LinearLayout termCard = new LinearLayout(this);
        termCard.setOrientation(LinearLayout.VERTICAL);
        termCard.setPadding(pad, pad, pad, pad);
        termCard.setBackground(cardBgStrong());

        TextView termLabel = new TextView(this);
        termLabel.setText("TERMINAL");
        termLabel.setTextColor(0xFF8A90A8);
        termLabel.setTextSize(9.0f);
        termLabel.setLetterSpacing(0.16f);
        termLabel.setTypeface(Typeface.create("sans-serif-medium", Typeface.BOLD));
        termCard.addView(termLabel);

        log = new TextView(this);
        log.setTextColor(0xFF6EEF01);
        log.setTextSize(11.0f);
        log.setTypeface(Typeface.MONOSPACE);
        log.setText("[*] ready \u2014 Zalith \u2192 Play \u2192 INJECT MINECRAFT CHILD\n");
        log.setLineSpacing((float) dp(2), 1.0f);
        termCard.addView(log);

        main.addView(termCard);

        scroll.addView(main, new FrameLayout.LayoutParams(-1, -1));
        root.addView(scroll, new FrameLayout.LayoutParams(-1, -1));

        setContentView(root);
    }
}
