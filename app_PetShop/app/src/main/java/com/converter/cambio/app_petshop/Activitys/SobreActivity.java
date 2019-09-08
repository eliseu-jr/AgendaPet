package com.converter.cambio.app_petshop.Activitys;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import com.converter.cambio.app_petshop.R;

public class SobreActivity extends AppCompatActivity {
    private Button btnAgendamento;

    @Override
    protected void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_sobre);
        btnAgendamento = findViewById(R.id.sob_btn_agendamento);

        btnAgendamento.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(SobreActivity.this, MenuLateralActivity.class);
                startActivity(intent);
            }
        });
    }
}
