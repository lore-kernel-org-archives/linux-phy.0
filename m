Return-Path: <SRS0=iZVT=ME=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1E9EDC07E9C
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jul 2021 21:47:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CF90E61242
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jul 2021 21:47:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CF90E61242
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YxizaA+Be0sbcl+uk/rews20laLwLSWTzjiMgoa8JiQ=; b=EaWGgu07Wol/pf
	vpJhK4kzmbfqc/r02Evp35OaAZwtUJMVp0QeMQokBaRdEmCrwlcNjj8i43T81mhh5mYpGhZ9khzoK
	v6XncQ253y4UKouwlKhv4MRvJhQJWAH3RY9io0qobudR209IBJT4rGfaK9Q0HMOQCSKoH2luRWztt
	zXqkkL4YOAQa4X1pHwqtlMVz7CZ3C228RMcnkd4bd/QqYMvE944eiewHp8y9/K/s65KJimM0Lnw6w
	SByaJCU2IiCOHKJlgBR5cI0nGMgjiFOX+moGN93gTFhH/jCuwcZPg+HKoQHU6BhnfKNO2MQF0DTAg
	dGwj4YPaolCjWO5KFeUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m33lb-008Vhe-81; Mon, 12 Jul 2021 21:47:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m33lL-008VZA-RY
 for linux-phy@lists.infradead.org; Mon, 12 Jul 2021 21:46:55 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7915261279;
 Mon, 12 Jul 2021 21:46:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626126410;
 bh=beQ/nlrqcVJKSEttIL89uLGSbQ5pFqjunHiG0KZXdfc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=n9tCIeZR1TuGdinDml4bYGTVruKMlEkbU693sBjXCW1de+8wp+0ufOzPDBVm8/ZNr
 qm8FNfqjGTElc9whDyUsXcp4LAEmmxcPfaOy+PlQE+fiWcfkuRrYixf8Z/Xg4Z1rXD
 RhAQnQOtM9prREugYkEd0Nd6BkCaktWukJcQ2aoRoFssSlgCJ/DAPIWMyRVnY0DnmN
 frk8fatnqCTsRvuUe5O2VCCT17yIL9v6YSJ/wpcHpewaWDZY/eW7kcPaxIbwkSn2q4
 zy40Un1TvkXmWkgY8V9xP0E1+BzW6l+WSrFGU1JF5F+nZ54Cmn8GeV4Efd1bTJyJ4A
 KJ5Ebu7Jd6lNg==
Received: by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1m33lI-005VRB-5m; Mon, 12 Jul 2021 23:46:48 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 "Manivannan Sadhasivam" <mani@kernel.org>, "Rob Herring" <robh@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [PATCH v4 1/8] dt-bindings: phy: Add bindings for HiKey 960 PCIe PHY
Date: Mon, 12 Jul 2021 23:46:39 +0200
Message-Id: <390e7fc0cd6fa4217f5d67c74f12ea101fab3f6d.1626126198.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1626126198.git.mchehab+huawei@kernel.org>
References: <cover.1626126198.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210712_144652_027005_EB872CB4 
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

Document the bindings for HiKey 960 (hi3660) PCIe PHY
interface, supported via the pcie-kirin driver.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../phy/hisilicon,phy-hi3660-pcie.yaml        | 82 +++++++++++++++++++
 1 file changed, 82 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/hisilicon,phy-hi3660-pcie.yaml

diff --git a/Documentation/devicetree/bindings/phy/hisilicon,phy-hi3660-pcie.yaml b/Documentation/devicetree/bindings/phy/hisilicon,phy-hi3660-pcie.yaml
new file mode 100644
index 000000000000..81c93e76cef4
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/hisilicon,phy-hi3660-pcie.yaml
@@ -0,0 +1,82 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/hisilicon,phy-hi3660-pcie.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: HiSilicon Kirin960 PCIe PHY
+
+maintainers:
+  - Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
+
+description: |+
+  Bindings for PCIe PHY on HiSilicon Kirin 960.
+
+properties:
+  compatible:
+    const: hisilicon,hi960-pcie-phy
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
+    description: PCI PERST reset GPIO
+
+required:
+  - "#phy-cells"
+  - compatible
+  - reg
+  - reg-names
+  - clocks
+  - clock-names
+  - reset-gpios
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/hi3660-clock.h>
+
+    bus {
+      #address-cells = <2>;
+      #size-cells = <2>;
+      pcie_phy: pcie-phy@f3f2000 {
+        compatible = "hisilicon,hi960-pcie-phy";
+        reg = <0x0 0xf3f20000 0x0 0x40000>;
+        reg-names = "phy";
+        clocks = <&crg_ctrl HI3660_PCIEPHY_REF>,
+                 <&crg_ctrl HI3660_CLK_GATE_PCIEAUX>,
+                 <&crg_ctrl HI3660_PCLK_GATE_PCIE_PHY>,
+                 <&crg_ctrl HI3660_PCLK_GATE_PCIE_SYS>,
+                 <&crg_ctrl HI3660_ACLK_GATE_PCIE>;
+        clock-names = "pcie_phy_ref", "pcie_aux",
+                 "pcie_apb_phy", "pcie_apb_sys",
+                 "pcie_aclk";
+        reset-gpios = <&gpio11 1 0 >;
+        #phy-cells = <0>;
+      };
+    };
+...
-- 
2.31.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
