Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EC70CAC59A
	for <linux-phy@archiver.kernel.org>; Fri, 19 Sep 2025 14:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7jmNX/ZSrlXl9QiaZRyajAgI5My04wbXOkYfOWEguR8=; b=i37iqSayiodjnH
	yq9uZi9m3lPK92C4R0/gEssgvNLDrUA+Q/No2j5xW5Rg7KbFB44HHq0BAd7rd8sbp4PRGZ358Oxgv
	XJ5TAM7Ts19u0y6LgEvKf7EnWUysG7C4vhVl2W3Nvp19O0hdp3rQRVeA2SQlZhjUmekFgTXSiBIWA
	pkLw7ksB8a6hHSmz2BZlGykoJBUnrplyfY2NRjGtJPKqvZ0hAktDs766zLhKASnlhOR3TY3Tjt+iW
	MhZN3njqmml2jJUp+6qSjInbaIkzyalLeHrt8DluHZUicWzbT6g6nT+kZdZDkzB1aEHP2t8lHyG3J
	vYQlAowDeWkB9CYIHREg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzc32-0000000382z-34DU;
	Fri, 19 Sep 2025 14:25:16 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzc30-0000000381z-1rq5
	for linux-phy@lists.infradead.org;
	Fri, 19 Sep 2025 14:25:15 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58JE3UC7018272
	for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 14:25:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jjkngGlYDAm4B8CujfeVMFkJRW4QuQM6B+E9nbyKLy0=; b=XwLNwrKNd7S2G9Ag
	tVv/XivBG3wkM00x1URxUr+16xz5hvEjAl7txzyNk+DVQ1O1fEAmL5ANBNNsO+uu
	SY5edrw9DW6kJnNdXHZrZGg5AGydVyo0Pc6ABzXIE99ETlqOB3rtstNRrwxSehMq
	d4U49c75//MU8W/Tm3R1XwzDwRBFVI8flA4j22L81MaAz1XQM39VXEmL2fCCT/y5
	4eSAgOYaPFrk4F7u2J1xCOTLrteq7kFtUtVMlyslw8XXWqxi78MzRnwUOQbVqMT2
	Uux4E0w7v9Y9jURrFbStxhhbOC4di72lmg9j60fRuWaj/lUadUDeoi7J48OtMm6b
	yDGV6w==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fxwjpfv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 14:25:13 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-26b3e727467so2155385ad.0
        for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 07:25:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758291911; x=1758896711;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jjkngGlYDAm4B8CujfeVMFkJRW4QuQM6B+E9nbyKLy0=;
        b=sNO6csx6g5jjV6iDlpg/C4p5On+6jR1/3MPKEwblW6mnOAPrA0F19k0B/EDE7NBILl
         6ZHXy+5yKFoo13Y7W9QE4ZT1dfx4lZbqaxbjCSqNVylyy4g8By0gLMCRaHSIRHIw3JXB
         tfqjuHh241uznKYrsslf/thG1EkAumvpphdHVvrbwWqwHguJ+2kzLogTHaKjA3l6ZL9j
         kKTQKOg/WDgemycEnOQkGMVqEmLFJuh0veuIxeGj4rzda1AjtxP2/ulhaXKwBRsZ4toP
         PPHE4D/rrvBeZ1xaHJYrFYNbPggxKy/kG1nyITopeSb4apDLUAyAHzT7JNe5cI8UjLl5
         W+iw==
X-Forwarded-Encrypted: i=1; AJvYcCWffOassEkvbAmu6GqsrPBMkN+j0lTUpx9XewM59CVOkhaz6Gqg8gY7C7mIojYl0TGi0aNHAKx+Ubc=@lists.infradead.org
X-Gm-Message-State: AOJu0YyqnNT1HkpLx195XB+MWwzEVd6tl6ThbkTJBeE2KBSZW7Vkz0my
	NyGXDcE85+Xdri4UB9XDFMVWS4cTpHmbbl38qRktYZCFdU7IAaQJ1iXC6u2cxWrJ32/BJhwX8aw
	Z5q4fCQq6BdQH8qfCyb8hLwE9tn/Vtnc3EtcOnKu6qjXX4kyCJz3gFaoFDwQ5+jZavdtq
X-Gm-Gg: ASbGncsPfu8aVF1dc8OIFIdaFsw2lBzkcH3fk+/+IK2qHsSEd4rN7fwbpOZFMzVDREu
	WXgBkoHRkgUQZxV3+FNGnKyU1ZS0Lnno1xiacqMg6RcylZ5A2C85o0fSBlcOEuMX+mcbrM+nuzf
	/Gjwh9IgGj4NU1K7xK/Us6CY7UxeL8YW4oUA74xucxJ9uehtUXE/SdlbFNqpOi9rwQVjaBVUpBx
	DDWfwPo4A5bQ/eHcN1ilD2S2FkVdvUXPhtTn6yuKMbAfKy5Q4e+O0GqYZBi8vNx5G+O6KxCIJ83
	9663oWj8njPqt6PP75ob9kgFhM608eH7XsYtPBS7o1m1ce6haffgbD6UvN/aTisabmZ/XXi+ICv
	XGBn/nlXOdHN7TA==
X-Received: by 2002:a17:903:110c:b0:266:914a:2e7a with SMTP id d9443c01a7336-269ba50450bmr27749455ad.6.1758291910732;
        Fri, 19 Sep 2025 07:25:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGNdp3Kcohgum9P+lZ9uer4C3QWn2+bzqgb/I1lYBtm+XMAJb9HgZWehfhr8J/pRPZqfU6JUQ==
X-Received: by 2002:a17:903:110c:b0:266:914a:2e7a with SMTP id d9443c01a7336-269ba50450bmr27749045ad.6.1758291910184;
        Fri, 19 Sep 2025 07:25:10 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-26e80409ee3sm2210035ad.80.2025.09.19.07.25.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 07:25:09 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Fri, 19 Sep 2025 22:24:18 +0800
Subject: [PATCH v5 01/14] dt-bindings: phy: Add QMP USB3+DP PHY for QCS615
MIME-Version: 1.0
Message-Id: <20250919-add-displayport-support-for-qcs615-platform-v5-1-eae6681f4002@oss.qualcomm.com>
References: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
In-Reply-To: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758291893; l=3530;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=LgccMGQtMns6i0nd4D5JzFa/u0XEgWzMdMJHz1iq7Mg=;
 b=RZ+pfI6lFlal5bTRELifiJDJOmNfSXOrbV3GmlnRc2mTgli3PLCghwRB5J5m50K8n1B+MODV2
 XfXIoGT1Ml/BuEV6FMILLRv1YKYgdDV2m82jRmd6HmmA/ON7VD3gTd3
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Authority-Analysis: v=2.4 cv=HbIUTjE8 c=1 sm=1 tr=0 ts=68cd67c9 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=z8W1oWq9hX_DlPyfQGsA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX1zwPKD/uttPL
 NQM4XcnYRfj4x9fQMYESLhFXbNKXK5cki6zXpB5P5lz+gU+fQYCjJtTyu8ohqIXF2L5S8V/YLVc
 WoOPsDrjQrGBY+e5cwuP+iHkWIPA5YRKaTNTwyuqcHG2O9s1L659X4dhbsP0eh3PXs6C/e0v1lh
 oAY5ZZngqcEJYbDI/SlvPI3X6S4pCOja3HnTbdqHybMMtxargGzRfr4qJuDHV1We5hFSoZjTBYq
 VkULppdDIoJHtQt5/Sr2SxZxQFLg/cpsOBp7Qb3m4RGJaP6gkGRZBYzeJRtfd7FuEGjZmYU0ZEV
 4stoVhiBUPdyj4mCuU7AtRatZHViVqhQygX/15a5MDKM31viExE0Kn073GdgG7nSU2f08QcXajg
 /fB7W8Qo
X-Proofpoint-GUID: h3iW40SeJYFfspgKQLTQ9AdFgNBav2yE
X-Proofpoint-ORIG-GUID: h3iW40SeJYFfspgKQLTQ9AdFgNBav2yE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-19_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 adultscore=0 priorityscore=1501 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509160202
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_072514_497775_6A5BAF90 
X-CRM114-Status: GOOD (  15.08  )
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

Add device tree binding documentation for the Qualcomm QMP USB3+DP PHY
on QCS615 Platform. This PHY supports both USB3 and DP functionality
over USB-C, with PHY mode switching capability. It does not support
combo mode.

Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 .../bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml   | 111 +++++++++++++++++++++
 1 file changed, 111 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..efb465c71c1b5870bd7ad3b0ec215cf693a32f04
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml
@@ -0,0 +1,111 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,qcs615-qmp-usb3dp-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm QMP USB3-DP PHY controller (DP, QCS615)
+
+maintainers:
+  - Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
+
+description:
+  The QMP PHY controller supports physical layer functionality for both USB3
+  and DisplayPort over USB-C. While it enables mode switching between USB3 and
+  DisplayPort, but does not support combo mode.
+
+properties:
+  compatible:
+    enum:
+      - qcom,qcs615-qmp-usb3-dp-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 4
+
+  clock-names:
+    items:
+      - const: aux
+      - const: ref
+      - const: cfg_ahb
+      - const: pipe
+
+  resets:
+    maxItems: 2
+
+  reset-names:
+    items:
+      - const: phy_phy
+      - const: dp_phy
+
+  vdda-phy-supply: true
+
+  vdda-pll-supply: true
+
+  "#clock-cells":
+    const: 1
+    description:
+      See include/dt-bindings/phy/phy-qcom-qmp.h
+
+  "#phy-cells":
+    const: 1
+    description:
+      See include/dt-bindings/phy/phy-qcom-qmp.h
+
+  qcom,tcsr-reg:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - items:
+          - description: phandle to TCSR hardware block
+          - description: offset of the VLS CLAMP register
+          - description: offset of the PHY mode register
+    description: Clamp and PHY mode register present in the TCSR
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+  - vdda-phy-supply
+  - vdda-pll-supply
+  - "#clock-cells"
+  - "#phy-cells"
+  - qcom,tcsr-reg
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,qcs615-gcc.h>
+    #include <dt-bindings/clock/qcom,rpmh.h>
+
+    phy@88e8000 {
+      compatible = "qcom,qcs615-qmp-usb3-dp-phy";
+      reg = <0x88e8000 0x2000>;
+
+      clocks = <&gcc GCC_USB2_SEC_PHY_AUX_CLK>,
+               <&gcc GCC_USB3_SEC_CLKREF_CLK>,
+               <&gcc GCC_AHB2PHY_WEST_CLK>,
+               <&gcc GCC_USB2_SEC_PHY_PIPE_CLK>;
+      clock-names = "aux",
+                    "ref",
+                    "cfg_ahb",
+                    "pipe";
+
+      resets = <&gcc GCC_USB3PHY_PHY_SEC_BCR>,
+               <&gcc GCC_USB3_DP_PHY_SEC_BCR>;
+      reset-names = "phy_phy",
+                    "dp_phy";
+
+      vdda-phy-supply = <&vreg_l5a>;
+      vdda-pll-supply = <&vreg_l12a>;
+
+      #clock-cells = <1>;
+      #phy-cells = <1>;
+
+      qcom,tcsr-reg = <&tcsr 0xbff0 0xb24c>;
+    };

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
