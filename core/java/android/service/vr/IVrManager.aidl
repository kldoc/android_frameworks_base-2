/**
 * Copyright (c) 2016, The Android Open Source Project
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

package android.service.vr;

import android.service.vr.IVrStateCallbacks;
import android.service.vr.IPersistentVrStateCallbacks;

/** @hide */
interface IVrManager {

    /**
     * Add a callback to be notified when VR mode state changes.
     *
     * @param cb the callback instance to add.
     */
    void registerListener(in IVrStateCallbacks cb);

    /**
     * Remove the callack from the current set of registered callbacks.
     *
     * @param cb the callback to remove.
     */
    void unregisterListener(in IVrStateCallbacks cb);

    /**
     * Add a callback to be notified when persistent VR mode state changes.
     *
     * @param cb the callback instance to add.
     */
    void registerPersistentVrStateListener(in IPersistentVrStateCallbacks cb);

    /**
     * Remove the callack from the current set of registered callbacks.
     *
     * @param cb the callback to remove.
     */
    void unregisterPersistentVrStateListener(in IPersistentVrStateCallbacks cb);

    /**
     * Return current VR mode state.
     *
     * @return {@code true} if VR mode is enabled.
     */
    boolean getVrModeState();

    /**
     * Sets the persistent VR mode state of a device. When a device is in persistent VR mode it will
     * remain in VR mode even if the foreground does not specify VR mode being enabled. Mainly used
     * by VR viewers to indicate that a device is placed in a VR viewer.
     *
     * @param enabled true if the device should be placed in persistent VR mode.
     */
    void setPersistentVrModeEnabled(in boolean enabled);

    /**
     * Return current virtual display id.
     *
     * @return {@link android.view.Display.INVALID_DISPLAY} if there is no virtual display
     * currently, else return the display id of the virtual display
     */
    int getCompatibilityDisplayId();
}

