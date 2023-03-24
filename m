Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACCA6C77B61
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 02:25:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YCL1HDafCGCkZStvAJcrZdWBwNr2UxHowj+cpHzI5+M=; b=zljcUzh1z6sNWY
	N5xuBUq3qr/3DGgrktfEp5XTPFLKsLAMVWtsZmUef3cBRktQM2Mztlq2f4xnBxH1BgWYE5kgBYLyv
	tZGWToJ4ad0wgaI9aUukJYEOG+SB/3V5x7UnPS10jMWHb0jkwVqSajJNVsHZ+g4MQIHljByytmTNh
	/BVxFz/4895EV+RIzpCQaltrX9aTTwR8ROb5njf9S1zWcdTTZkjbZoX/dgTfGeBLUAnkbTGQVijaE
	/oVTsEOwKU7cBCAWUCQSFJaOFmsTonH66J1z36G7MxYzZZWMfs9BfhTTXopLxtPVju2AVEBtONiq2
	yeS1PhxqAjjAwLxMnNuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7L-003O8C-11;
	Fri, 24 Mar 2023 02:25:23 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7G-003O6I-1v
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 02:25:20 +0000
Received: by mail-lf1-x129.google.com with SMTP id c29so416483lfv.3
        for <linux-phy@lists.infradead.org>; Thu, 23 Mar 2023 19:25:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679624716;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mfylpAbd7fu0bqu+xuK1hq+Dn0gQldkifm0eoRgMfvE=;
        b=iVrkCv5RoMKIS0ImKygpVtei+TcbJp6uDsxWpqKXGayCNNgptMUA4ZITUT8Zmm1qjf
         iYipcYPD6pjlluXR8NBNXr8b52DNI3A0YePKBMGhuA40AzNF9k7MjPFdtpftmBQtbKyn
         gq7BSa+6ZwULxje8Xm900fGXAekGKoMJohkkSvBp859jH3R99fsi6WspoJJB878zng5S
         XZIHcBp/egTXlH8z85f5g7S3pIcPDStb5g7N7PSmpaZfXQsn3uQnfvYs8aVvwHaZtf+y
         1IRnpXELp1nsg5TTlTvYoteMOX9dGZFO2XcA5H90j2nXO3MVLii2OO9NTIoS0uhCcRRx
         h7KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679624716;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mfylpAbd7fu0bqu+xuK1hq+Dn0gQldkifm0eoRgMfvE=;
        b=LP/W+Tnl0+/5OTtgdF+P5aX28i4mm2QwTgOWxPCLMyfBUpHfdW9ZxMdFxxF8tZXyrX
         W/A0F0J0edJOwuTfcTa6cDwpalvCvy8Ou5z6MqZXB/aicTIH8q1Q9IB+oNnSh056oZME
         aZeEnQeOMYGamrIqcyCFRG6gU25PBSYQjHygX/W2zJqOpvt5SZ6Kmb07kc6ixdhM68oD
         p+q7vEuC11ddOl6B0dyfejNoFu2UcpCws9XPdHGdOaQJeDXVuWbX2kdCV6FHp1oOydjC
         JXF/Fpm+dlU+f3/VJ/gxnzbmfUtHehd0M17yXV0cLmMTgP3ZSIlVywXOJDGNNHFnHSic
         h+eg==
X-Gm-Message-State: AAQBX9cxttbA4DzpHusHPqHp5pWSkammXqvQd08/+6Sj1kjnU0Leq71+
	lFbcLFwHDES46qIJwRW1iSFdKQ==
X-Google-Smtp-Source: AKy350YE5nK/ZhkXDiP9ONwVu6Iffp7k6xH426/xqLO3Gsv5Eo8NUnB70Kxn1mvA5kcDTBdHSWeDAQ==
X-Received: by 2002:ac2:568f:0:b0:4eb:18d:91de with SMTP id 15-20020ac2568f000000b004eb018d91demr176024lfr.43.1679624716394;
        Thu, 23 Mar 2023 19:25:16 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id x4-20020a19f604000000b004db3aa3c542sm3162628lfe.47.2023.03.23.19.25.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 19:25:15 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 01/41] dt-bindings: phy: migrate QMP USB PHY bindings to qcom,sc8280xp-qmp-usb3-uni-phy.yaml
Date: Fri, 24 Mar 2023 05:24:34 +0300
Message-Id: <20230324022514.1800382-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
References: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_192518_634913_FD9419FC 
X-CRM114-Status: GOOD (  10.14  )
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
 .../phy/qcom,msm8996-qmp-usb3-phy.yaml        | 394 ------------------
 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   | 236 ++++++++++-
 2 files changed, 226 insertions(+), 404 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
deleted file mode 100644
index e81a38281f8c..000000000000
--- a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
+++ /dev/null
@@ -1,394 +0,0 @@
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
-      - qcom,qcm2290-qmp-usb3-phy
-      - qcom,sc7180-qmp-usb3-phy
-      - qcom,sc8180x-qmp-usb3-phy
-      - qcom,sdm845-qmp-usb3-phy
-      - qcom,sdm845-qmp-usb3-uni-phy
-      - qcom,sdx55-qmp-usb3-uni-phy
-      - qcom,sdx65-qmp-usb3-uni-phy
-      - qcom,sm6115-qmp-usb3-phy
-      - qcom,sm8150-qmp-usb3-phy
-      - qcom,sm8150-qmp-usb3-uni-phy
-      - qcom,sm8250-qmp-usb3-phy
-      - qcom,sm8250-qmp-usb3-uni-phy
-      - qcom,sm8350-qmp-usb3-phy
-      - qcom,sm8350-qmp-usb3-uni-phy
-      - qcom,sm8450-qmp-usb3-phy
-
-  reg:
-    minItems: 1
-    items:
-      - description: serdes
-      - description: DP_COM
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
-              - qcom,sc7180-qmp-usb3-phy
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
-          maxItems: 1
-        reset-names:
-          items:
-            - const: phy
-
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
-              - qcom,sm8150-qmp-usb3-phy
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
-              - qcom,sm8250-qmp-usb3-phy
-              - qcom,sm8350-qmp-usb3-phy
-    then:
-      properties:
-        clocks:
-          maxItems: 3
-        clock-names:
-          items:
-            - const: aux
-            - const: ref_clk_src
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
-              - qcom,qcm2290-qmp-usb3-phy
-              - qcom,sm6115-qmp-usb3-phy
-    then:
-      properties:
-        clocks:
-          maxItems: 3
-        clock-names:
-          items:
-            - const: cfg_ahb
-            - const: ref
-            - const: com_aux
-        resets:
-          maxItems: 2
-        reset-names:
-          items:
-            - const: phy_phy
-            - const: phy
-
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,sdm845-qmp-usb3-phy
-              - qcom,sm8150-qmp-usb3-phy
-              - qcom,sm8350-qmp-usb3-phy
-              - qcom,sm8450-qmp-usb3-phy
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
-                - description: PCS_MISC
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
-              - qcom,qcm2290-qmp-usb3-phy
-              - qcom,sc7180-qmp-usb3-phy
-              - qcom,sc8180x-qmp-usb3-phy
-              - qcom,sdx55-qmp-usb3-uni-phy
-              - qcom,sdx65-qmp-usb3-uni-phy
-              - qcom,sm6115-qmp-usb3-phy
-              - qcom,sm8150-qmp-usb3-uni-phy
-              - qcom,sm8250-qmp-usb3-phy
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
index 16fce1038285..29a417fb7af1 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
@@ -16,20 +16,37 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,ipq6018-qmp-usb3-phy
+      - qcom,ipq8074-qmp-usb3-phy
+      - qcom,msm8996-qmp-usb3-phy
+      - qcom,msm8998-qmp-usb3-phy
+      - qcom,qcm2290-qmp-usb3-phy
+      - qcom,sc7180-qmp-usb3-phy
+      - qcom,sc8180x-qmp-usb3-phy
       - qcom,sc8280xp-qmp-usb3-uni-phy
+      - qcom,sdm845-qmp-usb3-phy
+      - qcom,sdm845-qmp-usb3-uni-phy
+      - qcom,sdx55-qmp-usb3-uni-phy
+      - qcom,sdx65-qmp-usb3-uni-phy
+      - qcom,sm6115-qmp-usb3-phy
+      - qcom,sm8150-qmp-usb3-phy
+      - qcom,sm8150-qmp-usb3-uni-phy
+      - qcom,sm8250-qmp-usb3-phy
+      - qcom,sm8250-qmp-usb3-uni-phy
+      - qcom,sm8350-qmp-usb3-phy
+      - qcom,sm8350-qmp-usb3-uni-phy
+      - qcom,sm8450-qmp-usb3-phy
 
   reg:
     maxItems: 1
 
   clocks:
-    maxItems: 4
+    minItems: 4
+    maxItems: 5
 
   clock-names:
-    items:
-      - const: aux
-      - const: ref
-      - const: com_aux
-      - const: pipe
+    minItems: 4
+    maxItems: 5
 
   power-domains:
     maxItems: 1
@@ -38,9 +55,7 @@ properties:
     maxItems: 2
 
   reset-names:
-    items:
-      - const: phy
-      - const: phy_phy
+    maxItems: 2
 
   vdda-phy-supply: true
 
@@ -60,7 +75,6 @@ required:
   - reg
   - clocks
   - clock-names
-  - power-domains
   - resets
   - reset-names
   - vdda-phy-supply
@@ -71,6 +85,179 @@ required:
 
 additionalProperties: false
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sc7180-qmp-usb3-phy
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
+        resets:
+          maxItems: 1
+        reset-names:
+          items:
+            - const: phy
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sc8280xp-qmp-usb3-phy
+    then:
+      properties:
+        clocks:
+          maxItems: 4
+        clock-names:
+          items:
+            - const: aux
+            - const: ref
+            - const: com_aux
+            - const: pipe
+        resets:
+          maxItems: 1
+        reset-names:
+          items:
+            - const: phy
+            - const: phy_phy
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
+        resets:
+          maxItems: 2
+        reset-names:
+          items:
+            - const: phy
+            - const: common
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,ipq8074-qmp-usb3-phy
+              - qcom,msm8996-qmp-usb3-phy
+              - qcom,msm8998-qmp-usb3-phy
+              - qcom,sdx55-qmp-usb3-uni-phy
+              - qcom,sdx65-qmp-usb3-uni-phy
+    then:
+      properties:
+        clocks:
+          maxItems: 4
+        clock-names:
+          items:
+            - const: aux
+            - const: cfg_ahb
+            - const: ref
+            - const: pipe
+        resets:
+          maxItems: 2
+        reset-names:
+          items:
+            - const: phy
+            - const: common
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sm8150-qmp-usb3-phy
+              - qcom,sm8150-qmp-usb3-uni-phy
+              - qcom,sm8250-qmp-usb3-uni-phy
+              - qcom,sm8350-qmp-usb3-uni-phy
+    then:
+      properties:
+        clocks:
+          maxItems: 5
+        clock-names:
+          items:
+            - const: aux
+            - const: ref_clk_src
+            - const: ref
+            - const: com_aux
+            - const: pipe
+        resets:
+          maxItems: 2
+        reset-names:
+          items:
+            - const: phy
+            - const: common
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sm8250-qmp-usb3-phy
+              - qcom,sm8350-qmp-usb3-phy
+    then:
+      properties:
+        clocks:
+          maxItems: 4
+        clock-names:
+          items:
+            - const: aux
+            - const: ref_clk_src
+            - const: com_aux
+            - const: pipe
+        resets:
+          maxItems: 2
+        reset-names:
+          items:
+            - const: phy
+            - const: common
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,qcm2290-qmp-usb3-phy
+              - qcom,sm6115-qmp-usb3-phy
+    then:
+      properties:
+        clocks:
+          maxItems: 4
+        clock-names:
+          items:
+            - const: cfg_ahb
+            - const: ref
+            - const: com_aux
+            - const: pipe
+        resets:
+          maxItems: 2
+        reset-names:
+          items:
+            - const: phy_phy
+            - const: phy
+
 examples:
   - |
     #include <dt-bindings/clock/qcom,gcc-sc8280xp.h>
@@ -100,3 +287,32 @@ examples:
 
       #phy-cells = <0>;
     };
+  - |
+    #define GCC_USB3_SEC_CLKREF_CLK       156
+    #define GCC_USB_PHY_CFG_AHB2PHY_CLK   161
+
+    phy@88eb000 {
+        compatible = "qcom,sdm845-qmp-usb3-uni-phy";
+        reg = <0x088eb000 0x18c>;
+
+        clocks = <&gcc GCC_USB3_SEC_PHY_AUX_CLK >,
+                 <&gcc GCC_USB_PHY_CFG_AHB2PHY_CLK>,
+                 <&gcc GCC_USB3_SEC_CLKREF_CLK>,
+                 <&gcc GCC_USB3_SEC_PHY_COM_AUX_CLK>,
+                 <&gcc GCC_USB3_SEC_PHY_PIPE_CLK>;
+        clock-names = "aux", "cfg_ahb", "ref", "com_aux", "pipe";
+
+        resets = <&gcc GCC_USB3PHY_PHY_SEC_BCR>,
+                 <&gcc GCC_USB3_PHY_SEC_BCR>;
+        reset-names = "phy", "common";
+
+        vdda-phy-supply = <&vdda_usb2_ss_1p2>;
+        vdda-pll-supply = <&vdda_usb2_ss_core>;
+
+
+        #clock-cells = <0>;
+        clock-output-names = "usb3_uni_phy_pipe_clk_src";
+
+        #phy-cells = <0>;
+    };
+...
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
