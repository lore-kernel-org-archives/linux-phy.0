Return-Path: <SRS0=210v=MB=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F72FC07E9C
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jul 2021 10:42:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2696C613EC
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jul 2021 10:42:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2696C613EC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EsDIDQs6PaftmIIyknIqlo+POWuc8wodQt9FmV6r+/4=; b=46OIR0zeMmGfqo
	AUIFGX4c9oJusLeTiWBaUwxnTC/eL9l6QoktziQi2HmDZNBLq3zdbKVdnabJPKxloHfb6TqlMgV2a
	sYnqMwsMfT0R8i2tX/KBBo1gtM1Xyko2Avlpbp/DavHLBg90K5WBilix+GPhCgna8sHSFZ6fmHEON
	MHXme7NJ1y+B/x6yeVMNt3VZfxgkoqspXD/JPDklP6ZMF9RQdD1KFEbp8e3qCXzVDXhfiZ8Z7cmc+
	LVnpyUaCI/bkfdBP4eTrBeQIHLGZ5/tDsmidqvGPqhmNBN61ORKDwuCkta3vSymR2c+yEFwB8VF17
	KL2IL/64PwJnExsPW+2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m1nxa-001Zgo-LJ; Fri, 09 Jul 2021 10:42:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m1nxB-001ZYb-IV
 for linux-phy@lists.infradead.org; Fri, 09 Jul 2021 10:41:58 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 38B9A613E8;
 Fri,  9 Jul 2021 10:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1625827313;
 bh=Wbz8BIqkDGOGe5Y5QXz3JddAMSpth4TA47h5iTOOx2g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=sPQ17iO9T6VggNrBhlpXzDCb5hK5vS/GJIskbl3lFNvECA6eO7gtZmzSZFsLKSeF9
 Rk2KbgAA9OGcAAzeCXjMHLT3iu4W1ZOfT+QbkBKznuUp27T9Loq89MZ2YE2gjjrS8B
 hSKmRaRokYv5weAr++FwQHNY4lZyktgWz0/Hh+d4pEe9TbyXXtr3Srfk8On+zRlDBb
 XzUSX9QEUsXpmFMU5+6NuiBYO/E4R54/80C5yJ9ZUwc1tOa/h0EA2xUYQkLxc0vXs1
 rrBtO2L7l3c283uGK1gUhJcopaveApsAD1c6Itb2B45tDbiQFEGCim7H+mXDKJD8In
 hWe8CIb1SGNOg==
Received: by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1m1nx7-00B5FS-4z; Fri, 09 Jul 2021 12:41:49 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [PATCH v3 1/9] dt-bindings: phy: add bindings for Hikey 960 PCIe PHY
Date: Fri,  9 Jul 2021 12:41:37 +0200
Message-Id: <b0a34c8f3b248a37ca33d476280ab858d7087fcd.1625826353.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1625826353.git.mchehab+huawei@kernel.org>
References: <cover.1625826353.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210709_034153_711083_2462591F 
X-CRM114-Status: GOOD (  11.23  )
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

Document the bindings for Hikey 960 (hi3660) PCIe PHY
interface, supported via the pcie-kirin driver.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../phy/hisilicon,phy-hi3660-pcie.yaml        | 82 +++++++++++++++++++
 1 file changed, 82 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/hisilicon,phy-hi3660-pcie.yaml

diff --git a/Documentation/devicetree/bindings/phy/hisilicon,phy-hi3660-pcie.yaml b/Documentation/devicetree/bindings/phy/hisilicon,phy-hi3660-pcie.yaml
new file mode 100644
index 000000000000..bed290059abb
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/hisilicon,phy-hi3660-pcie.yaml
@@ -0,0 +1,82 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/hisilicon,phy-hi3660-pcie.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Hisilicon Kirin960 PCIe PHY
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
