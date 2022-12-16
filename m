Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09A90C4167B
	for <linux-phy@archiver.kernel.org>; Fri, 16 Dec 2022 23:41:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YI0Uw3bZr15vamjw1eEe759fFaDiJsxH42PUiFPA20I=; b=3gfEyaYAHTuVJa
	8Ck+cv+wAN/OsfQFC8QAi6qxg3nNoiRfNJj0nEyEpD9ed8Z5mZgPkq1jOcNOWjdu0VGCTyr9lK0IA
	nT1S8fYWwUyKCHkDcpQyOlOWjWdrL2etedQ8bvU1ClmAQtcHT/QgzHMDew1d71e6Mqg2aVTkLhBBI
	DcQ9Yq3VrKG4ADE+6aW3b7tiSnre4K7co9eMAiNitnCKpj74A2+XeXaxZ/mY0FEn3vyWOs1sdf78r
	+qNfiTk2wqPQ20DmCuuWrJYaiiTUPolCH8SzZ2+Ala3hwSJQ1wuXV1IDxwWUisYHMOIEzSGRVz/0U
	y+gvh4xnh+tk0gJsTT7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p6KKK-002jGV-9f; Fri, 16 Dec 2022 23:41:16 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p6KJd-002ivU-Ix
	for linux-phy@lists.infradead.org; Fri, 16 Dec 2022 23:40:37 +0000
Received: by mail-lf1-x136.google.com with SMTP id q6so5760463lfm.10
        for <linux-phy@lists.infradead.org>; Fri, 16 Dec 2022 15:40:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Eot6Ch9ktr7c1NPzEakSz2KfZ2lWHPXfKY4tvkPLu3o=;
        b=J9+eGa40Eo6lbkO1rPjMNhpDL/MN8HHT9atYShSM7fXGdez37iIQCpmkgX4QJxWpR+
         MMJECNAhX1S3dxnE2jIk4raaTsmc+xAxxf27bWjhz/iikt+v665xV6rc2x5AvWwi8LDv
         fhBFaKb8SlwvBW7wkZ6Yos33PDVAygfoXFHbOqGhIzfV9cy0pFUSZT3heWKRrH2UNHCZ
         Ab84TdhDmJGDVfNDRrrk8dIdi7kwE2LfoQUdR5S+WyHFTzfpeR/jGa084RQ/fcCD8jLl
         iCdy3zcadtD45OtXujOSsRNWI5nbaGrryu/wSBaNBXm4aM2BRV83Pi1kd14YThYEsqIi
         D4gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Eot6Ch9ktr7c1NPzEakSz2KfZ2lWHPXfKY4tvkPLu3o=;
        b=YG7aWyxU3GBvFFK8lXrLbtHeb35PblraFNW1BhHYyziGFBhSHDEDDqXowwF+666JXR
         Up4fnF5YTRaQnUzEOhQuos1QILJeVEoBVlat9fJQvr2i/efzEuGiMtnJs3ycjxRec0wU
         XpsZCDPeVpN/HN3/H+cwD/qxk2DjVJxSiCPt3m2uB3/xvAJKg6F0ME0MVoHwfd5YYTsg
         k8mqER/xLkMaWTVJ5q1eBqhr1uqtHCULzlB8jOQT4LaEmUgCfb3KDXjHTTH+E0zeSJtd
         UmlmHkkfuK/RPeGrykHgZT1Rlgh2C29HO3SqcjYegXt/NnD7g46pNncuyI0OhQZ9hCzH
         2wHg==
X-Gm-Message-State: ANoB5pnpASXbfKOvezZO5yENDZXm3HZr2gF8qIRd16kte89cZrBWoAMQ
	d7MYi5OppuaTtk9y1ruYRPDAbA==
X-Google-Smtp-Source: AA0mqf77Bq7wd745sA6uN3Qyen+p2FVXlZKvVvCcfiw8EUSGttr+gsd0BMnibFt3vht0ivXPL/cXVw==
X-Received: by 2002:a05:6512:b8c:b0:4b5:7d49:4a05 with SMTP id b12-20020a0565120b8c00b004b57d494a05mr13684431lfv.0.1671234028721;
        Fri, 16 Dec 2022 15:40:28 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id a21-20020ac25055000000b004b40c2fccfdsm336950lfm.59.2022.12.16.15.40.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Dec 2022 15:40:28 -0800 (PST)
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
Subject: [PATCH 1/3] dt-bindings: phy: qcom,pcie2-phy: convert to YAML format
Date: Sat, 17 Dec 2022 01:40:25 +0200
Message-Id: <20221216234027.539917-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221216_154033_738050_E1167D22 
X-CRM114-Status: GOOD (  13.75  )
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

Convert the bindings for the Qualcomm PCIe2 PHY into the YAML format
from the text description.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../bindings/phy/qcom,pcie2-phy.yaml          | 87 +++++++++++++++++++
 .../bindings/phy/qcom-pcie2-phy.txt           | 42 ---------
 2 files changed, 87 insertions(+), 42 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,pcie2-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/qcom-pcie2-phy.txt

diff --git a/Documentation/devicetree/bindings/phy/qcom,pcie2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,pcie2-phy.yaml
new file mode 100644
index 000000000000..497850a5b428
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,pcie2-phy.yaml
@@ -0,0 +1,87 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,pcie2-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm PCIe2 PHY controller
+
+maintainers:
+  - Vinod Koul <vkoul@kernel.org>
+
+description:
+  The Qualcomm PCIe2 PHY is a Synopsys based phy found in a number of Qualcomm
+  platforms.
+
+properties:
+  compatible:
+    items:
+      - const: qcom,qcs404-pcie2-phy
+      - const: qcom,pcie2-phy
+
+  reg:
+    items:
+      - description: PHY register set
+
+  clocks:
+    items:
+      - description: a clock-specifier pair for the "pipe" clock
+
+  "#phy-cells":
+    const: 0
+
+  vdda-vp-supply:
+    description: phandle to low voltage regulator
+
+  vdda-vph-supply:
+    description: phandle to high voltage regulator
+
+  resets:
+    maxItems: 2
+
+  reset-names:
+    items:
+      - const: phy
+      - const: pipe
+  "#clock-cells":
+    const: 0
+
+  clock-output-names:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+  - clocks
+  - vdda-vp-supply
+  - vdda-vph-supply
+  - resets
+  - reset-names
+  - clock-output-names
+  - "#clock-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,gcc-qcs404.h>
+    phy@7786000 {
+      compatible = "qcom,qcs404-pcie2-phy", "qcom,pcie2-phy";
+      reg = <0x07786000 0xb8>;
+
+      clocks = <&gcc GCC_PCIE_0_PIPE_CLK>;
+      resets = <&gcc GCC_PCIEPHY_0_PHY_BCR>,
+               <&gcc GCC_PCIE_0_PIPE_ARES>;
+      reset-names = "phy", "pipe";
+
+      vdda-vp-supply = <&vreg_l3_1p05>;
+      vdda-vph-supply = <&vreg_l5_1p8>;
+
+      clock-output-names = "pcie_0_pipe_clk";
+      #clock-cells = <0>;
+      #phy-cells = <0>;
+    };
+...
+
diff --git a/Documentation/devicetree/bindings/phy/qcom-pcie2-phy.txt b/Documentation/devicetree/bindings/phy/qcom-pcie2-phy.txt
deleted file mode 100644
index 30064253f290..000000000000
--- a/Documentation/devicetree/bindings/phy/qcom-pcie2-phy.txt
+++ /dev/null
@@ -1,42 +0,0 @@
-Qualcomm PCIe2 PHY controller
-=============================
-
-The Qualcomm PCIe2 PHY is a Synopsys based phy found in a number of Qualcomm
-platforms.
-
-Required properties:
- - compatible: compatible list, should be:
-	       "qcom,qcs404-pcie2-phy", "qcom,pcie2-phy"
-
- - reg: offset and length of the PHY register set.
- - #phy-cells: must be 0.
-
- - clocks: a clock-specifier pair for the "pipe" clock
-
- - vdda-vp-supply: phandle to low voltage regulator
- - vdda-vph-supply: phandle to high voltage regulator
-
- - resets: reset-specifier pairs for the "phy" and "pipe" resets
- - reset-names: list of resets, should contain:
-		"phy" and "pipe"
-
- - clock-output-names: name of the outgoing clock signal from the PHY PLL
- - #clock-cells: must be 0
-
-Example:
- phy@7786000 {
-	compatible = "qcom,qcs404-pcie2-phy", "qcom,pcie2-phy";
-	reg = <0x07786000 0xb8>;
-
-	clocks = <&gcc GCC_PCIE_0_PIPE_CLK>;
-	resets = <&gcc GCC_PCIEPHY_0_PHY_BCR>,
-	         <&gcc GCC_PCIE_0_PIPE_ARES>;
-	reset-names = "phy", "pipe";
-
-	vdda-vp-supply = <&vreg_l3_1p05>;
-	vdda-vph-supply = <&vreg_l5_1p8>;
-
-	clock-output-names = "pcie_0_pipe_clk";
-	#clock-cells = <0>;
-	#phy-cells = <0>;
- };
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
