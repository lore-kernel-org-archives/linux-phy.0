Return-Path: <SRS0=xi9z=MN=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B463C07E9B
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jul 2021 08:39:39 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1339261221
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jul 2021 08:39:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1339261221
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o8yMHDD5s7irtc/UzNb1sBqoTc4p6Q/jq7WJGfzmpnE=; b=gp6Eiv6traE2ZK
	Rga9PcKSk9CgAzli0sKu0lrAqZmbMPZpBjZV7DD6ATYcZlzt88PuJ3f/6mScBUk/yRzZfjw2jSy/V
	QoJpAmhKMZTfJqouurY2en9IXKRKdaqHrJA/+USAWaB9+r6d1es225zRzZFucuh8Xw4U3EzUUNiMr
	7mXnB3/1akIcGEH5Oz5wsCGggO1n9uZiBH/aFno4AhEXDKVsSNQ9rHBx7I7u6+izeZaSvUsohn3ld
	OPjt8oy6m4g3DsO27OOHUfde7z8Pd7WJQrURbwgfBlZukGNgnvRBbkWS8dWARys9NxFdrO/9mS1nI
	TEib1pTCLsJk9DdMr4/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m67lS-00EwL4-J2; Wed, 21 Jul 2021 08:39:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m67lA-00EwD3-Ku
 for linux-phy@lists.infradead.org; Wed, 21 Jul 2021 08:39:22 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7BC6D6120D;
 Wed, 21 Jul 2021 08:39:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626856759;
 bh=eT62F16m4fmnu9+ZtQ5I8OSRvrVJgO8LuBY471amLVk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Br++L+BMZpXlfIiTwaiiu5mB4JjjUqyv6G64sI0V1bbQyS9c+PeZ0m7ZhzDuddfcf
 w3au81XBOfLEPCPavw40MZC1PdGN922M25MJaMAvcw4w/3WoRxzPh0iVbbN4oAMebN
 bvwpBsPghVG1CtVYDrwfuNXJdeNwOyMCvQEmEdObHqx07TDW72HWe7vILxB9qrARCm
 d6P+AS3tsD3qBsyu1mfKn/vihaIU2hB/tQMVLU4htAVv3sVz4tbOP7uSrbnxciigJ6
 FUaKlhcQIweW7Aay5dm6UnwsNqO0BMHjNTozFZIFvwCvilYRnKBRBy7BEu4acJrYZx
 dzQzuwCB6hyKQ==
Received: by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1m67l5-0022de-GT; Wed, 21 Jul 2021 10:39:15 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Vinod Koul <vkoul@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Rob Herring <robh@kernel.org>
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: [PATCH v7 06/10] dt-bindings: phy: Add bindings for HiKey 970 PCIe PHY
Date: Wed, 21 Jul 2021 10:39:08 +0200
Message-Id: <946f2426bc542638240980931eae924c57f2ba27.1626855713.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1626855713.git.mchehab+huawei@kernel.org>
References: <cover.1626855713.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210721_013920_758412_106AAC18 
X-CRM114-Status: GOOD (  11.46  )
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
 .../phy/hisilicon,phy-hi3670-pcie.yaml        | 95 +++++++++++++++++++
 1 file changed, 95 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/hisilicon,phy-hi3670-pcie.yaml

diff --git a/Documentation/devicetree/bindings/phy/hisilicon,phy-hi3670-pcie.yaml b/Documentation/devicetree/bindings/phy/hisilicon,phy-hi3670-pcie.yaml
new file mode 100644
index 000000000000..a5ea13332cac
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/hisilicon,phy-hi3670-pcie.yaml
@@ -0,0 +1,95 @@
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
+      - const: phy_ref
+      - const: aux
+      - const: apb_phy
+      - const: apb_sys
+      - const: aclk
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
+    soc {
+      #address-cells = <2>;
+      #size-cells = <2>;
+      pcie_phy: pcie-phy@fc000000 {
+        compatible = "hisilicon,hi970-pcie-phy";
+        reg = <0x0 0xfc000000 0x0 0x80000>;
+        #phy-cells = <0>;
+        phy-supply = <&ldo33>;
+        clocks = <&crg_ctrl HI3670_CLK_GATE_PCIEPHY_REF>,
+                 <&crg_ctrl HI3670_CLK_GATE_PCIEAUX>,
+                 <&crg_ctrl HI3670_PCLK_GATE_PCIE_PHY>,
+                 <&crg_ctrl HI3670_PCLK_GATE_PCIE_SYS>,
+                 <&crg_ctrl HI3670_ACLK_GATE_PCIE>;
+        clock-names = "phy_ref", "aux",
+                      "apb_phy", "apb_sys", "aclk";
+        reset-gpios = <&gpio7 0 0 >, <&gpio25 2 0 >,
+                      <&gpio3 1 0 >, <&gpio27 4 0 >;
+        clkreq-gpios = <&gpio20 6 0 >, <&gpio27 3 0 >, <&gpio17 0 0 >;
+        hisilicon,eye-diagram-param = <0xFFFFFFFF 0xFFFFFFFF
+                                       0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF>;
+      };
+    };
-- 
2.31.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
