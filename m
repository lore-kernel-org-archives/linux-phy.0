Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A29F8C7EE2E
	for <linux-phy@archiver.kernel.org>; Sun, 21 May 2023 21:45:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j2EtaAekkrjoQ5OcRJI/lMYU5f07JQCHe4Ajb67Gjow=; b=z5Mp7UazX/vNuE
	04NgNrSqQTD7/afaU5GjCMZOXAL8ctIIIyxMUMOsK1RgN3Kv38cbVRIA5ksc6YBIQsa8vziiAyVaT
	afS6tryxqOsjNYL1v7zMgMDRuR81RyashVQ8M/WjXWe+fgXaY2WqOPcAQ1qYYWGbJ3ENUHpFniwe2
	swv5FKFmxKSPdmrZhffkSPskLAo0B6bm0sKfTfxh0cD8OshuZTw1X8DFp7E037gRkmvcfZDqDAmcA
	bAdeFdtz0Z9FxYo4aNvMc/15rydUk16LfMqJTK1BrbzsSYC6ct0NI9kbDf8fRti3umtaP0pGebzxY
	3PrroLKL5zGOhth3f9Xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0qrX-004itC-0m;
	Sun, 21 May 2023 21:45:11 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0ppB-004cv5-1C
	for linux-phy@lists.infradead.org;
	Sun, 21 May 2023 20:38:43 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-4f3a99b9177so3914163e87.1
        for <linux-phy@lists.infradead.org>; Sun, 21 May 2023 13:38:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684701516; x=1687293516;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Slr3GnICx5gXezzI7sSV6PN44KGk90bj6tbLcS3JUYM=;
        b=l1aPQ1r83xE9GCTU6l/6+HYUAv7i8UtScW5WKma4YqW7d0lSKQM7+93xatmVfBsXJz
         tK3+FsfBVK1fXmW822ltHY5+4O4iihVybzbhAPwicha5PUui2WDpZRD2SZxS2qMKtKzn
         7J7v1vLxnh/6LYb4AGp9Da1uvikGdZj7KR7ZCL1y2vs4Slrwz+xbKIBez12eSX51V4zH
         v5Wg6R0NPptcnwnGd+HEDnawbsxesJsLzLiD6ztGI8FljUR4+SY5wX4IxnF4qGI3i3hR
         DE1Ym6Cza2reDpP+FZbUcNmHHzqd/n4Hhouiy77Y5KFLva/UIMr5Bpp3qmSFDL6dKPbA
         HlNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684701516; x=1687293516;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Slr3GnICx5gXezzI7sSV6PN44KGk90bj6tbLcS3JUYM=;
        b=LyRRmEg65IVQNubcjciiKzMrOgeRJ/DDfyRIAmwNrozGN3J+adkTfttEmClwFQKqlo
         nhTcBKNAG89dWS0eKf0845bwuUP1CAdzdDkUvC5iHXYPyw00F07I/xiNQw0dOZ3hAY11
         Zll8SlPX8p1sytuF6Lza+00LnvhsLHcWMCpW9VjRne1BR+FTcdVUsWnZxb+VinPm8tBQ
         MABf0bE9qJeP1xSlGchn0ZxNnCSWATF6rC8mkst+QwaYIPToIJOub0/31eLM4Fvq2ly7
         zsGV96/W6mRVgeZNibxvk54XGJeaHISd9Yl94ek2P6tTYvdndJ2f2+DpiS3PKREU45Fc
         vOKg==
X-Gm-Message-State: AC+VfDwH8vYbBRka97aIjyv7dlSiua5/QA34bWBIaBbx4ANzLc280VQS
	jCWyvX7Y5ip3wMDPzvq4IWrF7w==
X-Google-Smtp-Source: ACHHUZ7SOaSNJDAtGaf6bl86cBy1ZE/pwyq93NeATZgzra5b6UukxF0wZriV+5tbaCRbJ5YvCCb1Ug==
X-Received: by 2002:ac2:5329:0:b0:4ec:363a:5f24 with SMTP id f9-20020ac25329000000b004ec363a5f24mr2198661lfh.23.1684701516022;
        Sun, 21 May 2023 13:38:36 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id a15-20020a056512020f00b004f3886a63d1sm718894lfo.298.2023.05.21.13.38.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 May 2023 13:38:35 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Johan Hovold <johan@kernel.org>
Subject: [PATCH v2 01/11] dt-bindings: phy: migrate QMP UFS PHY bindings to qcom,sc8280xp-qmp-ufs-phy.yaml
Date: Sun, 21 May 2023 23:38:24 +0300
Message-Id: <20230521203834.22566-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230521203834.22566-1-dmitry.baryshkov@linaro.org>
References: <20230521203834.22566-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_133841_440746_792F1F18 
X-CRM114-Status: GOOD (  10.86  )
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

Migrate legacy bindings (described in qcom,msm8996-qmp-ufs-phy.yaml)
to qcom,sc8280xp-qmp-ufs-phy.yaml. This removes a need to declare
the child PHY node or split resource regions.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../phy/qcom,msm8996-qmp-ufs-phy.yaml         | 244 ------------------
 .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        |  48 +++-
 2 files changed, 45 insertions(+), 247 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml
deleted file mode 100644
index 80a5348dbfde..000000000000
--- a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml
+++ /dev/null
@@ -1,244 +0,0 @@
-# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
-%YAML 1.2
----
-$id: http://devicetree.org/schemas/phy/qcom,msm8996-qmp-ufs-phy.yaml#
-$schema: http://devicetree.org/meta-schemas/core.yaml#
-
-title: Qualcomm QMP PHY controller (UFS, MSM8996)
-
-maintainers:
-  - Vinod Koul <vkoul@kernel.org>
-
-description:
-  QMP PHY controller supports physical layer functionality for a number of
-  controllers on Qualcomm chipsets, such as, PCIe, UFS, and USB.
-
-  Note that these bindings are for SoCs up to SC8180X. For newer SoCs, see
-  qcom,sc8280xp-qmp-ufs-phy.yaml.
-
-properties:
-  compatible:
-    enum:
-      - qcom,msm8996-qmp-ufs-phy
-      - qcom,msm8998-qmp-ufs-phy
-      - qcom,sc8180x-qmp-ufs-phy
-      - qcom,sdm845-qmp-ufs-phy
-      - qcom,sm6115-qmp-ufs-phy
-      - qcom,sm6350-qmp-ufs-phy
-      - qcom,sm8150-qmp-ufs-phy
-      - qcom,sm8250-qmp-ufs-phy
-      - qcom,sm8350-qmp-ufs-phy
-      - qcom,sm8450-qmp-ufs-phy
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
-    minItems: 1
-    maxItems: 3
-
-  clock-names:
-    minItems: 1
-    maxItems: 3
-
-  power-domains:
-    maxItems: 1
-
-  resets:
-    maxItems: 1
-
-  reset-names:
-    items:
-      - const: ufsphy
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
-      "#clock-cells":
-        const: 1
-
-      "#phy-cells":
-        const: 0
-
-    required:
-      - reg
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
-              - qcom,msm8996-qmp-ufs-phy
-    then:
-      properties:
-        clocks:
-          maxItems: 1
-        clock-names:
-          items:
-            - const: ref
-
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,msm8998-qmp-ufs-phy
-              - qcom,sc8180x-qmp-ufs-phy
-              - qcom,sdm845-qmp-ufs-phy
-              - qcom,sm6115-qmp-ufs-phy
-              - qcom,sm6350-qmp-ufs-phy
-              - qcom,sm8150-qmp-ufs-phy
-              - qcom,sm8250-qmp-ufs-phy
-    then:
-      properties:
-        clocks:
-          maxItems: 2
-        clock-names:
-          items:
-            - const: ref
-            - const: ref_aux
-
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,sm8450-qmp-ufs-phy
-    then:
-      properties:
-        clocks:
-          maxItems: 3
-        clock-names:
-          items:
-            - const: ref
-            - const: ref_aux
-            - const: qref
-
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,msm8998-qmp-ufs-phy
-              - qcom,sdm845-qmp-ufs-phy
-              - qcom,sm6350-qmp-ufs-phy
-              - qcom,sm8150-qmp-ufs-phy
-              - qcom,sm8250-qmp-ufs-phy
-              - qcom,sm8350-qmp-ufs-phy
-              - qcom,sm8450-qmp-ufs-phy
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
-              - qcom,sc8180x-qmp-ufs-phy
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
-              - qcom,msm8996-qmp-ufs-phy
-              - qcom,sm6115-qmp-ufs-phy
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
-    #include <dt-bindings/clock/qcom,rpmh.h>
-
-    phy-wrapper@1d87000 {
-        compatible = "qcom,sm8250-qmp-ufs-phy";
-        reg = <0x01d87000 0x1c0>;
-        #address-cells = <1>;
-        #size-cells = <1>;
-        ranges = <0x0 0x01d87000 0x1000>;
-
-        clocks = <&rpmhcc RPMH_CXO_CLK>, <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
-        clock-names = "ref", "ref_aux";
-
-        resets = <&ufs_mem_hc 0>;
-        reset-names = "ufsphy";
-
-        vdda-phy-supply = <&vreg_l6b>;
-        vdda-pll-supply = <&vreg_l3b>;
-
-        phy@400 {
-            reg = <0x400 0x108>,
-                  <0x600 0x1e0>,
-                  <0xc00 0x1dc>,
-                  <0x800 0x108>,
-                  <0xa00 0x1e0>;
-            #phy-cells = <0>;
-        };
-    };
diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index a1897a7606df..d981d77e82e4 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -16,21 +16,31 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,msm8996-qmp-ufs-phy
+      - qcom,msm8998-qmp-ufs-phy
       - qcom,sa8775p-qmp-ufs-phy
+      - qcom,sc8180x-qmp-ufs-phy
       - qcom,sc8280xp-qmp-ufs-phy
+      - qcom,sdm845-qmp-ufs-phy
+      - qcom,sm6115-qmp-ufs-phy
       - qcom,sm6125-qmp-ufs-phy
+      - qcom,sm6350-qmp-ufs-phy
       - qcom,sm7150-qmp-ufs-phy
+      - qcom,sm8150-qmp-ufs-phy
+      - qcom,sm8250-qmp-ufs-phy
+      - qcom,sm8350-qmp-ufs-phy
+      - qcom,sm8450-qmp-ufs-phy
       - qcom,sm8550-qmp-ufs-phy
 
   reg:
     maxItems: 1
 
   clocks:
-    minItems: 2
+    minItems: 1
     maxItems: 3
 
   clock-names:
-    minItems: 2
+    minItems: 1
     items:
       - const: ref
       - const: ref_aux
@@ -75,19 +85,51 @@ allOf:
           contains:
             enum:
               - qcom,sa8775p-qmp-ufs-phy
+              - qcom,sm8450-qmp-ufs-phy
     then:
       properties:
         clocks:
           minItems: 3
         clock-names:
           minItems: 3
-    else:
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,msm8998-qmp-ufs-phy
+              - qcom,sc8180x-qmp-ufs-phy
+              - qcom,sc8280xp-qmp-ufs-phy
+              - qcom,sdm845-qmp-ufs-phy
+              - qcom,sm6115-qmp-ufs-phy
+              - qcom,sm6125-qmp-ufs-phy
+              - qcom,sm6350-qmp-ufs-phy
+              - qcom,sm7150-qmp-ufs-phy
+              - qcom,sm8150-qmp-ufs-phy
+              - qcom,sm8250-qmp-ufs-phy
+              - qcom,sm8350-qmp-ufs-phy
+              - qcom,sm8550-qmp-ufs-phy
+    then:
       properties:
         clocks:
           maxItems: 2
         clock-names:
           maxItems: 2
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,msm8996-qmp-ufs-phy
+    then:
+      properties:
+        clocks:
+          maxItems: 1
+        clock-names:
+          maxItems: 1
+
 additionalProperties: false
 
 examples:
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
