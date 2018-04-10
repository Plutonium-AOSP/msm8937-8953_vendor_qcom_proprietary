/*
 * Copyright (c) 2015 Qualcomm Technologies, Inc.
 * All Rights Reserved.
 * Confidential and Proprietary - Qualcomm Technologies, Inc.
 *
 * Not a Contribution.
 * Apache license notifications and license are retained
 * for attribution purposes only.
 */

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
package android.hardware.iris;

import android.hardware.iris.IIrisDaemonCallback;
import android.hardware.iris.IrisIdentifier;

/**
 * Communication channel from IrisService to IrisDaemon (irisd)
 * @hide
 */

interface IIrisDaemon {
    int authenticate(long sessionId, int groupId, int uid);
    int cancelAuthentication();
    int enroll(in byte [] token, int groupId, int timeout, int uid);
    int cancelEnrollment();
    long preEnroll();
    int remove(int irisId, int groupId);
    long getAuthenticatorId();
    int setActiveGroup(int groupId, in byte[] path);
    long openHal();
    int closeHal();
    void init(IIrisDaemonCallback callback);
    int postEnroll();
    List<IrisIdentifier> enumerateEnrollment();
}