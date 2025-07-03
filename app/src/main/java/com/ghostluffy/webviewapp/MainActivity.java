package com.ghostluffy.webviewapp;

import android.os.Bundle;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.appcompat.app.AppCompatActivity;

public class MainActivity extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().getDecorView().setSystemUiVisibility(
            WebView.SYSTEM_UI_FLAG_FULLSCREEN | WebView.SYSTEM_UI_FLAG_HIDE_NAVIGATION
        );
        setContentView(R.layout.activity_main);

        WebView webView = findViewById(R.id.webView);
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setCacheMode(WebSettings.LOAD_DEFAULT);

        webView.setWebViewClient(new WebViewClient());
        webView.loadUrl("https://ghost-luffy-obelisk.vercel.app");
    }
}