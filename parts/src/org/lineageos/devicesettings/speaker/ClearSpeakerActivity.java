package org.lineageos.devicesettings.speaker;

import android.app.Activity;
import android.app.Fragment;
import android.os.Bundle;
import android.view.MenuItem;

public class ClearSpeakerActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        getActionBar().setDisplayHomeAsUpEnabled(true);

        Fragment fragment = getFragmentManager().findFragmentById(android.R.id.content);
        ClearSpeakerFragment clearSpeakerFragment;
        if (fragment == null) {
            clearSpeakerFragment = new ClearSpeakerFragment();
            getFragmentManager().beginTransaction()
                    .add(android.R.id.content, clearSpeakerFragment)
                    .commit();
        }
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == android.R.id.home) {
            finish();
            return true;
        }
        return super.onOptionsItemSelected(item);
    }
}
