package com.wellbeing.wellbeingappUs;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.FileUtils;

import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

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

import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity {
    public static MethodChannel methodChannel;
    final String channel = "wellbeings/channel";
    private InputStream inputStream;

    @RequiresApi(api = Build.VERSION_CODES.O)
    @Override

    public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
        super.configureFlutterEngine(flutterEngine);
        GeneratedPluginRegistrant.registerWith(flutterEngine);
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
                            Object value = object.get(key);
                            jsonMap.put(key, value);
                        }
                        arrayList.add(jsonMap);
                    }

                    result.success(arrayList);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else if (call.method.equals("resolveContent")) {
                ArrayList<String> path = (ArrayList<String>) call.arguments;
                Context context = this.getApplicationContext();
                try {

                    inputStream = context.getContentResolver().openInputStream(Uri.parse(path.get(0)));
                    String fileName = path.get(0).split("/")[path.get(0).split("/").length - 1];
                    String fielPath = context.getFilesDir().getPath();
                    File tempFile = new File(fielPath + "/" + fileName);
                    OutputStream outputStream = new FileOutputStream(tempFile);
                    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
                        FileUtils.copy(inputStream, outputStream);
                        result.success(tempFile.getPath());
                    }

                } catch (FileNotFoundException e) {
                    e.printStackTrace();
                } catch (IOException e) {
                    e.printStackTrace();
                }

            } else if (call.method.equals("generateAvatar")) {
                Intent intent1 = new Intent(this, GenerateAvatarActivity.class);
                startActivity(intent1);
            }
            // FFmpeg conversion method call removed
        });
    }
}