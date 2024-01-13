Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6FA2C4707B
	for <linux-phy@archiver.kernel.org>; Sat, 13 Jan 2024 20:56:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UevASXxWoAvEWd54oDhyhFbHrwfIeTntD8pfdFqP7v4=; b=2mCl/dSesMb5L1
	6a2NuRRjAeC1WAfB5vl5TmcDRVBQega3zhUzHd2+OcQZQNFxv3TzKduRED5oJo5cToFX8c2X6cLOi
	BaaWbK3372WIrJjjqqYRo2QIVk3MCo0Zwkedd/36F+3buToIYJPx0iWonsRKDGc+xvg/8p/eg5E4L
	O9gf+I6NWvXl0WLvFWT5yZmv2J2Mp/CwHjWhb/lEJABaSi2D1b9YNJqHZGp7srMRSsnWr5qNt8khp
	R1fwb++HaVoMWsXiwJdy6i5iAgUXzEG5RlTRdzdPB0jVeJlMBemYpk/cWdCLXyC8o/1MxGAlw8lty
	9ZtFmN8uChT3O9kkMGiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOl2y-005gjW-1i;
	Sat, 13 Jan 2024 20:56:04 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOl2t-005gfi-1x
	for linux-phy@lists.infradead.org;
	Sat, 13 Jan 2024 20:56:01 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2cca8eb0509so93600321fa.3
        for <linux-phy@lists.infradead.org>; Sat, 13 Jan 2024 12:55:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705179356; x=1705784156; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WJc3qa2P7/gJ3egsD0VQ5u3r1xsQIdR/8Y8k0L14qog=;
        b=wN0yT0MKq5F+0vFdbsHwzU+Wi4GgAYd1fZQJALqh+JGZmabbdnPXwDCDS9+PG31g5k
         +ukcugCvjYY10iOG+BrUM6y8k0O7BkCmvBC2OVVvKYq44BJaB3dOXw5ooDN5QsCASKJF
         3DTWo4aU7O2FX2DjkUpbtnCY3AzQT81LezNMUtNkamOyOMMAmwJsezJPkYiSRPmVJ7XY
         KnDpEOOt4YJ9G1SnXG/smGk7laZmvPJEukxEIu9eLlkOVX/JOO7Tabq06e3df8tbijJm
         N7uXtigocgNyZzYug2Dv72M697qF/vMTS45jpy9YHznIShs9FP4/cZDt4YqQpird4w7P
         bQiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705179356; x=1705784156;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WJc3qa2P7/gJ3egsD0VQ5u3r1xsQIdR/8Y8k0L14qog=;
        b=r00G+LlMRBB0I+fSUnnYHTH6ncpPm+ezJlO3cSM6180KlR606iBFVsYOqZVnFMe90k
         1ZQ2/VORJxd87+KwmXLu4o0yN6wV4VJTJywVHfhHrbcHnUhhBb//DgNe1jnBnhVPFGl5
         PGMdHhXRk8KO2uO5zFsh84lvbqRUAROJOaaDfqvoRlL57CJ0QKHC/+64v/W9azuMFfWo
         Jh+B0E8yty7bGsGtDwvI1N9N/geC/YdmIBoSQmFZ+W8w5P+k5IOpFwHHCndRBcPp/LC8
         sQXTIEBuczvEYQfbzdBKL/Zg7/an2/H8fO2Bf/cv2Jdc5zlJBAnkCc/G8EuNJ4lidyd4
         x5ww==
X-Gm-Message-State: AOJu0YxHW5eyS5UuvqYFPGdBh6R8SjI+pt5SSjE0Prm+7SsdqDnujLgc
	ZPgUZc4eGwhjkK5dXAN727j5/j2OD7al5w==
X-Google-Smtp-Source: AGHT+IFGOz38rv/jFZy78aEi8m4E1SFPUPvXCxXm9dHWNW/1yST8bvaF7Cql0c5VqqH8tKpjiXSEyQ==
X-Received: by 2002:a19:915d:0:b0:50e:74f3:9c5a with SMTP id y29-20020a19915d000000b0050e74f39c5amr1307891lfj.38.1705179356079;
        Sat, 13 Jan 2024 12:55:56 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id p14-20020a056512328e00b0050e9355d7eesm919802lfe.103.2024.01.13.12.55.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Jan 2024 12:55:55 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 13 Jan 2024 22:55:46 +0200
Subject: [PATCH v2 03/15] dt-bindings: phy: qcom,msm8998-qmp-usb3-phy:
 split from sc8280xp PHY schema
MIME-Version: 1.0
Message-Id: <20240113-pmi632-typec-v2-3-182d9aa0a5b3@linaro.org>
References: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
In-Reply-To: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
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
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=5562;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=CnztgRTnoisu3CgikOKmKjlZnjUtPFGoAOLDjHVdlrc=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlovjWgSDszgG526QkzvdPnaAay8pbdMhtePPnI
 JsmmL70clGJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZaL41gAKCRCLPIo+Aiko
 1d3OB/9zvU6LOrEM7HZqtFBq2HMJAhMv70IISGUt0BPYKRQwc8/4qjysO+eQDKHFBZ43WIGgiLO
 o1q01crazGs28C45IMOjCqoHSh/3iGKMYcgCwXbxcQnXLIXaaoj41jxw+ZIsxDUm23GbDxbE+W6
 TBR2JqH48e6HAVk51iPYD00mn4dbPTg0SJKlTagYuekPxGKUoXw904YJ6zahRqbkfy9E6RpgDo+
 buiySKkig+2fEourHLVpTqYZTzP15dR3v2dL7GtwhuOXE9Wt8bb8aGYQN1M6sZB/UZOEFssYNbJ
 +Gn84Xh0hh72lCXxVi0VneTTpbJOdQKV44gp4H92dy4Hrgjk
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240113_125559_665455_7864D748 
X-CRM114-Status: GOOD (  12.17  )
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
