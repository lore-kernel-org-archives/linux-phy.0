Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD781C761AF
	for <linux-phy@archiver.kernel.org>; Sun, 26 Mar 2023 02:01:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rucMerKasmfwAwWjqpMOOWciJf/3Za3kBDuEYHsQD2Q=; b=BTFhGkdXrrPNj/
	xN0U3NIcVQjVh9WkcDyxhrNeZree99yB5rs1IbMkBl3NEXR8HJFo93bzHxhg7t0y+tDkH47OTXX/9
	Fq1AkUT4e+YsL4brXzW7DVsf8uC0bBh8oQ92a+0cRmC450brLsTo4L2mKVAT8g0K4GS7pFEB2qR6o
	GEt0anQ/c5z5Dl5el9pC3DBF68aKIjmcS0Ph8OcvDHmRmNT7pgKaNUYOQhAlChaDd4RQTuhB1ozOb
	F7B8xxDPvhEdxZECnQpOL9rFJOCIN11XhoJzMlXr4NUmbnDZnBg5doFgWSsP0U5MkkWHHwP2SLPVz
	w4I+AoV3yHeXMntrtt2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgFhj-007pY9-0Q;
	Sun, 26 Mar 2023 02:01:55 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgEhX-007jpU-0R
	for linux-phy@lists.infradead.org;
	Sun, 26 Mar 2023 00:57:41 +0000
Received: by mail-lf1-x12b.google.com with SMTP id y20so6960378lfj.2
        for <linux-phy@lists.infradead.org>; Sat, 25 Mar 2023 17:57:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679792255;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GBv1pWYR15qOvcAYz4zjAq269yr5hF0uWbugrVtKVm4=;
        b=W8dx0WC1Q/36S20wdXE+4B6TTxsmkeoPegGYirlmc6ePSehHhGHnnKbzNOMGbXP9i2
         +cqCRSkoYkuSMSyzwB60t8cb0DaA1nOK+VFk0oAVGepOn7CBDkLSCJsqwlUG3K0gAl//
         P9XlHjygOPf63/B29U63IuvRBW1tuZeYJwpjMjGbynLK3fZ2qCoVn13qqF1i83TKcLhN
         D780oc9QaRM68QVe5gzrZEm0dZM7avcuXVE90Y6W9WmaCmJkvKPd8Y/B24iVZ/dzPol5
         m3kM26idxlpR4SIIiyN+WySHzUetDwHrJXi0n9FvdZDXFBaSwpfttwLqaUv9W6Co0R/m
         qPEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679792255;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GBv1pWYR15qOvcAYz4zjAq269yr5hF0uWbugrVtKVm4=;
        b=43FYQjBGgxT/ke/fmMGPwWnw5WHfRMMedizpxpFl4JG65nxp+mNNUpwGSKKMs7QQGe
         BZVnxX3fGQOeyi8PKG0YUP8kPoUMt5i2CbuhTCxBkf8yHFBJUMQKAPOcfkWzxO3iTM1V
         qFXvQVQZu78NMA4vFe04LCAQPqHL7pVWEriEweWHIA9c/fp0MdNPfru3hyrgZPfn0pno
         1shlXWk/t71x5tms3LOuW1yDlZQ4SkOx4yJ5OeTN/yF/Kln33HYUM4DvjjI6tHEjlgcP
         bQxWXqwPnF2A0U09txE7WzD5K8qW8Ryn4fKbhzTA7bKtf+UO59D0qj2TDxONOnH6vBqZ
         MbJQ==
X-Gm-Message-State: AAQBX9c2tJD7angtw7BkKBuD6dEUAta67dBI6lclZ7OkmoNYTFXt6v3a
	L9PyvpTids3g6sA3hnqRW2NjuA==
X-Google-Smtp-Source: AKy350YIEUYfsbuGCudfcH+H2jClJUfhXY9E08yBAaiu7I2GiCFALFkWuzbz4dSuD5xuSxAISz9DHg==
X-Received: by 2002:ac2:5239:0:b0:4dd:afad:8afe with SMTP id i25-20020ac25239000000b004ddafad8afemr1973845lfl.27.1679792254798;
        Sat, 25 Mar 2023 17:57:34 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id n13-20020ac242cd000000b004e7fa99f3f4sm3996858lfl.265.2023.03.25.17.57.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Mar 2023 17:57:34 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v2 1/9] dt-bindings: phy: migrate combo QMP PHY bindings to qcom,sc8280xp-qmp-usb43dp-phy.yaml
Date: Sun, 26 Mar 2023 03:57:25 +0300
Message-Id: <20230326005733.2166354-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230326005733.2166354-1-dmitry.baryshkov@linaro.org>
References: <20230326005733.2166354-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230325_175739_178301_107ACFA9 
X-CRM114-Status: GOOD (  12.00  )
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
 .../phy/qcom,sc7180-qmp-usb3-dp-phy.yaml      | 278 ------------------
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    |  45 ++-
 2 files changed, 43 insertions(+), 280 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml
deleted file mode 100644
index a2ddf718ba76..000000000000
--- a/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml
+++ /dev/null
@@ -1,278 +0,0 @@
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
-          - qcom,sm8150-qmp-usb3-dp-phy
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
-            - qcom,sm8150-qmp-usb3-dp-phy
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
index 3cd5fc3e8fab..93444e96b512 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -16,8 +16,14 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,sc7180-qmp-usb3-dp-phy
+      - qcom,sc7280-qmp-usb3-dp-phy
+      - qcom,sc8180x-qmp-usb3-dp-phy
       - qcom,sc8280xp-qmp-usb43dp-phy
+      - qcom,sdm845-qmp-usb3-dp-phy
       - qcom,sm6350-qmp-usb3-dp-phy
+      - qcom,sm8150-qmp-usb3-dp-phy
+      - qcom,sm8250-qmp-usb3-dp-phy
       - qcom,sm8350-qmp-usb3-dp-phy
       - qcom,sm8450-qmp-usb3-dp-phy
       - qcom,sm8550-qmp-usb3-dp-phy
@@ -26,14 +32,17 @@ properties:
     maxItems: 1
 
   clocks:
-    maxItems: 4
+    minItems: 4
+    maxItems: 5
 
   clock-names:
+    minItems: 4
     items:
       - const: aux
       - const: ref
       - const: com_aux
       - const: usb3_pipe
+      - const: cfg_ahb
 
   power-domains:
     maxItems: 1
@@ -65,7 +74,6 @@ required:
   - reg
   - clocks
   - clock-names
-  - power-domains
   - resets
   - reset-names
   - vdda-phy-supply
@@ -73,6 +81,39 @@ required:
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
+          maxItems: 5
+        clock-names:
+          maxItems: 5
+    else:
+      properties:
+        clocks:
+          maxItems: 4
+        clock-names:
+          maxItems: 4
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,sc8280xp-qmp-usb43dp-phy
+            - qcom,sm6350-qmp-usb3-dp-phy
+            - qcom,sm8550-qmp-usb3-dp-phy
+    then:
+      required:
+        - power-domains
+    else:
+      properties:
+        power-domains: false
+
 additionalProperties: false
 
 examples:
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
