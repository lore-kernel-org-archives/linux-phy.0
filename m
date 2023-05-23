Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 012AAC77B75
	for <linux-phy@archiver.kernel.org>; Tue, 23 May 2023 14:07:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j2EtaAekkrjoQ5OcRJI/lMYU5f07JQCHe4Ajb67Gjow=; b=MGG/vPXS0huEtG
	GBmISiBLef7+s8q32MJVDK162SAEBjvpkHa6eM6DncC1uL/HcGHJwELPwk56gQX6+mDkDRVOfmLuq
	MB3RXuJsn00BhH26dkOBcT72ynIoRMMDKgzdBVSuum8ASpSqlbJfPYS5oj9OM5oRTGFiUpToGtuJs
	sj7G9cCGV22gAfc1JkvxMEoMdDc20X+36jarq8g6/qHEiEDE64007lggT//HYz4qR/e2ag+iKo4+T
	G+XnsAsRDeo9TqFif0tb5f/lMcpzii5PYUwd/TnlY8umA9jrq8w8Q62TOM0viTT7bYsaVg0pSj+G5
	kb9Z/FF93iRcACwnWUsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Sfi-00ASZQ-24;
	Tue, 23 May 2023 14:07:30 +0000
Received: from mail-lj1-f176.google.com ([209.85.208.176])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Sfe-00ASVP-0u
	for linux-phy@lists.infradead.org;
	Tue, 23 May 2023 14:07:28 +0000
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2af1a7d2f6aso69205611fa.1
        for <linux-phy@lists.infradead.org>; Tue, 23 May 2023 07:07:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684850784; x=1687442784;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Slr3GnICx5gXezzI7sSV6PN44KGk90bj6tbLcS3JUYM=;
        b=PCbu+n1cZYW8nV8c/lJMqVhOeLl+C5G2qVReJmKckpmoURv2ou9b96rLKRzzaaE6wC
         5Jb7Z/U0CBUr3u2KHZ/6aLkJyTr4y6Oe3YQFF6Cy4C6mkejAi5yMl10U+uhbUh7/gST3
         Pwuht7JqaVIIzuBEiLbZFAc6vkYitHEM1tCcWxdqiQAIEYAo8HbR9S3NsfwzkOS590Pv
         B2JeOdkaNsg4KS1W88cEKlbdgzIOFEhh5pHYDjcoETDK5TBelj1PAH20SVm4M0C0uEzU
         8JZeJfh5AZ4GcBWw2vTafIcfjU1fXMATFrUb6b5BAtZ4OIqI5KjcEfQfLaMw//enZn1l
         tADQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684850784; x=1687442784;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Slr3GnICx5gXezzI7sSV6PN44KGk90bj6tbLcS3JUYM=;
        b=fpKdk2fZ8xnZrnZu78LAekBPYGBf+rH+GQ1NuF3e3mcq4/00lSCC/lW5c1zvfEZ2mY
         cTGeztsH+y7zcpXspdlaql6Vy5mswtB9thAV0WEC/h5+2R9lVRkOBuwWgjeoFNXuRZNX
         D3UKhgy/jtRU7mdO7rGj0qwnNTkhd+JVm3yWuZaFxYTt5PhTYV1xw4P8TQDCamdTCUec
         F2yogPSgs0ULyabkbXOOKKm8trjCGBsodlaNArgFo+2UUl4ZZsZrOxMoixpj61Us18Mm
         usnwiZU0Lafi4jv4mPVFw9OE7NXcV9aTJOxeYrs2KNDpejFnmx5SXktMlB8ObBbac2vk
         UZug==
X-Gm-Message-State: AC+VfDyKfnUluU48DssZBGvVWjLoy1Zakl+ocJXT5zKtmNWIvBGvC903
	AcGHkPKVKvQtsfOiAM+8s8duhw==
X-Google-Smtp-Source: ACHHUZ72hF8TJZyHvxZ7w6qjFBdYfZvlSH6EyfahwaHMpegGWXLzX3XoC8VkNL9LnHmUbFxYOg8mwQ==
X-Received: by 2002:a2e:8197:0:b0:2af:1adb:1726 with SMTP id e23-20020a2e8197000000b002af1adb1726mr5247415ljg.38.1684850784417;
        Tue, 23 May 2023 07:06:24 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id l1-20020a2e9081000000b002adbe01cd69sm1633536ljg.9.2023.05.23.07.06.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 07:06:24 -0700 (PDT)
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
	devicetree@vger.kernel.org
Subject: [PATCH v3 01/11] dt-bindings: phy: migrate QMP UFS PHY bindings to qcom,sc8280xp-qmp-ufs-phy.yaml
Date: Tue, 23 May 2023 17:06:12 +0300
Message-Id: <20230523140622.265692-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230523140622.265692-1-dmitry.baryshkov@linaro.org>
References: <20230523140622.265692-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_070726_320847_D01EDC7A 
X-CRM114-Status: GOOD (  11.51  )
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
