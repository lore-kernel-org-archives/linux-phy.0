Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49F66CAC5B3
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 02:29:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZcoCjT5coqB7YOfvt/zX44up4ArLnxxFYfD/1nKlpGM=; b=M6rN+vqVZ/TEGq
	RNwIN3E+AhpPGrChVCtkIEh/seAOFJboVtzEZFNqx6yeuyUbS+kfWfWLfKlKFbWKQqxCsTEcd5XO7
	1xIw8v+G7/LDpdQ1tcmOlrdbJgyqVm+n5uliMYhnkvD9B8nEm3zbdYddjrRlKE5kJofscN6lkwpmj
	aUjkBfJosH+xAiLtuNXhKNTOuoAnzI696Q53G4vJw0rbaGTM10PIoKF65R43fSDujf6cjbE4c7L4G
	uarWjrNPKMvughKcOGy7I2/YNELdVweuuC+rhGEbsuCipDngQzH3LJ0Q0BlujBI5aYg20oJ0Pw+rL
	hfAkvhPH8vXcOb7NNQjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1bjJ-00000005IsC-436P;
	Thu, 25 Sep 2025 02:29:10 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1bjA-00000005IlP-3udK
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 02:29:02 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P11NxU024516
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 02:29:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=YaQd3cF9DM3
	ZawONJKkUUZT5oOk1utb/PQbw+Tb9ZII=; b=GLEuSDg2D2l2imPwwOKxcHG5RCf
	3pvFxukmFNL9hd7KvDTHqNF5rvMqKSneewhFuCGoEvdofpScpn0xgwi1HPt35xdM
	/Lvro7fTaE1qGDcUn7Yd95xSjuUIbr2k5ZLLEKm7RPgW7+eQPPqN/dr2AHQ8Bcet
	C8FuvmI8Q55mqm5WH5BPflPw4y7YBjcPLpN8R3cY2bh7XfcSm9Jy7QnKvIJb5NJ0
	hB9S357t1Etab66DQWHl50BrYvfyTZ5iVRuCDdT9trV2psxZldWnGmAXctWe7nQn
	WLXNDeto6/SFWUsFm6x1wHIuJx5wns5z5bAfNgtokAtu5ceFQzF5ExeDyFA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bwp0df5x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 02:28:59 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2445806b18aso4583145ad.1
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 19:28:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758767339; x=1759372139;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YaQd3cF9DM3ZawONJKkUUZT5oOk1utb/PQbw+Tb9ZII=;
        b=thIjatmYN4HK0XPu9dyGFxB33oc3avycNYHRPbsG46LBxJZuIVDhqJzERyKSBobRXQ
         1yIZnUkM6wMy7tZvjd5V1sGhwJHw+iBaZVYu5li6ij3yN9/qRYFQdClIJrpOhNoSL7/4
         ZTTG4SLEudRe/qAR9QDHw6aJLRvmf7wZD8LZXDMgVyzN479IIayFduZ0tcdjL5YHpH8O
         nd8WD7+/Tv8aDbCnB2pgI0AkOPTAlvMtnfqzzm55IK6xY0s2zO4FcfNyGQaa3rb3bS0U
         vSJmCaI+nrXXvZ9io17OQKg47tMHDKP9ldXhwpdOF9XcHVWe3RgPyXSnUkXSzOT9O4gl
         jamg==
X-Forwarded-Encrypted: i=1; AJvYcCXwQsmo9wZrpTyw1eWgjdvsRWrHmwq3LqmfKKlZmtW1PI2HiJCUVVqDh3dMn2s2rVxazn/IPlTwTcc=@lists.infradead.org
X-Gm-Message-State: AOJu0YztbZUc01MVL3Lg1p322lZpv5PTe3mTE5F+Psg7eQJ3se9Glbjl
	k4hbwXkLE80HkJ/UAzoQGdFnSFg3h+CfXrp5mK/UfqeTwJYAFZ+24MbqQ+J8J0oUSHxLWLdlKwe
	SdSwXA5OUdPuvDu87qQpFCNej8w019TEuFY/4b5of37xXViKd5R6i+M1XDwjexRQYqhbc
X-Gm-Gg: ASbGncs1mqk4UjODfEmW2PX5YPx87n5acjeosmXzmw9t465c8sEIyiBQZuEdIEgYb5e
	2i7aQ9DbgwBHKHRk83DKQVS6L/BiMd8BhFYZVK1TDvNYD8vtoJnrNtHjDGuIOpOHl55QAYZQ2dA
	ebkVDvrCwG/glVmaK7c7DkjDLy1eIL6OUthGPNqlekCDbKCx4bPdfaCb7cGrQdj8RWcIgcSWyR1
	myAJhaaev8TwdQuS8CZi1wJz7Tc48Eho7QVQCJMOQ2aeY9cQ1YWZECNDl0ZX24sK9w4fGcgNQAp
	r8hw+Zd6K56/QlDnB2QyMPt3q0zTh719RDvxrM3iFJnv1gqwhSSd1TgPh9MRg4a2DJxYTgxNVk+
	ljQOZX76Bqbx4UIPf
X-Received: by 2002:a17:903:4b27:b0:269:603f:420a with SMTP id d9443c01a7336-27ed49b3138mr20415775ad.5.1758767338627;
        Wed, 24 Sep 2025 19:28:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGbOCf6eNz+virCFfRlfopKZjO6IPzC0hVd3s5Sj34qU3xiaSgJy3D0qcDZ+fhYb/Vg25O31Q==
X-Received: by 2002:a17:903:4b27:b0:269:603f:420a with SMTP id d9443c01a7336-27ed49b3138mr20415285ad.5.1758767338063;
        Wed, 24 Sep 2025 19:28:58 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33471d711ecsm499881a91.4.2025.09.24.19.28.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 19:28:57 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        kishon@kernel.org, vkoul@kernel.org, gregkh@linuxfoundation.org,
        robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v3 03/10] dt-bindings: phy: qcom-m31-eusb2: Add Glymur compatible
Date: Wed, 24 Sep 2025 19:28:43 -0700
Message-Id: <20250925022850.4133013-4-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250925022850.4133013-1-wesley.cheng@oss.qualcomm.com>
References: <20250925022850.4133013-1-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=KNxaDEFo c=1 sm=1 tr=0 ts=68d4a8eb cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=dJG6SERxbJy7wEyxA2sA:9
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: QqGe8H4x7hgYRzgQ2Ik23WMHHrokJxiK
X-Proofpoint-ORIG-GUID: QqGe8H4x7hgYRzgQ2Ik23WMHHrokJxiK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDEzOCBTYWx0ZWRfXxDXwFYM2Gi9f
 +Fgn0sWswCb14vHX+h9bqKL8pTL4JWXvbtO2xAqVaLpGRPaI23y6rufXiiZ9JBpxB8mpwH6T65n
 vB6hgMGfgr2YXlvJVGVnNruyyVP5ouHId47ivDSBmTt9N26L5ClEJLOZ+n7t7ndTBkfOB8zCdd8
 3Rb4YwdK40xLXdok44FGH3GxcTPebFBjJ3KGNN5M2JHDyO8W9QDme1ppYyhztM6YGsEivTWf4X2
 TGVpXHbsht4uNZbNrGcShCOfmEuQdfUOJl+Z+USAIhSsFn3XjSvI73HsnswIQkgrCmiRintrH1j
 j2AuX+mjJRMrq0nhZIM5KTgSAMHR49yD8NoIoXYhg2chOOE9iEz9szss9fuaXtLwQCxUEL1xqe2
 JATCFx0D
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 clxscore=1015 phishscore=0 suspectscore=0
 adultscore=0 bulkscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509230138
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_192901_090799_62560CE4 
X-CRM114-Status: GOOD (  12.09  )
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
