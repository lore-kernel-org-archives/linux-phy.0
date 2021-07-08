Return-Path: <SRS0=EZuF=MA=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5475DC07E96
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jul 2021 15:50:51 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1072561621
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jul 2021 15:50:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1072561621
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2c33BTSLmOsq3TBSksEljVqwo9MqLNwh0QhVJfa8lv8=; b=1OFSmwqO/3JGCF
	UP/Ep8MWy50HimAu988csN53PH5x4g4pMnIktbOxYCuQlPKBBWxQNk/1HmcDfySegvZBU92J4Rrqw
	1CfaSkKrTX5h8NUGYwhSDK0jm3VUXUweITY2oCCLfmgrBD5u7Ya/N0futuZr6EqowmWkjUIUPkp6m
	3i5yyQZKoKC1po7VtD7cLwCFLhtm4mBO8FYbpHqumxiP2Z2pnZYXjwXWDx4ngnDCsA7+OXwDfOQJ/
	A6DFKCY3eYomyODyCBi4ECaGZcs1er5uvXt1iluUuKmDBzqD8oeEdgT9ExgMBWSX29hK/+u25VOde
	MMhJ7FSq6Sl73sPqm0GQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m1WIc-00HJsV-JH; Thu, 08 Jul 2021 15:50:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m1WID-00HJiS-Hh; Thu, 08 Jul 2021 15:50:29 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 99971616EA;
 Thu,  8 Jul 2021 15:50:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1625759423;
 bh=uCwa8ScPFO0U2r/s3wua3LONDVtbY/hwWP8xPNq4Iw4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=QkAceOckiRR6IJtjS3hcBguwcAMkbGO+QQ46rN95bMUXVvPG3wtECROAM0q1CNJX8
 BQ9urF579EYmxkHJj0T5ozj8v51kCtFWUI0BJqwMlttanq4gdoyPZt05JkLrIGCOBQ
 MvN66bNxthL6I76HwPZJETb0i3gvwXCNDY8yMqi3Ha1Ka6xKGRIu9ud7fxbrbp7QnP
 JPULNG6V2G65oUc8z2n1B5WuCszlhh8C/K2MGFWtGEK4aBQncMiEocm9LPol2PrDrV
 8LKFTOu6KFNVbZ6lkkJIQ8epvrGqRpg6OFkYhnEHzFac6xTmlic0S99dQTGDQXP7KY
 aUsQy5w1QtxEQ==
Received: by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1m1WI4-008VVF-Iy; Thu, 08 Jul 2021 17:50:16 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Wei Xu <xuwei5@hisilicon.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [PATCH RFC 5/7] bindings: phy: add bindings for Hikey 960 PCIe PHY
Date: Thu,  8 Jul 2021 17:50:12 +0200
Message-Id: <28b9aa4d2d182d4705d7837c9165ae7b5bd8d141.1625758732.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1625758732.git.mchehab+huawei@kernel.org>
References: <cover.1625758732.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210708_085025_721058_81B6B329 
X-CRM114-Status: GOOD (  13.65  )
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
 .../phy/hisilicon,phy-hi3660-pcie.yaml        | 70 +++++++++++++++++++
 arch/arm64/boot/dts/hisilicon/hi3660.dtsi     | 11 +--
 2 files changed, 76 insertions(+), 5 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/hisilicon,phy-hi3660-pcie.yaml

diff --git a/Documentation/devicetree/bindings/phy/hisilicon,phy-hi3660-pcie.yaml b/Documentation/devicetree/bindings/phy/hisilicon,phy-hi3660-pcie.yaml
new file mode 100644
index 000000000000..e91a38450461
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/hisilicon,phy-hi3660-pcie.yaml
@@ -0,0 +1,70 @@
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
+      - description: PCIe APB PHY clock
+
+  clock-names:
+    items:
+      - const: pcie_phy_ref
+      - const: pcie_apb_phy
+
+  reset-gpios:
+    description: PCI PERST reset GPIO(s)
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
+    bus {
+      #address-cells = <2>;
+      #size-cells = <2>;
+
+      pcie_phy: pcie-phy@f3f2000 {
+        compatible = "hisilicon,hi960-pcie-phy";
+        reg = <0x0 0xf3f20000 0x0 0x40000>;
+        reg-names = "phy";
+        clocks = <&crg_ctrl HI3660_PCIEPHY_REF>,
+                 <&crg_ctrl HI3660_PCLK_GATE_PCIE_PHY>;
+        clock-names = "pcie_phy_ref", "pcie_apb_phy";
+        reset-gpios = <&gpio11 1 0 >;
+        #phy-cells = <0>;
+      };
+    };
+...
diff --git a/arch/arm64/boot/dts/hisilicon/hi3660.dtsi b/arch/arm64/boot/dts/hisilicon/hi3660.dtsi
index 3a589fa4ca81..96c978db12dc 100644
--- a/arch/arm64/boot/dts/hisilicon/hi3660.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hi3660.dtsi
@@ -1006,8 +1006,10 @@ pcie_phy: pcie-phy@f3f2000 {
 			reg = <0x0 0xf3f20000 0x0 0x40000>;
 			reg-names = "phy";
 			clocks = <&crg_ctrl HI3660_PCIEPHY_REF>,
-				 <&crg_ctrl HI3660_PCLK_GATE_PCIE_PHY>;
-			clock-names = "pcie_phy_ref", "pcie_apb_phy";
+				 <&crg_ctrl HI3660_PCLK_GATE_PCIE_PHY>,
+				 <&crg_ctrl HI3660_ACLK_GATE_PCIE>;
+			clock-names = "pcie_phy_ref", "pcie_apb_phy",
+				      "pcie_aclk";
 			reset-gpios = <&gpio11 1 0 >;
 			#phy-cells = <0>;
 		};
@@ -1040,9 +1042,8 @@ &gic GIC_SPI 284 IRQ_TYPE_LEVEL_HIGH>,
 					<0x0 0 0 4
 					 &gic GIC_SPI 285 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&crg_ctrl HI3660_CLK_GATE_PCIEAUX>,
-				 <&crg_ctrl HI3660_PCLK_GATE_PCIE_SYS>,
-				 <&crg_ctrl HI3660_ACLK_GATE_PCIE>;
-			clock-names = "pcie_aux", "pcie_apb_sys", "pcie_aclk";
+				 <&crg_ctrl HI3660_PCLK_GATE_PCIE_SYS>;
+			clock-names = "pcie_aux", "pcie_apb_sys";
 		};
 
 		/* UFS */
-- 
2.31.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
