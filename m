Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48AB5C87FC5
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jul 2025 07:23:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wpd9hFXiB9NypLHq09FuPs8i2xpmq2sGMGeV+QphyFc=; b=AxKvsfAWYpoKiz
	gfleCflPbhy59MnBO0EmC866wU+ukpU7BtMuP0DdnD/AKducVxy9aEpQuC99CoZfiWptY4nFsG5jC
	1tGaK33cMynTYHqpk9ngye8hMjCcbKcaEyROBoGh5BiXF8+Taj8/NtHyo9GWT5aaXAjYBizU96q+U
	TjUP6t3kAS2icpo7O5maJY2hLUi2/RqXViPObI7RpsGEJItpn+hYlYu0FXBVknS4TBxnBp5gt0iAN
	uPDBEZmIhswGeuc3GJwdGA8eloAY6XOAUubWU/GF/o2q1dSjnwzuM0H2Rf0z9qP7nscaTVQppyW/Q
	+SgQStJ1xizQqWgHzmNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ue7Lf-00000001ca4-0CKM;
	Tue, 22 Jul 2025 07:23:39 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ue7Kp-00000001cC9-1tnn
	for linux-phy@lists.infradead.org;
	Tue, 22 Jul 2025 07:22:48 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56M3Pnh6015848
	for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 07:22:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	95HJf98jrYhdOK50h5t/HTsn+deQ8bx6DN868zwIVWU=; b=jA2DS2cnWB8l7V+7
	ogovGQRFNcB+J1U2DHnr6lCDgPuP+LaiSlHoY9OGragpXdHErAz5aooOIGibHDz7
	lAxWJCWTqQVC9Fy4lIVdLmzs7AeNn4qZ6dMDJu5LahAW3WMrtU6zykcMOJu3e9ye
	YnnG2YS0+AHnYDN8V1rDbU8WAC427KpQ/znWKBfUhnoRGrdP9z1E0DwwmPjsjlGn
	g0WK5/4Dh2bR0x6Nq3PjEyY5SPi71obxzceQpxdnremrXZkrG7ij7lhgJlZbWltG
	F7Dq9usQPg2ntgfCtsggjoyMfyIbrna6HZwrCZCrnASStYPSCbSajRAzBALJ9cWn
	AcEWrw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 480451ga7f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 07:22:46 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-23c6ff64067so1614925ad.0
        for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 00:22:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753168965; x=1753773765;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=95HJf98jrYhdOK50h5t/HTsn+deQ8bx6DN868zwIVWU=;
        b=RXPq5V/yBlIAz/nr8S8gwAUWiTBFn0n7Y9zPamd9KehLeGQ+HfRTXJxETCT4Q5ywjU
         uvKvvRARok2Ln5rUHeqYPQZ8b0rN/plT6SYSQHsHgb6ibJkLtwJ75RARCUrlmub4JJH8
         zie+2gnhhutUShgi18XDS+WlncPv4nXrGcRE8h5++orPBLZSmNedcAKe77XETdAOQ3CP
         lP4a6RGHNaYRmMJY3wam9QvTNGOKwgkKyZxLzm8SWLn1ppK0dPkfYdVeKAoEHWkaHjP4
         Ox668bkBjF+uk17K4NlyeOLnhba99ad4L5+W1ITsYO0SLbf4+C9jGs5Z+DbYsCbCzxNe
         9c+w==
X-Forwarded-Encrypted: i=1; AJvYcCWnyZT2HjvJ8FzTV1CvXPSB33v/ejHhqdbeFmCZEu4ktwkbPEsnicpcW4wdfOt8ZPmpjpZ/I2ctjNI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz5M0EQsqcKOKpz58TP3vIQKnUFuyqZQQW7YBPcP15A+HqBGe81
	MWSyOs19KqL4t1AeAi+Kv5JOBL+hUFGBVViUek1geEEMh4Xs+gHfiWH5rV1hsuroRhVCioE+m30
	Hf2vW3LHuRGPybbFqsHRAC2gBQtGb60S0fV502Yi99oRQCzAh6QKwXX03/Ap3XZ3g2oCY
X-Gm-Gg: ASbGncsDPKyeAaCB9d82PLj8Vyt/iZneJdwRG2MmhWAk0CPoaUgHbdIyt0Z9GRYy6CU
	C5X+bLtEkbQYsdr0RkGQrIzwl9sZfBA/BR+1hWbOWaWuBZYHu32cBDkW5F3pTf4BermtWRxRf9S
	QRr5jL7NU74TGjkLPlhO//QQe0A0QW+KPlGskvsqQcQHpshl+CybYhFaHZaaPQzCGeddpw0EsXE
	oQiEjX5oWq6pLGr39mkSPZUZaFg1v2VNCFJ+H6eezywwKdsaxKD5nMIF99GY7fXFsrn0qLbEMCi
	cEUlS2cFlNBKOv1ERjLuQBY5TqlMg6VP8poRJx7qB2ROAAM9wtdV7rhd+/a3tALgdSzWOJPX6as
	BXiS/RrG4MMJgd1qQBYYc8QMzLVXWo1q6lcgMNcHRHXEDg8vNHBCp5ANT
X-Received: by 2002:a17:902:f547:b0:234:ba37:87a3 with SMTP id d9443c01a7336-23e24ecc5bdmr132166375ad.3.1753168965178;
        Tue, 22 Jul 2025 00:22:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG70wgcxv2Og+kPKUjYru/eTK2MCHabUKt0QBDH4BfkImjNq4j8b/P4oRqYxZYzHj6XtGxz9w==
X-Received: by 2002:a17:902:f547:b0:234:ba37:87a3 with SMTP id d9443c01a7336-23e24ecc5bdmr132166155ad.3.1753168964744;
        Tue, 22 Jul 2025 00:22:44 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31cc3e45e6csm7490753a91.3.2025.07.22.00.22.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Jul 2025 00:22:44 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Tue, 22 Jul 2025 15:22:04 +0800
Subject: [PATCH v2 03/13] dt-bindings: phy: qcom,msm8998-qmp-usb3-phy:
 support dual TCSR registers
MIME-Version: 1.0
Message-Id: <20250722-add-displayport-support-for-qcs615-platform-v2-3-42b4037171f8@oss.qualcomm.com>
References: <20250722-add-displayport-support-for-qcs615-platform-v2-0-42b4037171f8@oss.qualcomm.com>
In-Reply-To: <20250722-add-displayport-support-for-qcs615-platform-v2-0-42b4037171f8@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        fange.zhang@oss.qualcomm.com, quic_lliu6@quicinc.com,
        quic_yongmou@quicinc.com, Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753168937; l=2537;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=71nsNROW8nOruef5bHMWdW3ozXU/NjQImv6aKmL0T24=;
 b=dLa0B1WM5pUjkW4SwnkHpZoEZpTLwSATWGvvZEls9+EyqvaTXc0lRt/0UyqWmrJRqq5wLe/z9
 j/MpgPhJxb5CZpHDFqsNvkHX+TzWVnCqfLppugMnbDEfKk+5I/8/cZX
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Authority-Analysis: v=2.4 cv=EIMG00ZC c=1 sm=1 tr=0 ts=687f3c46 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=nxDEYaoXc1MktuKintAA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: 8FKR3udm-IdRe7Km48EbVj9M4z5aOony
X-Proofpoint-GUID: 8FKR3udm-IdRe7Km48EbVj9M4z5aOony
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIyMDA1OSBTYWx0ZWRfXzeInSDoSyIzY
 GzmhkEWgdCOZfistp/+R3D4iZhDe47TijnUdPUuCaqMfLDVClQF2ixwcPdkqO+hnycLsMqxhy9K
 AAUXkdM+1+l+KWKt3m+KPzUjqb8aC55ZtDBBffau4HJ3f+ExpQRS9FhU7cSdZBxKgrhYsYAOiKW
 E0qcEbN5A6ft1P2b5TEQq1HHVY5PPo5otz2m23YWwgBZRHbfemrX3vDtkIvQx6HwRXjgacyZt4R
 df0Ect8+yBj23990GRdEEqVWlszeVT3so+uXnzeEj12HJKgbnbNjJdtE0DQDEOTB2RedRDcptra
 Nhyz4xKn++QJH738CggkXowrKYERXbG6/7m/uxss4gTqIUgkbuDBGTSwHnthXrteHSNBSUsHLUB
 paZMk9Bqd1UEV1xTpu6lYRbmpmiBjqxcsFKp56Y1/qNXYB3X+SxtPKe2fb34RepNxxaqcTLf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-22_01,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 lowpriorityscore=0 bulkscore=0 adultscore=0
 priorityscore=1501 mlxlogscore=999 phishscore=0 mlxscore=0 clxscore=1015
 suspectscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507220059
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_002247_616492_3E5FAB0A 
X-CRM114-Status: GOOD (  14.04  )
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

Add support for specifying two TCSR register addresses in the
qcom,tcsr-reg property to enable DP-only mode switching. This change
maintains backward compatibility with the original single-register
format.

Also update #clock-cells and #phy-cells to <1> to support clock and PHY
provider interfaces, respectively. This is required for platforms that
consume the PHY clock and select PHY mode dynamically.

Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 .../bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml    | 28 +++++++++++++++++-----
 1 file changed, 22 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml
index 1636285fbe535c430fdf792b33a5e9c523de323b..badfc46cda6c3a128688ac63b00d97dc2ba742d6 100644
--- a/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml
@@ -44,13 +44,21 @@ properties:
   vdda-pll-supply: true
 
   "#clock-cells":
-    const: 0
+    oneOf:
+      - description: Set to 0 for legacy platforms without clock provider
+        const: 0
+      - description: Set to 1 to expose PHY pipe clock.
+        const: 1
 
   clock-output-names:
     maxItems: 1
 
   "#phy-cells":
-    const: 0
+    oneOf:
+      - description: Set to 0 for legacy platforms
+        const: 0
+      - description: Set to 1 to supports mode selection (e.g. USB/DP)
+        const: 1
 
   orientation-switch:
     description:
@@ -59,11 +67,19 @@ properties:
 
   qcom,tcsr-reg:
     $ref: /schemas/types.yaml#/definitions/phandle-array
-    items:
+    description: Clamp and PHY mode register present in the TCSR
+    oneOf:
+      - items:
+          - items:
+              - description: phandle to TCSR hardware block
+              - description: offset of the VLS CLAMP register
       - items:
-          - description: phandle to TCSR hardware block
-          - description: offset of the VLS CLAMP register
-    description: Clamp register present in the TCSR
+          - items:
+              - description: phandle to TCSR hardware block
+              - description: offset of the VLS CLAMP register
+          - items:
+              - description: phandle to TCSR hardware block
+              - description: offset of the DP PHY mode register
 
   ports:
     $ref: /schemas/graph.yaml#/properties/ports

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
