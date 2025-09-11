Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D34F4CAC587
	for <linux-phy@archiver.kernel.org>; Thu, 11 Sep 2025 14:55:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7jmNX/ZSrlXl9QiaZRyajAgI5My04wbXOkYfOWEguR8=; b=Nbndp2Vu9Lcib5
	+9ae4vhDxtwHfXAlnHRuod/0pUfVH6t080hm0VrKFPTP+8eNCZ4xNTVBBq3l5VM3NjeTZnJqXo5jr
	d1YFZd7jPTsNqt2a8zBUtgsKoGgGOxPJEETD9QpLnvGtl7WAoAt0PrA1ZkO1DIbBR+R7CIm2IeXBl
	b7y0ftN8oGz1m/Qxfa4CTd9WDJykgSaKujlwB4TshaDocLISLEZ4rcJ5KFrYsgVfxbrA4ztLR7k+W
	CFCQ/560rdAHhRk24YLSh2n/CnGMbPapgi64UyFNTPjhoH3qPvQSjmj0oPXnhpFx0s96G6uJ5FBI0
	7mQfVTotvcRxrHgkzCDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwii9-00000003hL1-2Wq8;
	Thu, 11 Sep 2025 14:55:45 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwii7-00000003hJR-1s3K
	for linux-phy@lists.infradead.org;
	Thu, 11 Sep 2025 14:55:44 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58BAjLv7026270
	for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 14:55:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jjkngGlYDAm4B8CujfeVMFkJRW4QuQM6B+E9nbyKLy0=; b=OWa2rwR9JtE0Pi3E
	+VVmB9lAdF4GiGxz+77B3UPGSlLm7tlINIrm0wv1hVvZpywBjDiafCuGLmH3q2pN
	Ce3+OCnwsiOZnKHvBEXVexJJeJmwQtsPZFr1C7fCfEYu0UYMatUMWf02EAzrbpWE
	2//eJRAW21/1cBzgfsBrdmyBooiOApSHXkPkgsNyn6LUn0REtjcR2t8U30ffMStQ
	TfLVPpoS2IbH9wFFfMVb5n7XkU3PPeNcJ2Fg3VZ8t6Mxf6960P6uK6X5i55EHJvu
	5n2ciqIrHME8O4/yBWohYxG4EsKtVAMdUjaVhbMYHtGnSxHE80/b4HxsmOZQPXwa
	ZpegLg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 493f6h3502-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 14:55:43 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-244581a191bso1543195ad.2
        for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 07:55:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757602542; x=1758207342;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jjkngGlYDAm4B8CujfeVMFkJRW4QuQM6B+E9nbyKLy0=;
        b=S6EWRggnBmw6YwATZPJqAzUIMeLsn/P8VD3FbXaQpWOq1IIm7e68jkUGi2WIafPJcQ
         nLAbpz355RJIF/Qf2HvykBZxybWPTUOlRVji91Ba28wXgmxtw2vbP8Gob1PCGe68PhoL
         VgCXve3Uxx/ESol0jkp1qX/wbl9q7MAZNciLUz1vf07kCASYhXYwnRnCxO0vTksbddOl
         siybERPwgZa3NrMVYP8fQaDce5DEqzQrHiDAAKrJW0QU3oywqnedmBFqnjPRM9SF4vGN
         fK2Xaa+ZqgtsgAc8z7h1pACXkQfhyxALKxAmvwzSRxjeRs3rW5/XSIL4aryh7QwoHRPv
         ttZQ==
X-Forwarded-Encrypted: i=1; AJvYcCU2B2Vi9/ldcM07zLaU/u0FFgIvM5K3nCMGFeY2SimDeR/l3uxo2PuC/3sxMvetpvc7fDicH4/JpB0=@lists.infradead.org
X-Gm-Message-State: AOJu0YzygeLlrKBvzkAn/6YY64m86ng1Az8I1RO0TJ3rlapr/ZYbYxU5
	LsntJ9tAHk3myKJrnCmzTQb3NwQVEsnGEXNvktEyJCU4J9/W1YX0x/vvIrpGeB5h+GdMD4wqpne
	gWHXc/hjkzbBxhAwb2JQav60+gnL4mee9PPHyM8+0uFSv4YV7lCj08SVSb8kvZtp2k2LP
X-Gm-Gg: ASbGncvvL17S3HbWwjSildiBSUGXwrDFg9UIfFo5ANWc60wOyzqoNtpfbXJHixdoPNd
	wUP5/XQAK10546ecyBASH1zfJs1IXZ/tMkaSu1cF6UdxA0uK3NPfhc+0mmRXagiCjUd6ggbn2rA
	44HXzJRruFiM+6NiZI3WTOnad41o+HPW1cxbrU6bNx5QovgWRZNflsgzjcGoaVfh6BAN7awOyZs
	+zcoEog4ipI4c0+D3jcoApDMSTg6NHjGWz3Nk0IhMyRArmYf4P5pninS4NSI7nb3T+K4fndRGXl
	50kZV5ivyHyBwvLqf38TvCm37kanBfGtpEwtZJnhHChtsYvgXjSrqqjTXhSIf4j5shs4goP1xwb
	u2qMqvjEG9C4YUrYM1vDZEc6M23junJ2hSqo+XblFWXa5SzTCPJHWGE1T
X-Received: by 2002:a17:902:c40b:b0:243:589d:148e with SMTP id d9443c01a7336-2516f23de24mr132990645ad.5.1757602541969;
        Thu, 11 Sep 2025 07:55:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFEtpsa7qlUyYAsgBCQGIBTzIJxW2bcMhr8lZkbI7bFHvqypkmZ+m9OuDf0/hYNs6aysv1XsQ==
X-Received: by 2002:a17:902:c40b:b0:243:589d:148e with SMTP id d9443c01a7336-2516f23de24mr132990335ad.5.1757602541465;
        Thu, 11 Sep 2025 07:55:41 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54a387cd4bsm2107453a12.35.2025.09.11.07.55.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 07:55:41 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Thu, 11 Sep 2025 22:54:58 +0800
Subject: [PATCH v4 01/13] dt-bindings: phy: Add QMP USB3+DP PHY for QCS615
MIME-Version: 1.0
Message-Id: <20250911-add-displayport-support-for-qcs615-platform-v4-1-2702bdda14ed@oss.qualcomm.com>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
In-Reply-To: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
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
        li.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757602527; l=3530;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=LgccMGQtMns6i0nd4D5JzFa/u0XEgWzMdMJHz1iq7Mg=;
 b=mXj8P2zI5LqxmvJf/ITJhpiVlig+/0otZwvxQRDsBRti9c9obJVcSQTesm+iB69NrWfS1lqLZ
 V6KJztXRPxcBV79k9PWjTr9xRHUa2hlg3SDAYgvXdXof961JAOSGaTy
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-ORIG-GUID: cXjA3eo6kGi5aEorXwU-ZqR1AVdS4NSE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEwMDE3NyBTYWx0ZWRfXzu9lVlN1zor7
 5pRVZ0R3H6AF0Xfwhq4WCktKXti2jh2CJlqvBK4KBs6Jwe4sXXWiNX4oq2lvSHfJZWgtFWWPYwG
 mTrAfIYdERP0veXZQE6H6UExXi/OCQFYHSDTyIXgYoFRsXbmpCWwdxBl0J+gTKG908s7b5K8TSC
 iKxn3SlxRR5yQXkA55ygWsfxQr9r7rlyjnrSgHTr566D2cxFjX50CwCamBMs7gIrQqPES9rdgPt
 ggijGCVLZUNpdn+0lA+Xj2eYyR9DmEhVPvgLMT5syLjPQ6XKq7lu4Upiy1Hh4Qq+YEqn1KbUOi9
 rs7fWoAi9skSlrIo6Rae3zDdQRTAFtw2hwyT4/3uUhFQs7n6oOMr9zXFrAMybagDjYLDAUN1R+F
 gjREywPG
X-Authority-Analysis: v=2.4 cv=WPB/XmsR c=1 sm=1 tr=0 ts=68c2e2ef cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=z8W1oWq9hX_DlPyfQGsA:9 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-GUID: cXjA3eo6kGi5aEorXwU-ZqR1AVdS4NSE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-11_01,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 clxscore=1015 priorityscore=1501 adultscore=0
 bulkscore=0 phishscore=0 suspectscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509100177
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250911_075543_494151_C772B0A3 
X-CRM114-Status: GOOD (  14.75  )
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
