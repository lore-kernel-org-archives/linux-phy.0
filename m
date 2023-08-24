Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C7DDC88CB9
	for <linux-phy@archiver.kernel.org>; Thu, 24 Aug 2023 21:20:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jI+929dA9BrcB+GhFcePkfWF3gL5jPvvx9OtheAHcSU=; b=teJBAA0w5gYGkh
	mbk+K7ks1ue0HqJVOv5wFir1XQDICVlINaClesxB47sDINbXP/GhxIn9rqBHNQTPNhK/+yjV0Es4v
	AtO4eIrrNXlC5Gw6UgCS4jOiAxl54u8T+TP1MsxoO1ZqZ9EniTHyXedv+6PfikKKtLCKQ+qOK7O9L
	DcAyYtk2hM2NrPYpQtXAgOV7CQJauW53r3Pb45hGE6IMJVRvUwO79hkgNvAN/iO0U8+1AsjdGrfVP
	M65/KadxZ+nfmEFPYp/21JPif5jFT9VlIT/peQGIv30fSic72ovcWBqERHMmKvtnmBoelogV0cmMU
	xCcM/vroUWqptkMBYYrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZHkI-003opQ-2b;
	Thu, 24 Aug 2023 21:20:02 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZHkE-003ojg-1z
	for linux-phy@lists.infradead.org;
	Thu, 24 Aug 2023 21:20:01 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-4fe1b00fce2so349642e87.3
        for <linux-phy@lists.infradead.org>; Thu, 24 Aug 2023 14:19:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692911995; x=1693516795;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+IBBc3y1/HV6Ww5kyVYw2lM0lyqWK83XnbAhM+Lr5bs=;
        b=uw13nTeGaIsGGhs+kGFZ1pjjAB6WNvKfL78xXYanUK/hfTZqvvZhmWW5+Dc5vy1GY/
         jXJrRR2KQUs2O1QrrpqL+KxlwnmU68uDCvQ0EUSxD+W6Dgi6GJ0b3id/XkZVymaoVSEu
         p9cf7cSPuji4mwYhBPgC+QDVT/KePvFbbiycb323nFaSfIGd2w3fwep0Yy3mzgquC+v6
         UNl9Kvk5RVugNPfusNgRzMOBHc0vcjhTgdR/+g8u20ePak5eUREnuEYceg3eotdBbQrI
         HT09HRNoumAG/PFoYS6fjPlGQkQ3xKRDriy62NemFlU4WI/a9fLOaCOSduosy9FBB9u5
         2UkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692911995; x=1693516795;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+IBBc3y1/HV6Ww5kyVYw2lM0lyqWK83XnbAhM+Lr5bs=;
        b=Qla5uvNgwW26/giKcrOkqiFpgY59m8dWf1Vjq9Vxr3jIzljMpsR+7jhNkqeZK2LyIR
         qdZb4FRMgztmegKjg7NgVCc6Pjsmgq5wBHHbZ6+dmX08IALCzQUzsMo9UCllnq+tggvt
         vIRTrIIcpsThXxZeeFGL/3dnNBSLHQl2vRCsIoMr6CiqAfULcSf3zzXhYPR2KQsOnNy1
         Pk3UV+568+FHjht+k6pgiYLU2yy6wFje86XWlb0QZYFF2WsjRYOo4wB6a+Dq4GNtUJhb
         TCJQtFqopTmTlXqi+GmcTY8e/xMkm7VWx4yH41g5z/6jRunxc2CdZSeivTMj333zfIO4
         2utw==
X-Gm-Message-State: AOJu0YzpQwRo4Omv7ZRufP3MK0zCIDfqfw6ppfehrJGh9dHqZ7yjD/fk
	X3QoODmw2USpd4p+eWAXMotXEA==
X-Google-Smtp-Source: AGHT+IGlnPI7h/x/8qO+ag5nn/1lWoUmEWMq7d+dzQbwl0m23Bqa0fNNyDDSbWd4QGd5IkYFbEtY8g==
X-Received: by 2002:a05:6512:3241:b0:4fe:25bc:71f5 with SMTP id c1-20020a056512324100b004fe25bc71f5mr10292238lfr.11.1692911995068;
        Thu, 24 Aug 2023 14:19:55 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id j29-20020a056512029d00b004fe4ab686b4sm17690lfp.167.2023.08.24.14.19.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Aug 2023 14:19:54 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 01/16] dt-bindings: phy: migrate QMP USB PHY bindings to qcom,sc8280xp-qmp-usb3-uni-phy.yaml
Date: Fri, 25 Aug 2023 00:19:37 +0300
Message-Id: <20230824211952.1397699-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230824211952.1397699-1-dmitry.baryshkov@linaro.org>
References: <20230824211952.1397699-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230824_141958_655305_0BCD2D0D 
X-CRM114-Status: GOOD (  10.95  )
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

Migrate legacy bindings (described in qcom,msm8996-qmp-usb3-phy.yaml)
to qcom,sc8280xp-qmp-usb3-uni-phy.yaml. This removes a need to declare
the child PHY node or split resource regions.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../phy/qcom,msm8996-qmp-usb3-phy.yaml        | 287 ------------------
 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   |  55 +++-
 2 files changed, 53 insertions(+), 289 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
deleted file mode 100644
index 827109d37041..000000000000
--- a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
+++ /dev/null
@@ -1,287 +0,0 @@
-# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
-%YAML 1.2
----
-$id: http://devicetree.org/schemas/phy/qcom,msm8996-qmp-usb3-phy.yaml#
-$schema: http://devicetree.org/meta-schemas/core.yaml#
-
-title: Qualcomm QMP PHY controller (USB, MSM8996)
-
-maintainers:
-  - Vinod Koul <vkoul@kernel.org>
-
-description:
-  QMP PHY controller supports physical layer functionality for a number of
-  controllers on Qualcomm chipsets, such as, PCIe, UFS, and USB.
-
-  Note that these bindings are for SoCs up to SC8180X. For newer SoCs, see
-  qcom,sc8280xp-qmp-usb3-uni-phy.yaml.
-
-properties:
-  compatible:
-    enum:
-      - qcom,ipq6018-qmp-usb3-phy
-      - qcom,ipq8074-qmp-usb3-phy
-      - qcom,msm8996-qmp-usb3-phy
-      - qcom,msm8998-qmp-usb3-phy
-      - qcom,sdm845-qmp-usb3-uni-phy
-      - qcom,sdx55-qmp-usb3-uni-phy
-      - qcom,sdx65-qmp-usb3-uni-phy
-      - qcom,sm8150-qmp-usb3-uni-phy
-      - qcom,sm8250-qmp-usb3-uni-phy
-      - qcom,sm8350-qmp-usb3-uni-phy
-
-  reg:
-    items:
-      - description: serdes
-
-  "#address-cells":
-    enum: [ 1, 2 ]
-
-  "#size-cells":
-    enum: [ 1, 2 ]
-
-  ranges: true
-
-  clocks:
-    minItems: 3
-    maxItems: 4
-
-  clock-names:
-    minItems: 3
-    maxItems: 4
-
-  power-domains:
-    maxItems: 1
-
-  resets:
-    maxItems: 2
-
-  reset-names:
-    maxItems: 2
-
-  vdda-phy-supply: true
-
-  vdda-pll-supply: true
-
-  vddp-ref-clk-supply: true
-
-patternProperties:
-  "^phy@[0-9a-f]+$":
-    type: object
-    description: single PHY-provider child node
-    properties:
-      reg:
-        minItems: 3
-        maxItems: 6
-
-      clocks:
-        items:
-          - description: PIPE clock
-
-      clock-names:
-        deprecated: true
-        items:
-          - const: pipe0
-
-      "#clock-cells":
-        const: 0
-
-      clock-output-names:
-        maxItems: 1
-
-      "#phy-cells":
-        const: 0
-
-    required:
-      - reg
-      - clocks
-      - "#clock-cells"
-      - clock-output-names
-      - "#phy-cells"
-
-    additionalProperties: false
-
-required:
-  - compatible
-  - reg
-  - "#address-cells"
-  - "#size-cells"
-  - ranges
-  - clocks
-  - clock-names
-  - resets
-  - reset-names
-  - vdda-phy-supply
-  - vdda-pll-supply
-
-additionalProperties: false
-
-allOf:
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,sdm845-qmp-usb3-uni-phy
-    then:
-      properties:
-        clocks:
-          maxItems: 4
-        clock-names:
-          items:
-            - const: aux
-            - const: cfg_ahb
-            - const: ref
-            - const: com_aux
-        resets:
-          maxItems: 2
-        reset-names:
-          items:
-            - const: phy
-            - const: common
-
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,ipq8074-qmp-usb3-phy
-              - qcom,msm8996-qmp-usb3-phy
-              - qcom,msm8998-qmp-usb3-phy
-              - qcom,sdx55-qmp-usb3-uni-phy
-              - qcom,sdx65-qmp-usb3-uni-phy
-    then:
-      properties:
-        clocks:
-          maxItems: 3
-        clock-names:
-          items:
-            - const: aux
-            - const: cfg_ahb
-            - const: ref
-        resets:
-          maxItems: 2
-        reset-names:
-          items:
-            - const: phy
-            - const: common
-
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,sm8150-qmp-usb3-uni-phy
-              - qcom,sm8250-qmp-usb3-uni-phy
-              - qcom,sm8350-qmp-usb3-uni-phy
-    then:
-      properties:
-        clocks:
-          maxItems: 4
-        clock-names:
-          items:
-            - const: aux
-            - const: ref_clk_src
-            - const: ref
-            - const: com_aux
-        resets:
-          maxItems: 2
-        reset-names:
-          items:
-            - const: phy
-            - const: common
-
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,msm8998-qmp-usb3-phy
-    then:
-      patternProperties:
-        "^phy@[0-9a-f]+$":
-          properties:
-            reg:
-              items:
-                - description: TX lane 1
-                - description: RX lane 1
-                - description: PCS
-                - description: TX lane 2
-                - description: RX lane 2
-
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,ipq6018-qmp-usb3-phy
-              - qcom,ipq8074-qmp-usb3-phy
-              - qcom,sdx55-qmp-usb3-uni-phy
-              - qcom,sdx65-qmp-usb3-uni-phy
-              - qcom,sm8150-qmp-usb3-uni-phy
-    then:
-      patternProperties:
-        "^phy@[0-9a-f]+$":
-          properties:
-            reg:
-              items:
-                - description: TX
-                - description: RX
-                - description: PCS
-                - description: PCS_MISC
-
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,msm8996-qmp-usb3-phy
-              - qcom,sm8250-qmp-usb3-uni-phy
-              - qcom,sm8350-qmp-usb3-uni-phy
-    then:
-      patternProperties:
-        "^phy@[0-9a-f]+$":
-          properties:
-            reg:
-              items:
-                - description: TX
-                - description: RX
-                - description: PCS
-
-examples:
-  - |
-    #include <dt-bindings/clock/qcom,gcc-sdm845.h>
-    usb_2_qmpphy: phy-wrapper@88eb000 {
-        compatible = "qcom,sdm845-qmp-usb3-uni-phy";
-        reg = <0x088eb000 0x18c>;
-        #address-cells = <1>;
-        #size-cells = <1>;
-        ranges = <0x0 0x088eb000 0x2000>;
-
-        clocks = <&gcc GCC_USB3_SEC_PHY_AUX_CLK >,
-                 <&gcc GCC_USB_PHY_CFG_AHB2PHY_CLK>,
-                 <&gcc GCC_USB3_SEC_CLKREF_CLK>,
-                 <&gcc GCC_USB3_SEC_PHY_COM_AUX_CLK>;
-        clock-names = "aux", "cfg_ahb", "ref", "com_aux";
-
-        resets = <&gcc GCC_USB3PHY_PHY_SEC_BCR>,
-                 <&gcc GCC_USB3_PHY_SEC_BCR>;
-        reset-names = "phy", "common";
-
-        vdda-phy-supply = <&vdda_usb2_ss_1p2>;
-        vdda-pll-supply = <&vdda_usb2_ss_core>;
-
-        usb_2_ssphy: phy@200 {
-                reg = <0x200 0x128>,
-                      <0x400 0x1fc>,
-                      <0x800 0x218>,
-                      <0x600 0x70>;
-
-                clocks = <&gcc GCC_USB3_SEC_PHY_PIPE_CLK>;
-
-                #clock-cells = <0>;
-                clock-output-names = "usb3_uni_phy_pipe_clk_src";
-
-                #phy-cells = <0>;
-            };
-        };
diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
index f99fbbcd68fb..bbdb28cd8029 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
@@ -16,20 +16,33 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,ipq6018-qmp-usb3-phy
+      - qcom,ipq8074-qmp-usb3-phy
       - qcom,ipq9574-qmp-usb3-phy
+      - qcom,msm8996-qmp-usb3-phy
+      - qcom,msm8998-qmp-usb3-phy
       - qcom,qcm2290-qmp-usb3-phy
       - qcom,sa8775p-qmp-usb3-uni-phy
       - qcom,sc8280xp-qmp-usb3-uni-phy
+      - qcom,sdm845-qmp-usb3-uni-phy
+      - qcom,sdx55-qmp-usb3-uni-phy
+      - qcom,sdx65-qmp-usb3-uni-phy
       - qcom,sm6115-qmp-usb3-phy
+      - qcom,sm8150-qmp-usb3-uni-phy
+      - qcom,sm8250-qmp-usb3-uni-phy
+      - qcom,sm8350-qmp-usb3-uni-phy
+
 
   reg:
     maxItems: 1
 
   clocks:
-    maxItems: 4
+    minItems: 4
+    maxItems: 5
 
   clock-names:
-    maxItems: 4
+    minItems: 4
+    maxItems: 5
 
   power-domains:
     maxItems: 1
@@ -74,9 +87,17 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,ipq6018-qmp-usb3-phy
+              - qcom,ipq8074-qmp-usb3-phy
               - qcom,ipq9574-qmp-usb3-phy
+              - qcom,msm8996-qmp-usb3-phy
+              - qcom,msm8998-qmp-usb3-phy
+              - qcom,sdx55-qmp-usb3-uni-phy
+              - qcom,sdx65-qmp-usb3-uni-phy
     then:
       properties:
+        clocks:
+          maxItems: 4
         clock-names:
           items:
             - const: aux
@@ -109,6 +130,9 @@ allOf:
             enum:
               - qcom,sa8775p-qmp-usb3-uni-phy
               - qcom,sc8280xp-qmp-usb3-uni-phy
+              - qcom,sm8150-qmp-usb3-uni-phy
+              - qcom,sm8250-qmp-usb3-uni-phy
+              - qcom,sm8350-qmp-usb3-uni-phy
     then:
       properties:
         clocks:
@@ -119,6 +143,33 @@ allOf:
             - const: ref
             - const: com_aux
             - const: pipe
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sdm845-qmp-usb3-uni-phy
+    then:
+      properties:
+        clocks:
+          maxItems: 5
+        clock-names:
+          items:
+            - const: aux
+            - const: cfg_ahb
+            - const: ref
+            - const: com_aux
+            - const: pipe
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sa8775p-qmp-usb3-uni-phy
+              - qcom,sc8280xp-qmp-usb3-uni-phy
+    then:
       required:
         - power-domains
 
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
