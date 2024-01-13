Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F5F6C4707B
	for <linux-phy@archiver.kernel.org>; Sat, 13 Jan 2024 05:42:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UevASXxWoAvEWd54oDhyhFbHrwfIeTntD8pfdFqP7v4=; b=4hROc4Ee7nOC7a
	QcNJAnXIPMakLq/VezrKY/VTSdnr6HiRSgIPgUbWJ9ovAcmQhWtyv37bg/+SXd4c5i+SWyx18UdsS
	jSikmHoqW8WaUjc5qMq7f/T5HtqbVK0vTarCmWkxMXzXtsKV4Uai3lAmUNoGnorbBDKEQ78qeehKO
	xZB9A48TqBB9JfQoWFZx5JZVAr9eXR/rx1FCss1lbndOT2mMjBotjYmwlhsOc5vw484rcVrgWD1cV
	q1LkPwaXfw5C0uLvRQcoHOXY7e02NveYivcHldSXqm3rV09HBTglwVxTvF8HWmS8r1o914fUIZuvI
	ncyPtfy6jGF2bSPk9z1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOWnC-004Zec-27;
	Sat, 13 Jan 2024 05:42:50 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOWn9-004Zcr-2U
	for linux-phy@lists.infradead.org;
	Sat, 13 Jan 2024 05:42:49 +0000
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2cd1a1c5addso82534771fa.1
        for <linux-phy@lists.infradead.org>; Fri, 12 Jan 2024 21:42:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705124565; x=1705729365; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WJc3qa2P7/gJ3egsD0VQ5u3r1xsQIdR/8Y8k0L14qog=;
        b=ihDJFvZDzVPIHz348tca9gYPYg474zfA15HF/iby9EGtaZDmyo3zqPEL1rKyz2Iq/w
         4KH9xkET3Qz12QVgOAfAmC9z2B1TvkIdcluiAyIKtsjaT1Cznqd6LZ/XmALphk7Cejz6
         41CWnOp5K4wl3ZVmiOnOlyRkH/GlTec4DHjvIxvIi7NxmrgHdpzY2QYv/SuJ5umtnyBJ
         CBj+CPaHjDwJxWgM0YP4yulkK/fwzZHoAx6RB4scA2+IflMb7cmrtdVMP/lLr9E4/Tsz
         4+QTeNNb5Uwt9kh5qGZYTBq/Lyw3gvKnOoFNM7WdP+6VMSxXxo8rZRIxIMmgeiaV7Ucd
         WFxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705124565; x=1705729365;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WJc3qa2P7/gJ3egsD0VQ5u3r1xsQIdR/8Y8k0L14qog=;
        b=oJqtWMziwYKxlsJQOEwFq9uKjhb6+QgYzQ9JFQn5pmSuH3BkSHW4wtlubtR13LTyj1
         eDqhEevF00bZoxl/vT32Ac6NcUckaHkDpujvtKgXJr5vXoP8+rpzTAQ9UjBUuwtFKJ0N
         X9rp6hhPHttcBvLIekxb8jbx4FMWVqDmksc2QBAnaJ+AxYRnEwRjgBDPiZG31e9GEN9k
         Ay6FJl92rjM/QtDGECxIxwRl2poXIz+9ImSQOrsSOCVPlDeegsR6O9RGyNo5K2kBRxiL
         GoBwoQQHJh7L+1cf+y9/tUahGHwD6Rx+b9l5mwsi2s9vc5q/M1yb7nX23sonoFLwLz/u
         Z43A==
X-Gm-Message-State: AOJu0Yyp7ag6CMNjS07WcG+s0sWo7gwpTwPF94aBTANWtTcBk1JoSY57
	RvvM/rD+Bn9G/dYsXr6wvxMJ/V7GKNntgg==
X-Google-Smtp-Source: AGHT+IHg/IVhYhNdlEVr2B2pJjuB1QvW5WTX5cjhcVwcHe4hP0XyYlBi0PveewvFrAbVPSlnP2/AUQ==
X-Received: by 2002:a2e:3013:0:b0:2cd:5cb3:d7b9 with SMTP id w19-20020a2e3013000000b002cd5cb3d7b9mr1086542ljw.3.1705124565077;
        Fri, 12 Jan 2024 21:42:45 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id r22-20020a2eb616000000b002cc71e9168csm677719ljn.129.2024.01.12.21.42.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jan 2024 21:42:44 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 13 Jan 2024 07:42:40 +0200
Subject: [PATCH 03/13] dt-bindings: phy: qcom,msm8998-qmp-usb3-phy: split
 from sc8280xp PHY schema
MIME-Version: 1.0
Message-Id: <20240113-pmi632-typec-v1-3-de7dfd459353@linaro.org>
References: <20240113-pmi632-typec-v1-0-de7dfd459353@linaro.org>
In-Reply-To: <20240113-pmi632-typec-v1-0-de7dfd459353@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Guenter Roeck <linux@roeck-us.net>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=5562;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=CnztgRTnoisu3CgikOKmKjlZnjUtPFGoAOLDjHVdlrc=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBloiLQ351KMHbwQZRp5C//yQxdgLNwgvbQVVlMI
 yy+6HmOKVuJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZaIi0AAKCRCLPIo+Aiko
 1V7LB/4/bg+nB/j/wfc2b7DsP2M+qVHxc7ATURiiqGa22PFIdgsubBMA1njYX4ymoGt1tb6HhTJ
 Mi6k8urvu+K3Yu0uLsJT0uina4KoWFoRReJO328moYf/3lVjQ+uZYch4fUiqxwneY5JS8+eKY5J
 iR5URL/XvhHwPwstNFgGtbVMOI9AZdHwjOEkZ/85351GUm2FnHOTXnpp7x+QZKpMue5mJ789VaK
 Acam09R9YVtvMJzdrKGqKfsfPRgrhk5SvQsTO+kT1+kdqVfC24rjNTBWi8j81YiDHTKycYlf0i7
 Qw61G4/noJMQJFprf+XgmaOQVGGBwFw6zJd9cBe1MvR6P9aQ
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240112_214247_870439_8BAB3043 
X-CRM114-Status: GOOD (  12.23  )
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

In preparation to defining the USB-C handling on MSM8998, QCM2290 and
SM6115 split existing QMP USB3 PHY schema into pure USB3 and USB-C
schema definitions.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml    | 132 +++++++++++++++++++++
 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml        |  22 ----
 2 files changed, 132 insertions(+), 22 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml
new file mode 100644
index 000000000000..868fabd44d72
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml
@@ -0,0 +1,132 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,msm8998-qmp-usb3-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm QMP PHY controller (USB, MSM8998)
+
+maintainers:
+  - Vinod Koul <vkoul@kernel.org>
+
+description:
+  The QMP PHY controller supports physical layer functionality for USB-C on
+  several Qualcomm chipsets.
+
+properties:
+  compatible:
+    enum:
+      - qcom,msm8998-qmp-usb3-phy
+      - qcom,qcm2290-qmp-usb3-phy
+      - qcom,sm6115-qmp-usb3-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 4
+
+  clock-names:
+    maxItems: 4
+
+  resets:
+    maxItems: 2
+
+  reset-names:
+    items:
+      - const: phy
+      - const: phy_phy
+
+  vdda-phy-supply: true
+
+  vdda-pll-supply: true
+
+  "#clock-cells":
+    const: 0
+
+  clock-output-names:
+    maxItems: 1
+
+  "#phy-cells":
+    const: 0
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
+  - clock-output-names
+  - "#phy-cells"
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,msm8998-qmp-usb3-phy
+    then:
+      properties:
+        clocks:
+          maxItems: 4
+        clock-names:
+          items:
+            - const: aux
+            - const: ref
+            - const: cfg_ahb
+            - const: pipe
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
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,gcc-msm8998.h>
+    #include <dt-bindings/clock/qcom,rpmh.h>
+
+    phy@c010000 {
+      compatible = "qcom,msm8998-qmp-usb3-phy";
+      reg = <0x0c010000 0x1000>;
+
+      clocks = <&gcc GCC_USB3_PHY_AUX_CLK>,
+               <&gcc GCC_USB3_CLKREF_CLK>,
+               <&gcc GCC_USB_PHY_CFG_AHB2PHY_CLK>,
+               <&gcc GCC_USB3_PHY_PIPE_CLK>;
+      clock-names = "aux",
+                    "ref",
+                    "cfg_ahb",
+                    "pipe";
+      clock-output-names = "usb3_phy_pipe_clk_src";
+      #clock-cells = <0>;
+      #phy-cells = <0>;
+
+      resets = <&gcc GCC_USB3_PHY_BCR>,
+               <&gcc GCC_USB3PHY_PHY_BCR>;
+      reset-names = "phy",
+                    "phy_phy";
+
+      vdda-phy-supply = <&vreg_l1a_0p875>;
+      vdda-pll-supply = <&vreg_l2a_1p2>;
+    };
diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
index 15d82c67f157..1e2d4ddc5391 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
@@ -20,15 +20,12 @@ properties:
       - qcom,ipq8074-qmp-usb3-phy
       - qcom,ipq9574-qmp-usb3-phy
       - qcom,msm8996-qmp-usb3-phy
-      - qcom,msm8998-qmp-usb3-phy
-      - qcom,qcm2290-qmp-usb3-phy
       - qcom,sa8775p-qmp-usb3-uni-phy
       - qcom,sc8280xp-qmp-usb3-uni-phy
       - qcom,sdm845-qmp-usb3-uni-phy
       - qcom,sdx55-qmp-usb3-uni-phy
       - qcom,sdx65-qmp-usb3-uni-phy
       - qcom,sdx75-qmp-usb3-uni-phy
-      - qcom,sm6115-qmp-usb3-phy
       - qcom,sm8150-qmp-usb3-uni-phy
       - qcom,sm8250-qmp-usb3-uni-phy
       - qcom,sm8350-qmp-usb3-uni-phy
@@ -93,7 +90,6 @@ allOf:
               - qcom,ipq8074-qmp-usb3-phy
               - qcom,ipq9574-qmp-usb3-phy
               - qcom,msm8996-qmp-usb3-phy
-              - qcom,msm8998-qmp-usb3-phy
               - qcom,sdx55-qmp-usb3-uni-phy
               - qcom,sdx65-qmp-usb3-uni-phy
               - qcom,sdx75-qmp-usb3-uni-phy
@@ -108,24 +104,6 @@ allOf:
             - const: cfg_ahb
             - const: pipe
 
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
-          maxItems: 4
-        clock-names:
-          items:
-            - const: cfg_ahb
-            - const: ref
-            - const: com_aux
-            - const: pipe
-
   - if:
       properties:
         compatible:

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
