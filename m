Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E508DC4332F
	for <linux-phy@archiver.kernel.org>; Thu, 22 Dec 2022 16:07:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=E30IzSOW4oMe+YguWxszjiBbvxSkYGqhemxV+OHbrHY=; b=rEa390q+0OcILa
	5mQV+Niw2uOJ5aTOcbmGwYofTRmUBxL8K+ZhmMDRY5WDKxLoW2FO2pjSgcRCtWQdO/dnr1LU4peiG
	x08oF5L+0XqXDg/ap3xSJb4DWQhR5Y5aFcSisqtF2wx84neFKR9WqurENYXoUxt9/t+AGivtRsUvC
	Y5oMwOHLgoNYTXgXmVxMnWpzoWcd1CTid691IxtalGxu/D0KHzIiOxYwA57FW660OToHPh2duqgix
	WhO4UBR6bSx4rt/MJ61D223AJS9+aJ+ZkkYGjMcmGgJFWiuF0uqRTFh2dB5y56Lg1XjtkNCBnfL4/
	41s/8vq+zI12KzA9AOtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8O68-00DrDg-Jw; Thu, 22 Dec 2022 16:07:08 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8NxY-00DmFP-QW
	for linux-phy@lists.infradead.org; Thu, 22 Dec 2022 15:58:19 +0000
Received: by mail-lf1-x12d.google.com with SMTP id b13so3365355lfo.3
        for <linux-phy@lists.infradead.org>; Thu, 22 Dec 2022 07:58:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BMjFvAc355kr48zmdBVbKSbyLovJA0hSlBO5w8VD+S8=;
        b=HG5eqalLgDkaCc0fZtvWDUddmZ+nLVCqcAJXmlbrMBigRLuhIM6tYSE8sTXqCAVNI1
         YTylL3DWllE94OxUCkJlPBpxnMewKIKMt2JC2eiMyKrWUi3u4mQkOYYfsfHLS7ha49yL
         r5GeLQxwD6wT9Dq6dDOs9ikwX3BVp21KHbjH+tcdK/+C0BqWnJUPCwQAZ8ujd8v9YabX
         Fd1P07YhGGLIBrz96jADsvN3061KF46vloyr+KyI3h9AEUbEPgyvgkJUOjnxLJVV7rlE
         VvxBcIPWHvReq6iuDYY5wV4rVCJ8UOLfkDoHsiq5p1pT557lW6ilvqndNxkFBF9k+0gM
         sOgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BMjFvAc355kr48zmdBVbKSbyLovJA0hSlBO5w8VD+S8=;
        b=dNfLP+91QfTW9aesSYyH/e85nhZcAW7WOz+d1ae/kg399Cuq8ecjT2rEZKIWGH0NJk
         Rgu6W3Q7D8BClmtWXqvHxjI4MA0KcfCRRd2wdV18ilZku5q3CXCS3neNBnxRpKtGxKGF
         VSV/FzpZURkeC6rWrcwaxHRHSbmk2xLgEk9Ip6yvq9zsWVMQOTnOjZAaWEWR+8d/HI5T
         mpGmLN+9ILC4knRmt5ja8OnRYAyOuR4PCQimEkeNISarWfP1XP917qaahfQXgI+K9+gi
         gJfAkWVgzWuOJzrMCnZM7mlZV8oNZu3fSZDHX3krqDndGJEKd03G5ax/9Jpp+OyXvyf3
         sBDQ==
X-Gm-Message-State: AFqh2koUNpAmB1vuZqm2CRg9jC+RZ7Z5lxYvPJqwdXvkTiQmKIF6BWxq
	2oHT2Fh+f8x9At5RYF45Oaz8BQ==
X-Google-Smtp-Source: AMrXdXsKWoi5bmee8dep2HkIc4gTHnKVltaqGKZSUEav8C4bDfZ8MSgNavKWZnRcR82HGcwi1tlk0A==
X-Received: by 2002:a05:6512:3410:b0:4a4:68b8:f4db with SMTP id i16-20020a056512341000b004a468b8f4dbmr1840355lfr.33.1671724689795;
        Thu, 22 Dec 2022 07:58:09 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id a14-20020a056512390e00b004b5872a7003sm111390lfu.98.2022.12.22.07.58.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Dec 2022 07:58:09 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Peng Fan <peng.fan@oss.nxp.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: phy: qcom,usb-hsic-phy: convert to DT schema
Date: Thu, 22 Dec 2022 16:58:05 +0100
Message-Id: <20221222155805.139284-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_075816_936323_2E35C246 
X-CRM114-Status: GOOD (  13.09  )
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

Convert Qualcomm USB HSIC PHY bindings to DT schema.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/phy/qcom,usb-hsic-phy.txt        | 65 ------------------
 .../bindings/phy/qcom,usb-hsic-phy.yaml       | 67 +++++++++++++++++++
 2 files changed, 67 insertions(+), 65 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/qcom,usb-hsic-phy.txt
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,usb-hsic-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-hsic-phy.txt b/Documentation/devicetree/bindings/phy/qcom,usb-hsic-phy.txt
deleted file mode 100644
index 3c7cb2be4b12..000000000000
--- a/Documentation/devicetree/bindings/phy/qcom,usb-hsic-phy.txt
+++ /dev/null
@@ -1,65 +0,0 @@
-Qualcomm's USB HSIC PHY
-
-PROPERTIES
-
-- compatible:
-    Usage: required
-    Value type: <string>
-    Definition: Should contain "qcom,usb-hsic-phy" and more specifically one of the
-		following:
-
-			"qcom,usb-hsic-phy-mdm9615"
-			"qcom,usb-hsic-phy-msm8974"
-
-- #phy-cells:
-    Usage: required
-    Value type: <u32>
-    Definition: Should contain 0
-
-- clocks:
-    Usage: required
-    Value type: <prop-encoded-array>
-    Definition: Should contain clock specifier for phy, calibration and
-                a calibration sleep clock
-
-- clock-names:
-    Usage: required
-    Value type: <stringlist>
-    Definition: Should contain "phy, "cal" and "cal_sleep"
-
-- pinctrl-names:
-    Usage: required
-    Value type: <stringlist>
-    Definition: Should contain "init" and "default" in that order
-
-- pinctrl-0:
-    Usage: required
-    Value type: <prop-encoded-array>
-    Definition: List of pinctrl settings to apply to keep HSIC pins in a glitch
-                free state
-
-- pinctrl-1:
-    Usage: required
-    Value type: <prop-encoded-array>
-    Definition: List of pinctrl settings to apply to mux out the HSIC pins
-
-EXAMPLE
-
-usb-controller {
-	ulpi {
-		phy {
-			compatible = "qcom,usb-hsic-phy-msm8974",
-				     "qcom,usb-hsic-phy";
-			#phy-cells = <0>;
-			pinctrl-names = "init", "default";
-			pinctrl-0 = <&hsic_sleep>;
-			pinctrl-1 = <&hsic_default>;
-			clocks = <&gcc GCC_USB_HSIC_CLK>,
-				 <&gcc GCC_USB_HSIC_IO_CAL_CLK>,
-				 <&gcc GCC_USB_HSIC_IO_CAL_SLEEP_CLK>;
-			clock-names = "phy", "cal", "cal_sleep";
-			assigned-clocks = <&gcc GCC_USB_HSIC_IO_CAL_CLK>;
-			assigned-clock-rates = <960000>;
-		};
-	};
-};
diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-hsic-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-hsic-phy.yaml
new file mode 100644
index 000000000000..077e13a94448
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,usb-hsic-phy.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,usb-hsic-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm USB HSIC PHY Controller
+
+maintainers:
+  - Bjorn Andersson <andersson@kernel.org>
+  - Vinod Koul <vkoul@kernel.org>
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - qcom,usb-hsic-phy-mdm9615
+          - qcom,usb-hsic-phy-msm8974
+      - const: qcom,usb-hsic-phy
+
+  clocks:
+    maxItems: 3
+
+  clock-names:
+    items:
+      - const: phy
+      - const: cal
+      - const: cal_sleep
+
+  "#phy-cells":
+    const: 0
+
+  pinctrl-0: true
+  pinctrl-1: true
+
+  pinctrl-names:
+    items:
+      - const: init
+      - const: default
+
+required:
+  - compatible
+  - clocks
+  - clock-names
+  - "#phy-cells"
+  - pinctrl-0
+  - pinctrl-1
+  - pinctrl-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,gcc-msm8974.h>
+
+    phy {
+        compatible = "qcom,usb-hsic-phy-msm8974",
+                     "qcom,usb-hsic-phy";
+        clocks = <&gcc GCC_USB_HSIC_CLK>,
+                 <&gcc GCC_USB_HSIC_IO_CAL_CLK>,
+                 <&gcc GCC_USB_HSIC_IO_CAL_SLEEP_CLK>;
+        clock-names = "phy", "cal", "cal_sleep";
+        #phy-cells = <0>;
+        pinctrl-names = "init", "default";
+        pinctrl-0 = <&hsic_sleep>;
+        pinctrl-1 = <&hsic_default>;
+    };
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
