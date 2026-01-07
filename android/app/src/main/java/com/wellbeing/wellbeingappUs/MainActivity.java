package com.wellbeing.wellbeingappUs;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.FileUtils;
import android.util.Log;

import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.fragment.app.FragmentActivity; // Required for FlutterFragmentActivity
import io.flutter.embedding.android.FlutterFragmentActivity; // IMPORTANT

import org.json.JSONObject;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugin.common.MethodChannel;

public class MainActivity extends FlutterFragmentActivity {   // ✅ FIXED
    public static MethodChannel methodChannel;
    final String channel = "wellbeings/channel";
    private InputStream inputStream;
    private static final String TAG = "MainActivity";

    @RequiresApi(api = Build.VERSION_CODES.O)
    @Override
    public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {

        super.configureFlutterEngine(flutterEngine);

        // ❌ REMOVE THIS (old embedding)
        // GeneratedPluginRegistrant.registerWith(flutterEngine);

        Intent intent = getIntent();
        Uri data = intent.getData();

        methodChannel = new MethodChannel(flutterEngine.getDartExecutor().getBinaryMessenger(), channel);

        methodChannel.setMethodCallHandler((call, result) -> {
            if (call.method.equals("getAppInfo")) {
                try {
                    final PackageManager pm = getPackageManager();
                    List<ApplicationInfo> packages = pm.getInstalledApplications(PackageManager.GET_META_DATA);

                    ArrayList<Map<String, Object>> arrayList = new ArrayList<>();

                    for (ApplicationInfo info : packages) {
                        JSONObject object = new JSONObject();
                        object.put("name", info.name);
                        object.put("icon", info.icon);
                        object.put("category", String.valueOf(info.category));

                        Map<String, Object> jsonMap = new HashMap<>();
                        Iterator<String> keys = object.keys();
                        while (keys.hasNext()) {
                            String key = keys.next();
                            jsonMap.put(key, object.get(key));
                        }
                        arrayList.add(jsonMap);
                    }

                    result.success(arrayList);

                } catch (Exception e) {
                    e.printStackTrace();
                    result.error("ERROR", "Failed to get app info", e.getMessage());
                }

            } else if (call.method.equals("resolveContent")) {

                ArrayList<String> path = (ArrayList<String>) call.arguments;
                Context context = this.getApplicationContext();

                try {
                    inputStream = context.getContentResolver().openInputStream(Uri.parse(path.get(0)));

                    String fileName = path.get(0).substring(path.get(0).lastIndexOf("/") + 1);
                    String filePath = context.getFilesDir().getPath();

                    File tempFile = new File(filePath + "/" + fileName);
                    OutputStream outputStream = new FileOutputStream(tempFile);

                    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
                        FileUtils.copy(inputStream, outputStream);
                        result.success(tempFile.getPath());
                    }

                } catch (Exception e) {
                    e.printStackTrace();
                    result.error("IO_ERROR", "Error resolving content", e.getMessage());
                }

            } else if (call.method.equals("generateAvatar")) {

                Intent intent1 = new Intent(this, GenerateAvatarActivity.class);
                startActivity(intent1);

            } else if (call.method.equals("convertMp4ToMp3")) {

                new Thread(() -> {
                    try {
                        String mp4Path = call.argument("mp4Path");
                        String outputPath = call.argument("outputPath");

                        if (mp4Path == null || outputPath == null) {
                            runOnUiThread(() -> result.error("INVALID_ARGS",
                                    "MP4 path or output path is null", null));
                            return;
                        }

                        Log.d(TAG, "Converting: " + mp4Path + " to " + outputPath);

                        AudioExtractor audioExtractor = new AudioExtractor();
                        audioExtractor.genVideoUsingMuxer(
                                mp4Path,
                                outputPath,
                                -1,
                                -1,
                                true,
                                false
                        );

                        Log.d(TAG, "Conversion successful: " + outputPath);
                        runOnUiThread(() -> result.success(outputPath));

                    } catch (Exception e) {
                        e.printStackTrace();
                        Log.e(TAG, "Conversion failed: " + e.getMessage());
                        runOnUiThread(() -> result.error("CONVERSION_FAILED",
                                e.getMessage(), null));
                    }
                }).start();

            } else {
                result.notImplemented();
            }
        });
    }
}
