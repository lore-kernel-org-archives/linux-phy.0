Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C6C3C4708D
	for <linux-phy@archiver.kernel.org>; Thu, 29 Dec 2022 12:00:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1516uGmSddHYVI3430klyWyYF6hrjveUZ7SMTdSfvpo=; b=iOyGJ6d4gKtcoM
	czVMpWxdkFmGOQt2faBGeLQ9oCJDPmgnPxOWHc9Uzbzk3CiUF4Fv0d8MzluJ8TmrFupX6AYfqf54f
	l4iv3Gu2lBNOq6fANN41SGdYOB/EvEEOqBATSAFznWCsc3ACApnAsbMcsx1WVZk8zi8DIEQkXcZyR
	QuG5ew24eQRV2EzR74gnfHoiTQXyjeCJ9tNxsmcREu8g436ZeE70kaXkFUcKo8Y7Vy2x0iP4EFgTA
	yQR6cefh+S5O1NosK8kR49DcPd0RJJEPLaEKgb3dhoe47j4N/rLvO2pH4oNOx/6K/0xssLR8xPo9B
	FeLUg2e2kVx6GfKlLg0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAra5-00FMzD-A7; Thu, 29 Dec 2022 12:00:17 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pArZR-00FMaI-1H
	for linux-phy@lists.infradead.org; Thu, 29 Dec 2022 11:59:39 +0000
Received: by mail-lf1-x130.google.com with SMTP id z26so27224400lfu.8
        for <linux-phy@lists.infradead.org>; Thu, 29 Dec 2022 03:59:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rnM8DBj1VvOTIEH0B8jqgDUoXyYAgVlsZfzjH2GBtsI=;
        b=gL52k+gkeeW8qEE8vG+gSjWbiuZGuv0Rv/En2ENuwN6OLLLG09vz5oPcj8RWxvpP+i
         k2+xiRkcPj6hZp39gr1n5TMEbMW3KFHqkDmNMPM0zNW2xsrrNbOnOGQLEYBS7mnT3bB+
         Ejfle0Osb8Ajb7KiBVDVNBMugfqnonAxSjNJ740HFC6fN8gPyowtwWIYbMdqq8Dzee1M
         J/13aPRu2uSxogOG9VXKJQ8qcatAZBmZUncpIOkLNI4QUma7dNkDRCmnv4Dv5qbkA7zU
         DeIzpHtNLkoKE+A06MPnV9KLwdy0QHdPtjg3lT4g2kgMk3RX96qSnqTaug89AvO4BoS2
         +ZJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rnM8DBj1VvOTIEH0B8jqgDUoXyYAgVlsZfzjH2GBtsI=;
        b=b5Wbdk/0c/j7Bds5nPktfpbmgIat1sFZePn2aFH76sElvqN78yjSTnqIQgvXyBPKto
         TcYgsHt3l+N1arHRdzNIWVT+4rL1RqMAspBl7lNCr73U+uQspgff7NCRHj3Pf8NtQuax
         XjHqIJMktr3q6sSl+Hm+hCePh4eyDGTndwtj56p75MaL/RqfvOImTBZWHfSWfp6Gnq/Q
         tiAdLk8RZq0KUe2b9cYmvRXEpvN10V3e1liex/TrZxHK7L3StrfVNbD8tEIghYKDCBwf
         /hhhkj7WPOR83aIQmgPJzHCPNJOMG+2qddVmLxQyeaM79U8im2b6OfxfTO153+QPLSCm
         039Q==
X-Gm-Message-State: AFqh2kqVhuqbcphpU/IvASOSlrHEZO0reyNZvhInd2TT6pqPBdFC/ChB
	gUMXfYwBv7HxbxsgwjM+vMjBwQ==
X-Google-Smtp-Source: AMrXdXuvsxEdRIqIZPvn/GA1l1OSajW7K8UuToLjRDZnd80lXo3rVk/aJPqvYbkBo1cPs69nWDAMmw==
X-Received: by 2002:a05:6512:3d9e:b0:4c0:2b07:e6e7 with SMTP id k30-20020a0565123d9e00b004c02b07e6e7mr10288765lfv.58.1672315174460;
        Thu, 29 Dec 2022 03:59:34 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id n7-20020a05651203e700b0049464d89e40sm3006313lfq.72.2022.12.29.03.59.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Dec 2022 03:59:34 -0800 (PST)
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
Subject: [PATCH v3 1/2] dt-bindings: phy: qcom,pcie2-phy: convert to YAML format
Date: Thu, 29 Dec 2022 13:59:31 +0200
Message-Id: <20221229115932.3312318-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20221229115932.3312318-1-dmitry.baryshkov@linaro.org>
References: <20221229115932.3312318-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221229_035937_290801_B392F4C5 
X-CRM114-Status: GOOD (  14.61  )
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
 .../bindings/phy/qcom,pcie2-phy.yaml          | 86 +++++++++++++++++++
 .../bindings/phy/qcom-pcie2-phy.txt           | 42 ---------
 2 files changed, 86 insertions(+), 42 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,pcie2-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/qcom-pcie2-phy.txt

diff --git a/Documentation/devicetree/bindings/phy/qcom,pcie2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,pcie2-phy.yaml
new file mode 100644
index 000000000000..dbc4a4c71f05
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,pcie2-phy.yaml
@@ -0,0 +1,86 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
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
+  clock-output-names:
+    maxItems: 1
+
+  "#clock-cells":
+    const: 0
+
+  "#phy-cells":
+    const: 0
+
+  vdda-vp-supply:
+    description: low voltage regulator
+
+  vdda-vph-supply:
+    description: high voltage regulator
+
+  resets:
+    maxItems: 2
+
+  reset-names:
+    items:
+      - const: phy
+      - const: pipe
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-output-names
+  - "#clock-cells"
+  - "#phy-cells"
+  - vdda-vp-supply
+  - vdda-vph-supply
+  - resets
+  - reset-names
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
2.39.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
