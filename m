Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BA1CCCA472
	for <linux-phy@archiver.kernel.org>; Mon,  6 Oct 2025 22:20:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZcoCjT5coqB7YOfvt/zX44up4ArLnxxFYfD/1nKlpGM=; b=2eDgXNqWm47azZ
	Qb9Du2XX2XiaiV5sYSkngB8dwmuicYYi9KRfhrshNJ24qtD5UrGcm20a4ZWhZU7UNtEyv+/0ujOOP
	L21dwgvRuNxQvBJXi05CpMz7+NhXxb7UUzXvVtyBu3JJMBzgFzd6nwwIvF0O+URvYqjrxCasu1dWU
	0OkyMJoYkShfAHY0+kd+f5tdjpTjH3yXUV1RTQCQhkuM4AuBOjxj6a4k3VFhN9LONvxKUcLHRwfIc
	iUmZ2lcklpZ5/FfReRGKWMy/zDyIIL3nsJ1ylpAcFVj6sR1havPXxlqExzI1lnfw51p6u+nNa3ML4
	jSOZgyOOv1SsPzPIkh6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5tZ2-00000000uQU-09lU;
	Mon, 06 Oct 2025 22:20:16 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5tYz-00000000uPc-1JCC
	for linux-phy@lists.infradead.org;
	Mon, 06 Oct 2025 22:20:15 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 596Eq99S005359
	for <linux-phy@lists.infradead.org>; Mon, 6 Oct 2025 22:20:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=YaQd3cF9DM3
	ZawONJKkUUZT5oOk1utb/PQbw+Tb9ZII=; b=oOZwfOCBwgDoryc4mTe3JY8fHqi
	y5LqzEC/ozhIgi3WVGovhl/N8dTil69mpmCsP8FhRydMymbvvth1/C2JAuIr5cnh
	iQle4YBINg08PIQSkjyC5XJ+9EUUrNi6jJkw47wYmQrEcbdj/ymDIwxUj9tEiZFC
	Ry4jNI4Pkc2USTQkQEOThPEKiCkUJpbu8LJHZNMGsr6pQhU7wIfpbRqvkKrRc6PP
	DztODVrdpzUeWPx8IMdIBFDRTH+o4upmZNqRc1nJUghL//exiRcpZJTYsJ/Ay4xI
	9UwNem4aN59CH/hXCTFMCsCm3QANu+/kHtc5c1QO3/FgQGSxteu0QKPMQlQ==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49junu5bvj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 06 Oct 2025 22:20:12 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-780f82484faso3734799b3a.3
        for <linux-phy@lists.infradead.org>; Mon, 06 Oct 2025 15:20:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759789211; x=1760394011;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YaQd3cF9DM3ZawONJKkUUZT5oOk1utb/PQbw+Tb9ZII=;
        b=FYW/bX17DdEm1TXzLgalEfEBXLVJY6yiCNn0ridFJK8I0rtANH/TW0RnsgblgRP5QW
         Mcyz7X+sv4gjw/xGz2Zfmsdnm+3gYWeu3P2n6K7IGVNbybAL7OVn8nhjSDPP1ZI79u4h
         eEqQDQ34XYzOPkCUiNK2hiD/gV1tJkt5MKoMphsaTIy/QbWjxmQ6S4drDblLamWOQbSi
         Ul00+YNj44r+44nUIRzTslXtjUqjtRs/9RfzkFHLj1sUbhfnCM65/2zaPIVZzdlhAkSv
         eFiqedmIEkzPXMDQthPN4QB3jPxCLGvR+W+jdaqMNAkoYdCpzJrgEjrJlehQjc96R7hn
         4dQw==
X-Forwarded-Encrypted: i=1; AJvYcCVW3OKhGU8P1EFv8w69X0o15RQFk8FnuhD/DWsE59vtVGDVKnS8iY6veawzfq1qKnkMin5A86hoAjU=@lists.infradead.org
X-Gm-Message-State: AOJu0YylF2cz0FUmdg7KrUGJaqckMdgaiLVidWSagH0+cRVW2d/zElML
	aU2DlhuySRyC6KPC+/qK/OmCWf9tVxwq3iWstCrEj/NN113s8v7bChuHKYOLoeRsJQqMnvtgKq5
	sNun59FZnRkGSASzvq46m+54mCotKDOQt8hkdpvpIsEc+3Unc8P+XU0RxFoUWYJTCtf8R
X-Gm-Gg: ASbGncuWuCRvMStf78AiIn/6vWWEfejm9S3OzdVFnF9LwvDqIzwgRKmtAh28hSS2zcc
	RED0WYFzvzAtFUHullFUoDG2aRoh/gRWXsxNaK6s1IT9OGhRf3lLfRtK18aOQtq1RjS7q9NbT+u
	6s+vs1XrZ9q+nAwbU4rBZlbUzrvfDkIm0MmsgMyimzZaE+3V5UuDX4vlfau8r7DjyGQVBH6fDVo
	txwwFL5HXwp45VR2F7h6w6B5Eqy1egeWZR1jhuwY8ErpxeMyXJBevRflmk6H9Fml7BxMgkzKKZ3
	i22hBCkAVPAU1oHT25XNDSfRAxyTZL0q9FNiicqZntaiZDHX7GcbI6/33SIuRgvV+I9QLIbMmNB
	EyheR1P7eUjo6xSp0+yjKnw==
X-Received: by 2002:a05:6a00:2304:b0:781:1e91:fd8c with SMTP id d2e1a72fcca58-78c98d5d579mr15544431b3a.11.1759789211238;
        Mon, 06 Oct 2025 15:20:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEIm8mI+7X+Hd2BCDb5Dl4LJU7yRAMUsvYgqVVINq5kq0s+hlHcmFW7vgYhMca0ppEpo7MuMA==
X-Received: by 2002:a05:6a00:2304:b0:781:1e91:fd8c with SMTP id d2e1a72fcca58-78c98d5d579mr15544404b3a.11.1759789210762;
        Mon, 06 Oct 2025 15:20:10 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78b01fb281bsm13734968b3a.37.2025.10.06.15.20.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 15:20:10 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org, vkoul@kernel.org,
        gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v5 03/10] dt-bindings: phy: qcom-m31-eusb2: Add Glymur compatible
Date: Mon,  6 Oct 2025 15:19:55 -0700
Message-Id: <20251006222002.2182777-4-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com>
References: <20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: Kc0XbieSAuteesfYQIFDnhLQ4WLmH3EB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAyMyBTYWx0ZWRfX2OjmcBAy+QcW
 Gyfx1aMDsTFBEE0rJJYRGrX4tywZXtwfyLBEtV4/z7gjkecC699PawwakgZ8Yjb5gEnlzPUxHEE
 hk6iKVb123DobXsJXPBsMCoz7nQzK5Bw5XCGqvaga/BbUK2kPvmF6G15OAo2RE4rpyIy8FvfO/M
 +ObUlzUuUaWD6zbDtaT9SCdRAHLxgI5JQUjYR07g9yF0YJ9UgG+529i7Tuvwm0h4dcP3GPsEM46
 cEXtM0z4tlpOPYahRT122hg3JWcqS9jFGz+PbRqnYT4wmyjOADWT15FatgHNCutyDq3BBQz/gxN
 KcX/jNxHmveTsN7NGQLUKGGkJp9WJu1a7DiipZFqDJfmI1P4uxvLLpdtsw3vIwvVP1XwK/nHFqj
 NGHd0RmtI5sAuIpMEdW7lo4iS1TfLw==
X-Authority-Analysis: v=2.4 cv=CbIFJbrl c=1 sm=1 tr=0 ts=68e4409c cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=dJG6SERxbJy7wEyxA2sA:9
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: Kc0XbieSAuteesfYQIFDnhLQ4WLmH3EB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_06,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 clxscore=1015 adultscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 phishscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_152013_465494_C1CB5055 
X-CRM114-Status: GOOD (  11.89  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Add the Glymur compatible to the M31 eUSB2 PHY, and use the SM8750 as
the fallback.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 .../bindings/phy/qcom,m31-eusb2-phy.yaml      | 21 ++++++++++++++-----
 1 file changed, 16 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
index c84c62d0e8cb..0d5db71e0ad8 100644
--- a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
@@ -15,9 +15,12 @@ description:
 
 properties:
   compatible:
-    items:
-      - enum:
-          - qcom,sm8750-m31-eusb2-phy
+    oneOf:
+      - items:
+          - enum:
+              - qcom,glymur-m31-eusb2-phy
+          - const: qcom,sm8750-m31-eusb2-phy
+      - const: qcom,sm8750-m31-eusb2-phy
 
   reg:
     maxItems: 1
@@ -53,12 +56,20 @@ required:
   - compatible
   - reg
   - "#phy-cells"
-  - clocks
-  - clock-names
   - resets
   - vdd-supply
   - vdda12-supply
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          const: qcom,sm8750-m31-eusb2-phy
+    then:
+      required:
+        - clocks
+        - clock-names
+
 additionalProperties: false
 
 examples:

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
