Return-Path: <SRS0=iZVT=ME=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C0A6C11F66
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jul 2021 21:47:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E2B0C61260
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jul 2021 21:47:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E2B0C61260
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p2YI+8mRMxabk2Wn9Zfb4WdzKYInRdn+ZtNHE69raN0=; b=JAJc3R+bqqP0GY
	nZykfIm7PrNt7y3b4KMRhEb6KnL8o1qjN2N6CJogggm8BNtjKa5B4JMFRqbqZF1iG9NOLeggCdvjY
	3zSksNouR2h81e8GyiJMerrlC/KCbi6Ii5/sQqok5aNDj2S1V/2cf+goESZpWHRjFy1MRqERn4RP/
	UqeTINJx3zaUsYnv4F3oI/8OvvdH3aLdsUj1dyQSew4zpTFIsdZqmVNB1Mr44sJAidT+7y3bhmaam
	fYRIhhipdWepnkTm3vxbNz2ugEVW/3nDJZArTR0a00x7DICBrFAFrghlkeqL1ckV8rJI8hndXlv5D
	lxeHFU9pZwb1qJloPX7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m33lb-008Vhq-FQ; Mon, 12 Jul 2021 21:47:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m33lL-008VZ5-SF
 for linux-phy@lists.infradead.org; Mon, 12 Jul 2021 21:46:55 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6FD8D6127C;
 Mon, 12 Jul 2021 21:46:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626126410;
 bh=se9640ubWAMBXq29BIJQe5nQYy9uHVZjbLlOIKUMhLo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Tzme3igZKEHLOMV16XBq5zEfe5uaV9zJg8ad1AC4ANtAgGWFpkw1J1/8N0gEIvr+C
 OikIXWexA9+NCAHmGXQACkyaVccJ44QpYcZAEJgdlBwApm9SwnJqforvwg/vbhRpYz
 MZAbRpSciphkIQGVT+7eW2NDVj1IFZMlw2o6TBM4U8mpiw1Haq6sTS1JJvoXYP9zRi
 88lvnPtzdVOLOmEuwZojHFJVXihvDbe11wFmLs26rLuN7+N8OJPEJcqal0ayaIPMra
 fzxmrJOSph0A8096yJv2FbYw8Z4aas6+rqXEir8OmX3ZBOwlnsA2MtJD9tQxZAAb5T
 ctwddhwIxi9pQ==
Received: by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1m33lI-005VRE-70; Mon, 12 Jul 2021 23:46:48 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 "Manivannan Sadhasivam" <mani@kernel.org>, "Rob Herring" <robh@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [PATCH v4 2/8] dt-bindings: phy: Add bindings for HiKey 970 PCIe PHY
Date: Mon, 12 Jul 2021 23:46:40 +0200
Message-Id: <baa7e71e13953b28a11fffdcef35195099feb7fd.1626126198.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1626126198.git.mchehab+huawei@kernel.org>
References: <cover.1626126198.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210712_144652_036643_74681F04 
X-CRM114-Status: GOOD (  11.52  )
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

Document the bindings for HiKey 970 (hi3670) PCIe PHY
interface, supported via the pcie-kirin driver.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../phy/hisilicon,phy-hi3670-pcie.yaml        | 101 ++++++++++++++++++
 1 file changed, 101 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/hisilicon,phy-hi3670-pcie.yaml

diff --git a/Documentation/devicetree/bindings/phy/hisilicon,phy-hi3670-pcie.yaml b/Documentation/devicetree/bindings/phy/hisilicon,phy-hi3670-pcie.yaml
new file mode 100644
index 000000000000..976ab6fe7b0a
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/hisilicon,phy-hi3670-pcie.yaml
@@ -0,0 +1,101 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/hisilicon,phy-hi3670-pcie.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: HiSilicon Kirin970 PCIe PHY
+
+maintainers:
+  - Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
+
+description: |+
+  Bindings for PCIe PHY on HiSilicon Kirin 970.
+
+properties:
+  compatible:
+    const: hisilicon,hi970-pcie-phy
+
+  "#phy-cells":
+    const: 0
+
+  reg:
+    maxItems: 1
+    description: PHY Control registers
+
+  reg-names:
+    const: phy
+
+  phy-supply:
+    description: The PCIe PHY power supply
+
+  clocks:
+    items:
+      - description: PCIe PHY clock
+      - description: PCIe AUX clock
+      - description: PCIe APB PHY clock
+      - description: PCIe APB SYS clock
+      - description: PCIe ACLK clock
+
+  clock-names:
+    items:
+      - const: pcie_phy_ref
+      - const: pcie_aux
+      - const: pcie_apb_phy
+      - const: pcie_apb_sys
+      - const: pcie_aclk
+
+  reset-gpios:
+    description: PCI PERST reset GPIOs
+    maxItems: 4
+
+  clkreq-gpios:
+    description: Clock request GPIOs
+    maxItems: 3
+
+  hisilicon,eye-diagram-param:
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    description: Eye diagram for phy.
+
+required:
+  - "#phy-cells"
+  - compatible
+  - reg
+  - reg-names
+  - clocks
+  - clock-names
+  - reset-gpios
+  - clkreq-gpios
+  - hisilicon,eye-diagram-param
+  - phy-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/hi3670-clock.h>
+
+    bus {
+      #address-cells = <2>;
+      #size-cells = <2>;
+      pcie_phy: pcie-phy@fc000000 {
+        compatible = "hisilicon,hi970-pcie-phy";
+        reg = <0x0 0xfc000000 0x0 0x80000>;
+        reg-names = "phy";
+        #phy-cells = <0>;
+        phy-supply = <&ldo33>;
+        clocks = <&crg_ctrl HI3670_CLK_GATE_PCIEPHY_REF>,
+                 <&crg_ctrl HI3670_CLK_GATE_PCIEAUX>,
+                 <&crg_ctrl HI3670_PCLK_GATE_PCIE_PHY>,
+                 <&crg_ctrl HI3670_PCLK_GATE_PCIE_SYS>,
+                 <&crg_ctrl HI3670_ACLK_GATE_PCIE>;
+        clock-names = "pcie_phy_ref", "pcie_aux",
+                      "pcie_apb_phy", "pcie_apb_sys", "pcie_aclk";
+        reset-gpios = <&gpio7 0 0 >, <&gpio25 2 0 >,
+                      <&gpio3 1 0 >, <&gpio27 4 0 >;
+        clkreq-gpios = <&gpio20 6 0 >, <&gpio27 3 0 >, <&gpio17 0 0 >;
+        hisilicon,eye-diagram-param = <0xFFFFFFFF 0xFFFFFFFF
+                                       0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF>;
+      };
+    };
+...
-- 
2.31.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
