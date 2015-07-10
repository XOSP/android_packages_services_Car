/*
 * Copyright (C) 2015 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package android.support.car;

import android.content.Intent;
//import android.content.pm.ResolveInfo;

import android.support.car.CarInfo;
import android.support.car.CarUiInfo;
import android.support.car.ICarConnectionListener;

/** @hide */
interface ICar {
    int getVersion() = 0;
    IBinder getCarService(in String serviceName) = 1;
    CarInfo getCarInfo() = 2;
    CarUiInfo getCarUiInfo() = 3;
    boolean isConnectedToCar() = 4;
    int getCarConnectionType() = 5;
    void registerCarConnectionListener(int clientVersion, in ICarConnectionListener listener) = 6;
    void unregisterCarConnectionListener(in ICarConnectionListener listener) = 7;
    boolean startCarActivity(in Intent intent) = 8;
    /* TODO
    List<ResolveInfo> queryIntentCarProjectionServices(in Intent intent) = 9;
    List<ResolveInfo> queryAllowedServices(in Intent intent, int applicationType) = 10;
    boolean isPackageAllowed(in String packageName, int applicationType) = 11;*/
}
