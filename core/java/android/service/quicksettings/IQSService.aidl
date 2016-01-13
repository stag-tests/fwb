/*
 * Copyright 2015, The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package android.service.quicksettings;

import android.content.ComponentName;
import android.graphics.drawable.Icon;
import android.service.quicksettings.Tile;

/**
 * @hide
 */
interface IQSService {
    void updateQsTile(in Tile tile);
    void updateStatusIcon(in Tile tile, in Icon icon,
            String contentDescription);
    void onShowDialog(in Tile tile);
    void onStartActivity(in Tile tile);
    void setTileMode(in ComponentName component, int mode);
    boolean isLocked();
    boolean isSecure();
    void startUnlockAndRun(in Tile tile);
}
