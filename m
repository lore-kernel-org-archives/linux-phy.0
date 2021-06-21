Return-Path: <SRS0=EqQx=LP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D563CC48BE5
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jun 2021 09:39:56 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9EEF3611BD
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jun 2021 09:39:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9EEF3611BD
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bp.renesas.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FW2wSmNaZpKMKcOKmS83Ug0glq4coYqltBfD7iX8sc4=; b=x+XTxWCxwoPOqB
	QKtVv0cmm3a5H04zbANrcj2VATTs8fPGJpeq2rctwKezbJ2HNymK4S0SuJXunDO4mBA9RsLIeccai
	q8hch9D3qUp1F+8w7wb8dP5M2n9amlrrQiul8kW+Nh+ybqSUS89g3hDEYX1LYMsLscGHJjNdkBAE/
	pi+BLU1gIW1KeLSJMtCLerPGpWN4dNm+JtBTb0jPNCOXpxYZpPoD6UMUCXBA+jPzVMaAqyQJpMx2P
	P1Ect2iDrTeo6FzlnNiT/tIBVpHNhp4XIfxv27RzUfN/iJZkZrLo0uARY5Vk5ceBgexHCnSqLiL8h
	/shu1B+dhri3Rd1oCD3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvGPM-002xKc-51; Mon, 21 Jun 2021 09:39:56 +0000
Received: from relmlor1.renesas.com ([210.160.252.171]
 helo=relmlie5.idc.renesas.com)
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvGPJ-002xJb-Am
 for linux-phy@lists.infradead.org; Mon, 21 Jun 2021 09:39:54 +0000
X-IronPort-AV: E=Sophos;i="5.83,289,1616425200"; d="scan'208";a="85045858"
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
 by relmlie5.idc.renesas.com with ESMTP; 21 Jun 2021 18:39:52 +0900
Received: from localhost.localdomain (unknown [10.226.92.241])
 by relmlir5.idc.renesas.com (Postfix) with ESMTP id EEB0A400C4C3;
 Mon, 21 Jun 2021 18:39:49 +0900 (JST)
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Rob Herring <robh+dt@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Chris Paterson <Chris.Paterson2@renesas.com>,
 Biju Das <biju.das@bp.renesas.com>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-renesas-soc@vger.kernel.org
Subject: [PATCH v2 01/11] dt-bindings: phy: renesas: Document RZ/G2L USB PHY
 Control bindings
Date: Mon, 21 Jun 2021 10:39:33 +0100
Message-Id: <20210621093943.12143-2-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210621093943.12143-1-biju.das.jz@bp.renesas.com>
References: <20210621093943.12143-1-biju.das.jz@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210621_023953_529450_1258A4C2 
X-CRM114-Status: GOOD (  10.10  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Add device tree binding document for RZ/G2L USB PHY control driver.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
Reviewed-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
V1->V2:
 * Add clock properties
---
 .../phy/renesas,rzg2l-usbphyctrl.yaml         | 65 +++++++++++++++++++
 1 file changed, 65 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/renesas,rzg2l-usbphyctrl.yaml

diff --git a/Documentation/devicetree/bindings/phy/renesas,rzg2l-usbphyctrl.yaml b/Documentation/devicetree/bindings/phy/renesas,rzg2l-usbphyctrl.yaml
new file mode 100644
index 000000000000..8e8ba43f595d
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/renesas,rzg2l-usbphyctrl.yaml
@@ -0,0 +1,65 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/renesas,rzg2l-usbphyctrl.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Renesas RZ/G2L USB2.0 PHY Control
+
+maintainers:
+  - Biju Das <biju.das.jz@bp.renesas.com>
+
+description:
+  The RZ/G2L USB2.0 PHY Control mainly controls reset and power down of the
+  USB/PHY.
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - renesas,r9a07g044-usbphyctrl # RZ/G2{L,LC}
+      - const: renesas,rzg2l-usbphyctrl
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+  power-domains:
+    maxItems: 1
+
+  '#phy-cells':
+    # see phy-bindings.txt in the same directory
+    const: 1
+    description: |
+      The phandle's argument in the PHY specifier is the phy reset control bit
+      of usb phy control.
+      0 = Port 1 Phy reset
+      1 = Port 2 Phy reset
+    enum: [ 0, 1 ]
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - '#phy-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/r9a07g044-cpg.h>
+
+    usbphyctrl@11c40000 {
+        compatible = "renesas,r9a07g044-usbphyctrl",
+                     "renesas,rzg2l-usbphyctrl";
+        reg = <0x11c40000 0x10000>;
+        clocks = <&cpg CPG_MOD R9A07G044_USB_PCLK>;
+        resets = <&cpg R9A07G044_USB_PCLK>;
+        power-domains = <&cpg>;
+        #phy-cells = <1>;
+    };
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
