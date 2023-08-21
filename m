Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BC62EE49AB
	for <linux-phy@archiver.kernel.org>; Mon, 21 Aug 2023 00:25:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VjQj5y60KASLi/fMJ3JbMWqpULbwAlbHD4K2m7FnW3E=; b=M7117xc/g7QqWD
	hLJKnCySyK+x2zp96DLYMSkMOHYHOPfaUOOgMz/pAM1fnBjGOk3tOb+ttRRcodAHvuDsdsNPurgfp
	qPUVnpfb7rqK/j69xc4l0+uCkRM3Yoff+2xblZzbH2DSEapMqtBElmfyXrYGRv6S8Ksz5LOvl30ET
	lXqUTD6OYNOLJ28udMPIcQM0p3Ec+5LT0TBREU2MhhEl00qzMeZ9PeCtAGUSw6DKaV2cdEqCoH8cI
	zpzetKy5v7Z7tfYXkYkkcdowed1jAqj7NaEx7Rs8127OTl0wPOXooAOTuYW6F4Byg0LH7jk99xta2
	6tDc3HP5PZYWBxjdllkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXsjm-00CjkD-36;
	Mon, 21 Aug 2023 00:25:42 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXsjj-00CjiM-3B
	for linux-phy@lists.infradead.org;
	Mon, 21 Aug 2023 00:25:42 +0000
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2b9c0391749so45327211fa.0
        for <linux-phy@lists.infradead.org>; Sun, 20 Aug 2023 17:25:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692577537; x=1693182337;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MlBywfivHvodh4mS9iHR7eqeZaq8nRLsVZ6tJbx6F8U=;
        b=yOvrXe/BXmex45ui1OpIcp9vV+KWv5xrT8TogGr64SRQw0iBRRmxM73LahYaCwyO6i
         fHzWbdKJFsDCriJLXtVezAJDT64zxgld5sLKc+R0N3DPLdfAQlpbbcDEFKbdRa1xkU/z
         BMo7yjzpzbK+dDBIa8MJz+dhnwfC+gDSqFNKRNj+EpmRnDp+w0LbV24Lv86Pc0D64S+F
         pi9AVm5I3AgRGC1jb2LgTcvcUJIDY4SS/M3781Q/kW9rLtmTjcNI4zL/xwJAYnRli3F0
         DxGddMKHbz7V4yl2d1FAo3fuAozeCKJQwTTNfNq8VnwqYHNDfJktD1bT5yKaclmWAu1v
         SUgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692577537; x=1693182337;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MlBywfivHvodh4mS9iHR7eqeZaq8nRLsVZ6tJbx6F8U=;
        b=Ll+cp0E7TFO84ROFFWrNxm3MQrnb5w6zdYf901YHrvbDMRpNtc2mXPZSAeFWn3jzml
         MTQKRskwXFF3e5uSkRkyrE1OFD4cvILiJ+AU23p2GQoJ/8EdvaqZOrwu1HQy2+ayeKDn
         eVfN5kMw51vNrsy2x4ide+D5TKd9zME8NIoxM0DsRM1YGWWGf46GtSTGY0YBHZPzXubO
         G2X+DvLS9ZqJcQnsJfPpxdoP3aNqAN8qOGBZrqFNBpgqG5CBrUs63q0vMUqrg9aO5sJa
         qiaCRqVxk0LBbrkUcAqbsv3tcME1ja7kYGcQPm8QMdw/ZXgsipiqvgdVROGefjVF2Qy4
         BpSA==
X-Gm-Message-State: AOJu0YzxFGQdhz3Lv/0ujpkstRbZ45vSMZTrHmPmRfCRzc0k3vNmbh87
	JH4kgwST8gDPIbFjjvMXaqotXw==
X-Google-Smtp-Source: AGHT+IGr1AAyiKDHgTaKoz9UMMvAW1C49VjMzx4u/4AVVSvMzRGKmNor00gDybXqhjAAaNkhA487rw==
X-Received: by 2002:a2e:9a88:0:b0:2bb:bfb0:7b66 with SMTP id p8-20020a2e9a88000000b002bbbfb07b66mr3831718lji.1.1692577537388;
        Sun, 20 Aug 2023 17:25:37 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h27-20020a2eb0fb000000b002b6fe751b6esm1964923ljl.124.2023.08.20.17.25.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Aug 2023 17:25:36 -0700 (PDT)
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
Subject: [PATCH v2 01/16] dt-bindings: phy: migrate QMP USB PHY bindings to qcom,sc8280xp-qmp-usb3-uni-phy.yaml
Date: Mon, 21 Aug 2023 03:25:20 +0300
Message-Id: <20230821002535.585660-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230821002535.585660-1-dmitry.baryshkov@linaro.org>
References: <20230821002535.585660-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230820_172540_023045_8D247A63 
X-CRM114-Status: GOOD (  10.70  )
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
 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   |  53 +++-
 2 files changed, 51 insertions(+), 289 deletions(-)
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
index f99fbbcd68fb..60cbcf3c19b3 100644
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
@@ -74,7 +87,13 @@ allOf:
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
         clock-names:
@@ -109,6 +128,9 @@ allOf:
             enum:
               - qcom,sa8775p-qmp-usb3-uni-phy
               - qcom,sc8280xp-qmp-usb3-uni-phy
+              - qcom,sm8150-qmp-usb3-uni-phy
+              - qcom,sm8250-qmp-usb3-uni-phy
+              - qcom,sm8350-qmp-usb3-uni-phy
     then:
       properties:
         clocks:
@@ -119,6 +141,33 @@ allOf:
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
