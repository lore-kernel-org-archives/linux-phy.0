Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EA12C77B60
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 02:25:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5A0ULW6qpxvDuVUYwIYus5+CmkxyYxldT9B/Wk9te5U=; b=dLj1xAM5Hhc4s9
	TL8/ae9JeSh7BGvJ6XxvSYI35zi97DACeHsfch+WfyNEpaIzLU0xi+CC/OwJ+OiQ/DWqGRWvR1+ei
	nS+R3vGNi4XL/XyvVx+BEzpnhc8XgQ6vAXtWa2t4PM+yW8xrubFYgReqvaahcs3TXcd3oE/crvX1V
	kKNGb1me/2GAOcYiJvLlQHxJm45fVCmjhi0Fu7nV/FZehk1bsnXBx9N37MtSaNe4zGvFPSY8A/RrH
	wYG0Omn7col6CuHNMaw/h9jadtR3np9CeqoDD2mZ0Uwr7YwaybxEaRWNn0Vh58NhpmUfq6SmcoUBo
	2gsndQ/aG5nWKe5KGFhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7L-003O8Y-1s;
	Fri, 24 Mar 2023 02:25:23 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7I-003O6V-0O
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 02:25:22 +0000
Received: by mail-lf1-x12a.google.com with SMTP id j11so370151lfg.13
        for <linux-phy@lists.infradead.org>; Thu, 23 Mar 2023 19:25:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679624717;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Cnrr5zqCv5eNRyEtsp8XvgTJ6tJmLPZH0nSjHdTUy1Y=;
        b=mKkmOmLtP/iVDNz/DbOzOhthSDyej+LqmmyEu7kEQs66gmloGhjSYT0JK7aK1LuF4O
         gxm67X2wkm1jRMr/S/SzNU4UmJ4viqVQW+MG0mFy1HQyPDkzvB9Zjz65Eq429YDe2TPs
         5YjrfcpKGdZJPUABoq/GtnQWv8Eizfam5fw+2HoyNNGNzpzy0ghwQ2cuQHSxBGGqGQ+Q
         R7v4UcjoCHCaTS/B7t5dB5EWWioOl7HDLtLUSfJMRUU4FypCk61vqbmfn/CVHJ+OeifD
         VNl8KO2n5isTPDFlHNJr7p93KWUidtAtRxZpFyhkGrK0zzGC3hKrB+HSz0dBYckpsrDN
         d3hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679624717;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Cnrr5zqCv5eNRyEtsp8XvgTJ6tJmLPZH0nSjHdTUy1Y=;
        b=V586Cq0wTc6dR3KLpy39gaYFDLOknH+G9XGbXpC/wPGc7ZjySrHMBCAqqhmz7sSpGP
         zEzR1l+bgFZalQdIjQK/Otv35AVjONCE1Jjr3NiYZwzbf/o4Ihu1vaiG/cYFIOGjFy+r
         g+IrhWwAJ3NH5yvJOCp4+dbSJXIui/lCx465dVZ9PoebjTB53P1f2mtv6i/55cZlS+Wq
         RnH7IyyLwMO7ny+6R13vTOKlZS6688cOcFu25mbHzhgq2v0G2N9Tf7RG7rUX8E6dfsJD
         WlP6l6Anhj1//VOfEMExXanLRlqRj1VE+jF1GeRlGftOcKgdLBIlkS15NDIiKpTR9DDC
         ieUQ==
X-Gm-Message-State: AAQBX9ccssBsB4a/lyOtnN0byxip1bJwqYLsP3mgj2QtBZ0Y8cHER9h1
	cxa1FkrrlYdakNYul1LUenRtjQ==
X-Google-Smtp-Source: AKy350a3vCIQUCLZGlM8jQ+MTzUrPRsGUrT4bawtjGU3iiMFqbR0vl44txWVcMSKmLuA2KuUhriidA==
X-Received: by 2002:ac2:510c:0:b0:4e7:4a3c:695 with SMTP id q12-20020ac2510c000000b004e74a3c0695mr174279lfb.65.1679624717599;
        Thu, 23 Mar 2023 19:25:17 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id x4-20020a19f604000000b004db3aa3c542sm3162628lfe.47.2023.03.23.19.25.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 19:25:16 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 02/41] dt-bindings: phy: migrate combo QMP PHY bindings to qcom,sc8280xp-qmp-usb43dp-phy.yaml
Date: Fri, 24 Mar 2023 05:24:35 +0300
Message-Id: <20230324022514.1800382-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
References: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_192520_159318_93246EA0 
X-CRM114-Status: GOOD (  12.79  )
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

Migrate legacy bindings (described in qcom,sc7180-qmp-usb3-dp-phy.yaml)
to qcom,sc8280xp-qmp-usb43dp-phy.yaml. This removes a need to declare
the child PHY node or split resource regions.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../phy/qcom,sc7180-qmp-usb3-dp-phy.yaml      | 276 ------------------
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    | 124 +++++++-
 2 files changed, 111 insertions(+), 289 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml
deleted file mode 100644
index 0ef2c9b9d466..000000000000
--- a/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml
+++ /dev/null
@@ -1,276 +0,0 @@
-# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
-
-%YAML 1.2
----
-$id: http://devicetree.org/schemas/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml#
-$schema: http://devicetree.org/meta-schemas/core.yaml#
-
-title: Qualcomm QMP USB3 DP PHY controller (SC7180)
-
-description:
-  The QMP PHY controller supports physical layer functionality for a number of
-  controllers on Qualcomm chipsets, such as, PCIe, UFS and USB.
-
-  Note that these bindings are for SoCs up to SC8180X. For newer SoCs, see
-  qcom,sc8280xp-qmp-usb43dp-phy.yaml.
-
-maintainers:
-  - Wesley Cheng <quic_wcheng@quicinc.com>
-
-properties:
-  compatible:
-    oneOf:
-      - enum:
-          - qcom,sc7180-qmp-usb3-dp-phy
-          - qcom,sc8180x-qmp-usb3-dp-phy
-          - qcom,sdm845-qmp-usb3-dp-phy
-          - qcom,sm8250-qmp-usb3-dp-phy
-      - items:
-          - enum:
-              - qcom,sc7280-qmp-usb3-dp-phy
-          - const: qcom,sm8250-qmp-usb3-dp-phy
-
-  reg:
-    items:
-      - description: Address and length of PHY's USB serdes block.
-      - description: Address and length of the DP_COM control block.
-      - description: Address and length of PHY's DP serdes block.
-
-  reg-names:
-    items:
-      - const: usb
-      - const: dp_com
-      - const: dp
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
-    items:
-      - description: reset of phy block.
-      - description: phy common block reset.
-
-  reset-names:
-    items:
-      - const: phy
-      - const: common
-
-  vdda-phy-supply:
-    description:
-      Phandle to a regulator supply to PHY core block.
-
-  vdda-pll-supply:
-    description:
-      Phandle to 1.8V regulator supply to PHY refclk pll block.
-
-  vddp-ref-clk-supply:
-    description:
-      Phandle to a regulator supply to any specific refclk pll block.
-
-# Required nodes:
-patternProperties:
-  "^usb3-phy@[0-9a-f]+$":
-    type: object
-    additionalProperties: false
-    description:
-      The USB3 PHY.
-
-    properties:
-      reg:
-        items:
-          - description: Address and length of TX.
-          - description: Address and length of RX.
-          - description: Address and length of PCS.
-          - description: Address and length of TX2.
-          - description: Address and length of RX2.
-          - description: Address and length of pcs_misc.
-
-      clocks:
-        items:
-          - description: pipe clock
-
-      clock-names:
-        deprecated: true
-        items:
-          - const: pipe0
-
-      clock-output-names:
-        items:
-          - const: usb3_phy_pipe_clk_src
-
-      '#clock-cells':
-        const: 0
-
-      '#phy-cells':
-        const: 0
-
-    required:
-      - reg
-      - clocks
-      - '#clock-cells'
-      - '#phy-cells'
-
-  "^dp-phy@[0-9a-f]+$":
-    type: object
-    additionalProperties: false
-    description:
-      The DP PHY.
-
-    properties:
-      reg:
-        items:
-          - description: Address and length of TX.
-          - description: Address and length of RX.
-          - description: Address and length of PCS.
-          - description: Address and length of TX2.
-          - description: Address and length of RX2.
-
-      '#clock-cells':
-        const: 1
-
-      '#phy-cells':
-        const: 0
-
-    required:
-      - reg
-      - '#clock-cells'
-      - '#phy-cells'
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
-allOf:
-  - if:
-      properties:
-        compatible:
-          enum:
-            - qcom,sc7180-qmp-usb3-dp-phy
-            - qcom,sdm845-qmp-usb3-dp-phy
-    then:
-      properties:
-        clocks:
-          items:
-            - description: Phy aux clock
-            - description: Phy config clock
-            - description: 19.2 MHz ref clk
-            - description: Phy common block aux clock
-        clock-names:
-          items:
-            - const: aux
-            - const: cfg_ahb
-            - const: ref
-            - const: com_aux
-
-  - if:
-      properties:
-        compatible:
-          enum:
-            - qcom,sc8180x-qmp-usb3-dp-phy
-    then:
-      properties:
-        clocks:
-          items:
-            - description: Phy aux clock
-            - description: 19.2 MHz ref clk
-            - description: Phy common block aux clock
-        clock-names:
-          items:
-            - const: aux
-            - const: ref
-            - const: com_aux
-
-  - if:
-      properties:
-        compatible:
-          enum:
-            - qcom,sm8250-qmp-usb3-dp-phy
-    then:
-      properties:
-        clocks:
-          items:
-            - description: Phy aux clock
-            - description: Board XO source
-            - description: Phy common block aux clock
-        clock-names:
-          items:
-            - const: aux
-            - const: ref_clk_src
-            - const: com_aux
-
-additionalProperties: false
-
-examples:
-  - |
-    #include <dt-bindings/clock/qcom,gcc-sdm845.h>
-    usb_1_qmpphy: phy-wrapper@88e9000 {
-        compatible = "qcom,sdm845-qmp-usb3-dp-phy";
-        reg = <0x088e9000 0x18c>,
-              <0x088e8000 0x10>,
-              <0x088ea000 0x40>;
-        reg-names = "usb", "dp_com", "dp";
-        #address-cells = <1>;
-        #size-cells = <1>;
-        ranges = <0x0 0x088e9000 0x2000>;
-
-        clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
-                 <&gcc GCC_USB_PHY_CFG_AHB2PHY_CLK>,
-                 <&gcc GCC_USB3_PRIM_CLKREF_CLK>,
-                 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>;
-        clock-names = "aux", "cfg_ahb", "ref", "com_aux";
-
-        resets = <&gcc GCC_USB3_PHY_PRIM_BCR>,
-                 <&gcc GCC_USB3_DP_PHY_PRIM_BCR>;
-        reset-names = "phy", "common";
-
-        vdda-phy-supply = <&vdda_usb2_ss_1p2>;
-        vdda-pll-supply = <&vdda_usb2_ss_core>;
-
-        usb3-phy@200 {
-            reg = <0x200 0x128>,
-                  <0x400 0x200>,
-                  <0xc00 0x218>,
-                  <0x600 0x128>,
-                  <0x800 0x200>,
-                  <0xa00 0x100>;
-            #clock-cells = <0>;
-            #phy-cells = <0>;
-            clocks = <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
-            clock-output-names = "usb3_phy_pipe_clk_src";
-        };
-
-        dp-phy@88ea200 {
-            reg = <0xa200 0x200>,
-                  <0xa400 0x200>,
-                  <0xaa00 0x200>,
-                  <0xa600 0x200>,
-                  <0xa800 0x200>;
-            #clock-cells = <1>;
-            #phy-cells = <0>;
-        };
-    };
diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 3cd5fc3e8fab..484f321aefce 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -15,25 +15,32 @@ description:
 
 properties:
   compatible:
-    enum:
-      - qcom,sc8280xp-qmp-usb43dp-phy
-      - qcom,sm6350-qmp-usb3-dp-phy
-      - qcom,sm8350-qmp-usb3-dp-phy
-      - qcom,sm8450-qmp-usb3-dp-phy
-      - qcom,sm8550-qmp-usb3-dp-phy
+    oneOf:
+      - enum:
+          - qcom,sc7180-qmp-usb3-dp-phy
+          - qcom,sc8180x-qmp-usb3-dp-phy
+          - qcom,sc8280xp-qmp-usb43dp-phy
+          - qcom,sdm845-qmp-usb3-dp-phy
+          - qcom,sm6350-qmp-usb3-dp-phy
+          - qcom,sm8250-qmp-usb3-dp-phy
+          - qcom,sm8350-qmp-usb3-dp-phy
+          - qcom,sm8450-qmp-usb3-dp-phy
+          - qcom,sm8550-qmp-usb3-dp-phy
+      - items:
+          - enum:
+              - qcom,sc7280-qmp-usb3-dp-phy
+          - const: qcom,sm8250-qmp-usb3-dp-phy
 
   reg:
     maxItems: 1
 
   clocks:
-    maxItems: 4
+    minItems: 3
+    maxItems: 5
 
   clock-names:
-    items:
-      - const: aux
-      - const: ref
-      - const: com_aux
-      - const: usb3_pipe
+    minItems: 3
+    maxItems: 5
 
   power-domains:
     maxItems: 1
@@ -50,6 +57,8 @@ properties:
 
   vdda-pll-supply: true
 
+  vddp-ref-clk-supply: true
+
   "#clock-cells":
     const: 1
     description:
@@ -65,7 +74,6 @@ required:
   - reg
   - clocks
   - clock-names
-  - power-domains
   - resets
   - reset-names
   - vdda-phy-supply
@@ -73,6 +81,71 @@ required:
   - "#clock-cells"
   - "#phy-cells"
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,sc7180-qmp-usb3-dp-phy
+            - qcom,sdm845-qmp-usb3-dp-phy
+    then:
+      properties:
+        clocks:
+          items:
+            - description: Phy aux clock
+            - description: Phy config clock
+            - description: 19.2 MHz ref clk
+            - description: Phy common block aux clock
+            - description: USB3 PIPE clock
+        clock-names:
+          items:
+            - const: aux
+            - const: cfg_ahb
+            - const: ref
+            - const: com_aux
+            - const: usb3_pipe
+
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,sc8180x-qmp-usb3-dp-phy
+            - qcom,sc8280xp-qmp-usb3-dp-phy
+    then:
+      properties:
+        clocks:
+          items:
+            - description: Phy aux clock
+            - description: 19.2 MHz ref clk
+            - description: Phy common block aux clock
+            - description: USB3 PIPE clock
+        clock-names:
+          items:
+            - const: aux
+            - const: ref
+            - const: com_aux
+            - const: usb3_pipe
+
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,sm8250-qmp-usb3-dp-phy
+    then:
+      properties:
+        clocks:
+          items:
+            - description: Phy aux clock
+            - description: Board XO source
+            - description: Phy common block aux clock
+            - description: USB3 PIPE clock
+        clock-names:
+          items:
+            - const: aux
+            - const: ref_clk_src
+            - const: com_aux
+            - const: usb3_pipe
+
 additionalProperties: false
 
 examples:
@@ -101,3 +174,28 @@ examples:
       #clock-cells = <1>;
       #phy-cells = <1>;
     };
+  - |
+    #define GCC_USB3_PRIM_CLKREF_CLK     151
+    #define GCC_USB_PHY_CFG_AHB2PHY_CLK  161
+
+    phy@88e8000 {
+        compatible = "qcom,sdm845-qmp-usb3-dp-phy";
+        reg = <0x088e8000 0x3000>;
+
+        clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
+                 <&gcc GCC_USB_PHY_CFG_AHB2PHY_CLK>,
+                 <&gcc GCC_USB3_PRIM_CLKREF_CLK>,
+                 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
+                 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
+        clock-names = "aux", "cfg_ahb", "ref", "com_aux", "usb3_pipe";
+
+        resets = <&gcc GCC_USB3_PHY_PRIM_BCR>,
+                 <&gcc GCC_USB3_DP_PHY_PRIM_BCR>;
+        reset-names = "phy", "common";
+
+        vdda-phy-supply = <&vdda_usb2_ss_1p2>;
+        vdda-pll-supply = <&vdda_usb2_ss_core>;
+
+        #clock-cells = <1>;
+        #phy-cells = <1>;
+    };
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
