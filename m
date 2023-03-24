Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C60F9C7619A
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 02:25:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E1dXZ2R5S6bIDw6IaRj5toLdwkUGdaWQxZgM3EMU5qs=; b=e1t00jcFA0QXWC
	p2P95ZOZyVYqZcRuVdNIzHruQSbyNatMXYbXOkeIcuEjnNQoNtUwCXkPxMorKBfTMrQEqjjJuINOT
	NN+Cyr5Y61x7nPl6+Njvgq6fg5VlMBdMtu0CROchIMaSc6MojxbFd0lpMDY/PTYnBfNNk/xEK0HzU
	TBzuwJtsatNzphQtlwdc57Qu5QNGUJgLMk8+TlCjHRq9EsDGy66UdF1RQUn2de5AAypKRWSGlNLXQ
	qNq8TvOAJ8w+y7oesM8XhNdll/1zu+F6rZddDojLT1b5eds97Piq0MotM05cglXTxCFLxlyym94SD
	C2wGu4he8zU171N3kbbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7O-003OAU-1L;
	Fri, 24 Mar 2023 02:25:26 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7I-003O6s-3D
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 02:25:23 +0000
Received: by mail-lf1-x12a.google.com with SMTP id k37so456836lfv.0
        for <linux-phy@lists.infradead.org>; Thu, 23 Mar 2023 19:25:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679624719;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o2BpvXr+Z6dMw3AhPZYnNDNcoFi1zoA+Pe7N2yi0S64=;
        b=qM1LjGGwjTbA66bcLnkZjhNwvI7fnKuRod72WKpO/SYKqy18/h6a5Bx853rfl98oLf
         yvJMTPtwRT+J2zSG98gTUjO7Q+k8glnR/a3rSOx6SQZ4+USReWuItZH3J9t3xzNqZSpQ
         1dcvtk1RK5DRPSzJnoaadhxpc0JyXwFE6Ig7IzczDNb4vDN5zVWcoFrVInM9CaZlAA0B
         o0zY3H6Np+TgfzXfbFA16+NwDuR8HBuH1FfAbf0b7+O/0cU6wz+xgSu+EDFB3mRDVWvT
         v/L/tkOTygfupGksb7qhzugHkmRN5IM+2PIYQjKT++NZ05hr0of3lf92oJUUuXEdLpzh
         9qJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679624719;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o2BpvXr+Z6dMw3AhPZYnNDNcoFi1zoA+Pe7N2yi0S64=;
        b=pRxH3LDFYUY9q4cRTn7NrevaPM01quSjiXVS1+op9nNao8xcxP5d/iz81A4J/2HA1p
         e3vEWGz5GXvMI16jZZkG3gXqAZms8eAygcMR8gzzbSEJrkdgjc7ydvgPA8h0EOa/zvFV
         z3ZCx9Zmu8d4/scTc0FwXBvSomSAO+GO0AWHdPoPdIIXwdzVURTFWCSfr2DaCjs7r8Ij
         oRV1YGM21qE8T6RlCWdnD2a1KBiWbnfOewEBJzNJ4OxKoYDlMfwRr3Qg7JEkB6OjNM4O
         /LSQ4h6+JIdt86PcMhlVdt1Pe2t3oOFz+P7UZs6dFYljejPYHy8Prvk430q0ejKxRKS/
         TyNw==
X-Gm-Message-State: AAQBX9ey9gs3O0EwX6WrIM38jOdyUgqfgvWoCQYZFiZZTVEOUMr9gemC
	D8xF8Z9KsvJugiwgzoAXTSjWUA==
X-Google-Smtp-Source: AKy350agS+cgFnxbfgdzsxFJcask5ehsRBlh1AYdwJNsudY5Pd7Qn6EVMYaaH7Bz3pW8qSA7VNgvkA==
X-Received: by 2002:ac2:5291:0:b0:4dd:a212:e3ca with SMTP id q17-20020ac25291000000b004dda212e3camr204343lfm.11.1679624719627;
        Thu, 23 Mar 2023 19:25:19 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id x4-20020a19f604000000b004db3aa3c542sm3162628lfe.47.2023.03.23.19.25.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 19:25:18 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 04/41] dt-bindings: phy: migrate QMP PCIe PHY bindings to qcom,sc8280xp-qmp-pcie-phy.yaml
Date: Fri, 24 Mar 2023 05:24:37 +0300
Message-Id: <20230324022514.1800382-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
References: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_192521_207038_EEF3379C 
X-CRM114-Status: GOOD (  10.39  )
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

Migrate legacy bindings (described in qcom,ipq8074-qmp-pcie-phy.yaml)
to qcom,sc8280xp-qmp-pcie-phy.yaml. This removes a need to declare
the child PHY node or split resource regions.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../phy/qcom,ipq8074-qmp-pcie-phy.yaml        | 299 ------------------
 .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       | 213 +++++++++++--
 2 files changed, 187 insertions(+), 325 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
deleted file mode 100644
index 62045dcfb20c..000000000000
--- a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
+++ /dev/null
@@ -1,299 +0,0 @@
-# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
-%YAML 1.2
----
-$id: http://devicetree.org/schemas/phy/qcom,ipq8074-qmp-pcie-phy.yaml#
-$schema: http://devicetree.org/meta-schemas/core.yaml#
-
-title: Qualcomm QMP PHY controller (PCIe, IPQ8074)
-
-maintainers:
-  - Vinod Koul <vkoul@kernel.org>
-
-description:
-  QMP PHY controller supports physical layer functionality for a number of
-  controllers on Qualcomm chipsets, such as, PCIe, UFS, and USB.
-
-  Note that these bindings are for SoCs up to SC8180X. For newer SoCs, see
-  qcom,sc8280xp-qmp-pcie-phy.yaml.
-
-properties:
-  compatible:
-    enum:
-      - qcom,ipq6018-qmp-pcie-phy
-      - qcom,ipq8074-qmp-gen3-pcie-phy
-      - qcom,ipq8074-qmp-pcie-phy
-      - qcom,msm8998-qmp-pcie-phy
-      - qcom,sc8180x-qmp-pcie-phy
-      - qcom,sdm845-qhp-pcie-phy
-      - qcom,sdm845-qmp-pcie-phy
-      - qcom,sdx55-qmp-pcie-phy
-      - qcom,sm8250-qmp-gen3x1-pcie-phy
-      - qcom,sm8250-qmp-gen3x2-pcie-phy
-      - qcom,sm8250-qmp-modem-pcie-phy
-      - qcom,sm8450-qmp-gen3x1-pcie-phy
-      - qcom,sm8450-qmp-gen4x2-pcie-phy
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
-    minItems: 2
-    maxItems: 4
-
-  clock-names:
-    minItems: 2
-    maxItems: 4
-
-  resets:
-    minItems: 1
-    maxItems: 2
-
-  reset-names:
-    minItems: 1
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
-
-additionalProperties: false
-
-allOf:
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,msm8998-qmp-pcie-phy
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
-      required:
-        - vdda-phy-supply
-        - vdda-pll-supply
-
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,ipq6018-qmp-pcie-phy
-              - qcom,ipq8074-qmp-gen3-pcie-phy
-              - qcom,ipq8074-qmp-pcie-phy
-    then:
-      properties:
-        clocks:
-          maxItems: 2
-        clock-names:
-          items:
-            - const: aux
-            - const: cfg_ahb
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
-              - qcom,sc8180x-qmp-pcie-phy
-              - qcom,sdm845-qhp-pcie-phy
-              - qcom,sdm845-qmp-pcie-phy
-              - qcom,sdx55-qmp-pcie-phy
-              - qcom,sm8250-qmp-gen3x1-pcie-phy
-              - qcom,sm8250-qmp-gen3x2-pcie-phy
-              - qcom,sm8250-qmp-modem-pcie-phy
-              - qcom,sm8450-qmp-gen3x1-pcie-phy
-              - qcom,sm8450-qmp-gen4x2-pcie-phy
-    then:
-      properties:
-        clocks:
-          maxItems: 4
-        clock-names:
-          items:
-            - const: aux
-            - const: cfg_ahb
-            - const: ref
-            - const: refgen
-        resets:
-          maxItems: 1
-        reset-names:
-          items:
-            - const: phy
-      required:
-        - vdda-phy-supply
-        - vdda-pll-supply
-
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,sm8250-qmp-gen3x2-pcie-phy
-              - qcom,sm8250-qmp-modem-pcie-phy
-              - qcom,sm8450-qmp-gen4x2-pcie-phy
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
-              - qcom,sc8180x-qmp-pcie-phy
-              - qcom,sdm845-qmp-pcie-phy
-              - qcom,sdx55-qmp-pcie-phy
-              - qcom,sm8250-qmp-gen3x1-pcie-phy
-              - qcom,sm8450-qmp-gen3x1-pcie-phy
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
-              - qcom,ipq6018-qmp-pcie-phy
-              - qcom,ipq8074-qmp-pcie-phy
-              - qcom,msm8998-qmp-pcie-phy
-              - qcom,sdm845-qhp-pcie-phy
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
-    #include <dt-bindings/clock/qcom,gcc-sm8250.h>
-    phy-wrapper@1c0e000 {
-        compatible = "qcom,sm8250-qmp-gen3x2-pcie-phy";
-        reg = <0x01c0e000 0x1c0>;
-        #address-cells = <1>;
-        #size-cells = <1>;
-        ranges = <0x0 0x01c0e000 0x1000>;
-
-        clocks = <&gcc GCC_PCIE_PHY_AUX_CLK>,
-                 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
-                 <&gcc GCC_PCIE_WIGIG_CLKREF_EN>,
-                 <&gcc GCC_PCIE1_PHY_REFGEN_CLK>;
-        clock-names = "aux", "cfg_ahb", "ref", "refgen";
-
-        resets = <&gcc GCC_PCIE_1_PHY_BCR>;
-        reset-names = "phy";
-
-        vdda-phy-supply = <&vreg_l10c_0p88>;
-        vdda-pll-supply = <&vreg_l6b_1p2>;
-
-        phy@200 {
-            reg = <0x200 0x170>,
-                  <0x400 0x200>,
-                  <0xa00 0x1f0>,
-                  <0x600 0x170>,
-                  <0x800 0x200>,
-                  <0xe00 0xf4>;
-
-            clocks = <&gcc GCC_PCIE_1_PIPE_CLK>;
-
-            #clock-cells = <0>;
-            clock-output-names = "pcie_1_pipe_clk";
-
-            #phy-cells = <0>;
-        };
-    };
diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index ef49efbd0a20..328588448c6b 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -16,10 +16,23 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,ipq6018-qmp-pcie-phy
+      - qcom,ipq8074-qmp-gen3-pcie-phy
+      - qcom,ipq8074-qmp-pcie-phy
+      - qcom,msm8998-qmp-pcie-phy
+      - qcom,sc8180x-qmp-pcie-phy
       - qcom,sc8280xp-qmp-gen3x1-pcie-phy
       - qcom,sc8280xp-qmp-gen3x2-pcie-phy
       - qcom,sc8280xp-qmp-gen3x4-pcie-phy
+      - qcom,sdm845-qhp-pcie-phy
+      - qcom,sdm845-qmp-pcie-phy
+      - qcom,sdx55-qmp-pcie-phy
+      - qcom,sm8250-qmp-gen3x1-pcie-phy
+      - qcom,sm8250-qmp-gen3x2-pcie-phy
+      - qcom,sm8250-qmp-modem-pcie-phy
       - qcom,sm8350-qmp-gen3x1-pcie-phy
+      - qcom,sm8450-qmp-gen3x1-pcie-phy
+      - qcom,sm8450-qmp-gen4x2-pcie-phy
       - qcom,sm8550-qmp-gen3x2-pcie-phy
       - qcom,sm8550-qmp-gen4x2-pcie-phy
 
@@ -28,18 +41,12 @@ properties:
     maxItems: 2
 
   clocks:
-    minItems: 5
+    minItems: 3
     maxItems: 6
 
   clock-names:
-    minItems: 5
-    items:
-      - const: aux
-      - const: cfg_ahb
-      - const: ref
-      - const: rchng
-      - const: pipe
-      - const: pipediv2
+    minItems: 3
+    maxItems: 6
 
   power-domains:
     maxItems: 1
@@ -50,9 +57,7 @@ properties:
 
   reset-names:
     minItems: 1
-    items:
-      - const: phy
-      - const: phy_nocsr
+    maxItems: 2
 
   vdda-phy-supply: true
 
@@ -83,11 +88,8 @@ required:
   - reg
   - clocks
   - clock-names
-  - power-domains
   - resets
   - reset-names
-  - vdda-phy-supply
-  - vdda-pll-supply
   - "#clock-cells"
   - clock-output-names
   - "#phy-cells"
@@ -119,21 +121,116 @@ allOf:
         compatible:
           contains:
             enum:
-              - qcom,sm8350-qmp-gen3x1-pcie-phy
-              - qcom,sm8550-qmp-gen3x2-pcie-phy
-              - qcom,sm8550-qmp-gen4x2-pcie-phy
+              - qcom,msm8998-qmp-pcie-phy
     then:
       properties:
         clocks:
-          maxItems: 5
+          maxItems: 4
         clock-names:
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
+      required:
+        - vdda-phy-supply
+        - vdda-pll-supply
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,ipq6018-qmp-pcie-phy
+              - qcom,ipq8074-qmp-gen3-pcie-phy
+              - qcom,ipq8074-qmp-pcie-phy
+    then:
+      properties:
+        clocks:
+          maxItems: 3
+        clock-names:
+          items:
+            - const: aux
+            - const: cfg_ahb
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
+              - qcom,sc8180x-qmp-pcie-phy
+              - qcom,sdm845-qhp-pcie-phy
+              - qcom,sdm845-qmp-pcie-phy
+              - qcom,sdx55-qmp-pcie-phy
+              - qcom,sm8250-qmp-gen3x1-pcie-phy
+              - qcom,sm8250-qmp-gen3x2-pcie-phy
+              - qcom,sm8250-qmp-modem-pcie-phy
+              - qcom,sm8450-qmp-gen3x1-pcie-phy
+              - qcom,sm8450-qmp-gen4x2-pcie-phy
+    then:
+      properties:
+        clocks:
           maxItems: 5
-    else:
+        clock-names:
+          items:
+            - const: aux
+            - const: cfg_ahb
+            - const: ref
+            - const: refgen
+            - const: pipe
+        resets:
+          maxItems: 1
+        reset-names:
+          items:
+            - const: phy
+      required:
+        - vdda-phy-supply
+        - vdda-pll-supply
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sm8350-qmp-gen3x1-pcie-phy
+              - qcom,sm8550-qmp-gen3x2-pcie-phy
+        resets:
+          minItems: 1
+        reset-names:
+          items:
+            - const: phy
+    then:
       properties:
         clocks:
-          minItems: 6
+          maxItems: 5
         clock-names:
-          minItems: 6
+          items:
+            - const: aux
+            - const: cfg_ahb
+            - const: ref
+            - const: rchng
+            - const: pipe
+        resets:
+          maxItems: 1
+        reset-names:
+          items:
+            - const: phy
+      required:
+        - vdda-phy-supply
+        - vdda-pll-supply
 
   - if:
       properties:
@@ -143,16 +240,53 @@ allOf:
               - qcom,sm8550-qmp-gen4x2-pcie-phy
     then:
       properties:
+        clocks:
+          maxItems: 5
+        clock-names:
+          items:
+            - const: aux
+            - const: cfg_ahb
+            - const: ref
+            - const: rchng
+            - const: pipe
         resets:
           minItems: 2
         reset-names:
-          minItems: 2
-    else:
+          items:
+            - const: phy
+            - const: phy_nocsr
+      required:
+        - vdda-phy-supply
+        - vdda-pll-supply
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sc8280xp-qmp-gen3x1-pcie-phy
+              - qcom,sc8280xp-qmp-gen3x2-pcie-phy
+              - qcom,sc8280xp-qmp-gen3x4-pcie-phy
+    then:
       properties:
+        clocks:
+          minItems: 6
+        clock-names:
+          items:
+            - const: aux
+            - const: cfg_ahb
+            - const: ref
+            - const: rchng
+            - const: pipe
+            - const: pipediv2
         resets:
-          maxItems: 1
+          minItems: 1
         reset-names:
-          maxItems: 1
+          items:
+            - const: phy
+      required:
+        - vdda-phy-supply
+        - vdda-pll-supply
 
 examples:
   - |
@@ -213,3 +347,30 @@ examples:
 
       #phy-cells = <0>;
     };
+  - |
+    #define GCC_PCIE1_PHY_REFGEN_CLK   47
+    #define GCC_PCIE_PHY_AUX_CLK       71
+    #define GCC_PCIE_WIGIG_CLKREF_EN   74
+
+    phy@1c0e000 {
+        compatible = "qcom,sm8250-qmp-gen3x2-pcie-phy";
+        reg = <0x01c0e000 0x1c0>;
+
+        clocks = <&gcc GCC_PCIE_PHY_AUX_CLK>,
+                 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
+                 <&gcc GCC_PCIE_WIGIG_CLKREF_EN>,
+                 <&gcc GCC_PCIE1_PHY_REFGEN_CLK>,
+                 <&gcc GCC_PCIE_1_PIPE_CLK>;
+        clock-names = "aux", "cfg_ahb", "ref", "refgen", "pipe";
+
+        resets = <&gcc GCC_PCIE_1_PHY_BCR>;
+        reset-names = "phy";
+
+        vdda-phy-supply = <&vreg_l10c_0p88>;
+        vdda-pll-supply = <&vreg_l6b_1p2>;
+
+        #clock-cells = <0>;
+        clock-output-names = "pcie_1_pipe_clk";
+
+        #phy-cells = <0>;
+    };
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
