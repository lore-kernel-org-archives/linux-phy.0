Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EE99ECAAD5
	for <linux-phy@archiver.kernel.org>; Fri,  2 Sep 2022 09:18:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cMG7ndXkmnPZZUPCs/5nvFkrp4EG30QqsmqlF/XfuHQ=; b=rxLl6MqkjUKORF
	dvoYW29paNGzgWRzynhsf51XYjyIeMFBRf5pUJE+/Zkh07UtLoW83G/7isCASQK6QHaua803cCA/Q
	4zpjo83Q+jzlkruBJtiMrpDuXPVKaLrlHLO3wRW9qPtbUca9pgPOUcT83UtZCIoJZV+YDcPfP5DKH
	ZNFxnb97Dt0GKU8AykpQBHFTjvJ5Ergeqlr7FPixLfE1oxi6Gzq9WqfahLo76p9LJcZjjHRvWvvYr
	oGn53+cQSfBOTxB/BcmCwskHjNxy8H+lYpmqvk85MHXT+37M8U0ZqS6OGYFktQoM49HAqffZA8ViJ
	VGyb1LxiJwfLlV2SOStQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oU2ot-002SkP-No; Fri, 02 Sep 2022 09:18:35 +0000
Received: from inva020.nxp.com ([92.121.34.13])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oU2mL-002Pym-9Y; Fri, 02 Sep 2022 09:15:58 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 06A3C1A2AEB;
	Fri,  2 Sep 2022 11:15:56 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id BF4401A2ADD;
	Fri,  2 Sep 2022 11:15:55 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
	by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id C17D51820F5C;
	Fri,  2 Sep 2022 17:15:53 +0800 (+08)
From: Richard Zhu <hongxing.zhu@nxp.com>
To: p.zabel@pengutronix.de,
	l.stach@pengutronix.de,
	bhelgaas@google.com,
	lorenzo.pieralisi@arm.com,
	robh@kernel.org,
	shawnguo@kernel.org,
	vkoul@kernel.org,
	alexander.stein@ew.tq-group.com,
	marex@denx.de,
	richard.leitner@linux.dev
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@pengutronix.de,
	linux-imx@nxp.com,
	Richard Zhu <hongxing.zhu@nxp.com>
Subject: [PATCH v7 1/7] dt-binding: phy: Add iMX8MP PCIe PHY binding
Date: Fri,  2 Sep 2022 16:58:00 +0800
Message-Id: <1662109086-15881-2-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1662109086-15881-1-git-send-email-hongxing.zhu@nxp.com>
References: <1662109086-15881-1-git-send-email-hongxing.zhu@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220902_021557_527840_745477FA 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
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

Add i.MX8MP PCIe PHY binding.
On iMX8MM, the initialized default value of PERST bit(BIT3) of
SRC_PCIEPHY_RCR is 1b'1.
But i.MX8MP has one inversed default value 1b'0 of PERST bit.

And the PERST bit should be kept 1b'1 after power and clocks are stable.
So add one more PERST explicitly for i.MX8MP PCIe PHY.

Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
Tested-by: Marek Vasut <marex@denx.de>
Tested-by: Richard Leitner <richard.leitner@skidata.com>
Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
---
 .../bindings/phy/fsl,imx8-pcie-phy.yaml          | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml
index b6421eedece3..692783c7fd69 100644
--- a/Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml
@@ -16,6 +16,7 @@ properties:
   compatible:
     enum:
       - fsl,imx8mm-pcie-phy
+      - fsl,imx8mp-pcie-phy
 
   reg:
     maxItems: 1
@@ -28,11 +29,16 @@ properties:
       - const: ref
 
   resets:
-    maxItems: 1
+    minItems: 1
+    maxItems: 2
 
   reset-names:
-    items:
-      - const: pciephy
+    oneOf:
+      - items:          # for iMX8MM
+          - const: pciephy
+      - items:          # for IMX8MP
+          - const: pciephy
+          - const: perst
 
   fsl,refclk-pad-mode:
     description: |
@@ -60,6 +66,10 @@ properties:
     description: A boolean property indicating the CLKREQ# signal is
       not supported in the board design (optional)
 
+  power-domains:
+    description: PCIe PHY  power domain (optional).
+    maxItems: 1
+
 required:
   - "#phy-cells"
   - compatible
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
