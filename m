Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F3A1CAC5A5
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 00:52:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZcoCjT5coqB7YOfvt/zX44up4ArLnxxFYfD/1nKlpGM=; b=uWzNLbil7DgjVA
	5VezKjrjB8AKflUceX+V6MeJoKFndVIENM/BRgc2nJ8Z8NSJXmOas4hR3NVQsMHRP3t1g912dDqXq
	Y8fZg59oirGWwNx0REgwWflZs/EsBmFefNiox4sG08OLz3X4R6kkDQOLMj/SW+484nAqJzbrWQW9R
	vMps/+QpTWPVDq/BSjHtJ2Bp9I2cohkZgO2HdSODOYBl21Kh1iFgn2dGXYhofgQqJs25t1X3a3zJ/
	5gocJBM3OsDRzfk57M5yPurMYqAUCrUSOQp7joz8wy0T17bMXGgkRpbAYzXaoDJ8suQRul/NzWb6m
	o9qJVYuSm1hN0NWY/HZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1aDy-000000058E4-1kHr;
	Thu, 25 Sep 2025 00:52:42 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1aDu-000000058Ba-0Uif
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 00:52:39 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCrFDV025084
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 00:52:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=YaQd3cF9DM3
	ZawONJKkUUZT5oOk1utb/PQbw+Tb9ZII=; b=FSWa39dHzVr5D1x7oDJ1YZOq1NR
	kqC4z3QlZD4ysF3as5fPvv/NXIKMrPywjeMZbY0nbZQSfgazk1HfpAT8TSwIK6KD
	kmI9zgYXBqwa457Mrrzk0xS1Z3KOT7GvopGTikzmBkLl1oRWyRzMXAQerbek79my
	OEqrxDnX8b1+MRoemETvUc9wrFGay82wkKOZOzlTenaqd6bD12A5IHM/n6JfXdIW
	SEAaifaeNf4hJWjC1hx2XQs01fAebtceiybHFljzC2J7F98+XLd906ndR4JBzy6k
	lIvsityAVOhvII5tP4Iw8XtTOV+nwtzjINiWt2MkDCG/gt8b8dYCpNG6pKw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hyexhq0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 00:52:37 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-27c36902f42so2655555ad.0
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 17:52:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758761557; x=1759366357;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YaQd3cF9DM3ZawONJKkUUZT5oOk1utb/PQbw+Tb9ZII=;
        b=Z0Z+3fCPjEIH9LqEeEgPZszWOZg1fGDA2mHvogUPvfXqT55LRK+XVHhavFEZY06NsE
         DtRhfBdu6pFClRUpxb2Wx14Gr8I+X7p36O4nQF4LsDVxeS0cSLjZb2RKBDsxMfo2Yac0
         UvasPDwujIlKo2eevMlKWoskURQCyRECZTlRD0ZI5WmTbsRYoveVbLofPuvFIxAd4ITP
         ah2gY9rpvkQ07vcmtjbM3YQ4IbR6rfP9zLns1wvJc7GOgjUtOzioRPJx5lC1UVyTqpnj
         siiFO2KydxNJVQtsj4QRMmns4fxBMKMw5kmnve3fTEgDRUaNOKPJnvwB6soNVxpg2Gl9
         aWxg==
X-Forwarded-Encrypted: i=1; AJvYcCXNLbBn3hRhXNdyFg5Z3NzpoQIi6RkxzffoMLwTF7gXanN3UiQ5Ai/xF/6l3eVsJCqX26FWMkxqE+E=@lists.infradead.org
X-Gm-Message-State: AOJu0YysVFp/22yKTnxTvtRNCz1vdYJIkoiBgc0mxjZiqkG+342+yc42
	N8aZYNuEoTHj28uwy5vgh8OAGweBYjzD5nKTV0ttZ7ncNyLVrta7z9KS32ZWTlapNUpY8Rw0df9
	FrVpxp+1StUp+/6Ys2cMpUlRNx669Vlbm/osbpvdepCw0rHWdOWH1z8iYDv3st+Zvja1L
X-Gm-Gg: ASbGncv1YLuQhvXTy+3NFjTSzU4zUt30VCOwKB5DYCN0i6bh0sUYXWyURrC0AIKh/Kd
	Dg27SOAFSlBhUrJW+fxrShODCej6cCW1kMcQbjeWGurwaJPisq7evkmSGGBSG+LE4jK4Wg3pCIv
	u8HMJTIjLVuNq3dDeHSRUXqGmC5lib0jJbMDeabs/LZsnD2r9xpQtE9Y7VHyhiQoXWmav0IPKgd
	75haa3IE2Dbg9NuAtUKoXLRM4g8YSfKngu+fylEXbJX8HoIg2EdpT07lajFbQnqwgYt6FFuHckf
	/n+QpwNLowyG7vaOV01SSXb9sspi5Tmil909KWShMu7LyyW/r/mBlyOjIqivrVYAR9kxpFJ5cP2
	00qiJTQtjRMTooOTt
X-Received: by 2002:a17:903:1a06:b0:269:8f0c:4d86 with SMTP id d9443c01a7336-27ed4adeeedmr12621375ad.53.1758761556913;
        Wed, 24 Sep 2025 17:52:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEkdWp6F5xl7z3+kp7g4Jtt7h4BtMeBXJCqbB57Ib1mwFswvS7CDTGv4fLa3p0hqGsMWqWbYg==
X-Received: by 2002:a17:903:1a06:b0:269:8f0c:4d86 with SMTP id d9443c01a7336-27ed4adeeedmr12621135ad.53.1758761556419;
        Wed, 24 Sep 2025 17:52:36 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed6ac27d4sm5238105ad.135.2025.09.24.17.52.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 17:52:35 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        kishon@kernel.org, vkoul@kernel.org, gregkh@linuxfoundation.org,
        robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v2 03/10] dt-bindings: phy: qcom-m31-eusb2: Add Glymur compatible
Date: Wed, 24 Sep 2025 17:52:21 -0700
Message-Id: <20250925005228.4035927-4-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250925005228.4035927-1-wesley.cheng@oss.qualcomm.com>
References: <20250925005228.4035927-1-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-GUID: lNoERAVGzLQoIVTw316hJii7g5vPxI4-
X-Authority-Analysis: v=2.4 cv=YMOfyQGx c=1 sm=1 tr=0 ts=68d49255 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=dJG6SERxbJy7wEyxA2sA:9
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwNCBTYWx0ZWRfX1RfRItwV7P2M
 DtS00x52dF0XBakletGw7WjS8KTyECZJQMgteLfirH9xIOHutdY0VaYVHwXq3YreJvlXBYANXQU
 87sWi1ptkZSXKM7nsdKxOqeWfZEO8CLaJABN4kjiCzbWJl6oTdynhJOJkjswtf4ZUYfpmQt5zE2
 wEwpdlADI8rxA+BrjddNRTj4PCIu6IWJixYNHKgQbOXjlGuLUlBfm3btdYjvCoQ7A06eEUfFqSd
 8QPSAVvFNX67cRt1e5ez7QJ5wt9v8kJuveJ36bXrmADvDzITqXT3VksNNpLj7t8ZHeF2kQEV73Y
 X5AL1meAoQBjdAplqIjwW27iqzC4kmJT8RpAW68JFbQytOD153sAJ5g+lM53IICwJuw7ggD3LRU
 KBT0ofHM
X-Proofpoint-ORIG-GUID: lNoERAVGzLQoIVTw316hJii7g5vPxI4-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 suspectscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200004
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_175238_162324_1283B7FC 
X-CRM114-Status: GOOD (  11.52  )
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
